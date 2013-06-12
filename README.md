# GovReview

This application was created during the [TechSummitPR](http://techsummitpr.com/) [hackathon](https://www.hackerleague.org/hackathons/puerto-rico-tech-summit-hackathon) that took place on June 6, 2013 in San Juan, Puerto Rico.
### Overview

This software allows citizens to provide feedback of public employees to decision makers in the government. A citizen may send a text message with an employee ID and a score (1-10). The software aggregates all scores of any given employee and allows supervisors to monitor citizen feedback.

The authors of this app are:
**[Giovanni Collazo](https://github.com/gcollazo)**
*and*
**[Jose Irizarry](https://github.com/crm114)**


### Getting Started

1. Setup a Twilio account at <http://www.twilio.com/>

2. Visit <https://www.twilio.com/user/account/phone-numbers/incoming> and type in your "SMS Request URL". (This will be http://[your_url]/sms])
  You may use <http://progrium.com/localtunnel/> for testing purposes.

3. Run `bundle install` and `rake db:migrate`

4. Run `rails server`

5. Visit <http://localhost:3000/admin> to add an agency and its employees.

### Screenshots
##### Main Admin page
![Main Admin Page](http://i.imgur.com/I9WeiHYh.png "Main Admin Page")


##### Create New Agency
![Main Admin Page](http://i.imgur.com/ZLeambJh.png "New Agency Page")

##### Employee Listing
![Main Admin Page](http://i.imgur.com/109DuzHh.png "Employee List Page")


The MIT License
===============

Copyright (c) 2009 Anton Grigoryev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
