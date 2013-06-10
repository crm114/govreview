class SmsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    begin
      ## Let's get our metadata processed.
      body = params[:Body].strip
      from_phone_number = params[:From].strip
      to_phone_number = params[:To].strip
      employee_id = body.split(' ')[0].strip.to_i
      score = body.split(' ')[1].strip.to_i

      ## Now that have our metadata let's find the agency and employee in our database
      agency = Agency.find_by_phone_number(to_phone_number)
      if agency.present?
        employee = Employee.where(id: employee_id, agency_id: agency.id).first
        if employee.present?
          if (1..10).include? score
            vote = employee.votes.new(score: score, phone_number: from_phone_number)
          else
            message = "You must vote must be between 1 and 10."
          end
        else
          message = "This Employee was not found in our database."
        end
      else
        message = "We could not find this Agency in our database."
      end
    rescue
      ## If we fail to retrieve metadata let the user know
      message = "Your message could not be processed as sent."
    end
    response = Twilio::TwiML::Response.new do |r|
      if vote.present? && vote.save
        r.Sms "Thanks. You voted for #{employee.name} who works at #{agency.name} with a score of #{score}"
      else
        r.Sms message
      end
    end
   render :text => response.text
  end
end
