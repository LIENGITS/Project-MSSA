# Small Business Invoicing Application
I will choose to create a small business invoicing application to create on-the-fly invoices that could be used by small business owners to generate professional invoices from the website. It would have data entry points that were connected with a professional invoice template and as you enter data it would automatically start forming a .pdf that could be accessed at a later time.

<h1>Table of Content<br/></h1>
<a href="#Project_Information">1.Project Information</a><br/>
<a href="#Entity_Relationship">2.Entity Relationship Diagram</a><br/>
<a href="#Project_Data">3.Project Data</a><br/>
<a href="#Building_the_Database(SQL&Queries)">4.Building the Database(SQL&Queries)</a><br/>
<a href="#Website_Wire_Frames">5.Website Wire Frames</a><br/>
<a href="#Requirements_&_Use Case">6.Requirements & Use Case</a><br/>
<a href="#Test_Plan_&_RTM">7.Test Plan & RTM</a><br/>
<a href="#Prototype">8.Prototype</a><br/>
<a href="#Prototype">9.New User Register</a><br/>
<a href="#Prototype">10.Initial Sprint Planning</a><br/>



<p id="Project_Information"><h1>1.Project Information:</h1></p><br/>

The project data will consist of all information that to build a robust database. Data relating to the customers information will be categorized into different type, region, website, functionality, etc. Then the invoice will be created by the invoice generator from the stored data.<br/>
The user interface would be a graphical one, so that a regular person can figure out quite easily and be able to input information and manager their business. This app will be highly customizable which client can go in and update or change their data and setting to better secure and manage.



<p id="Entity_Relationship"><h1>2.Entity Relationship Diagram:</h1></p>
<img src="Website Wire Frames/ERD.png" width="700" >

<p id="Project_Data"><h1>3.Project_Data:</h1></p>
<img src="Website Wire Frames/Data.PNG" width="300" >

<p id="Building_the_Database(SQL&Queries)"><h1>4.Building the Database(SQL&Queries):</h1></p>
I upload the file named SQL & Queries contains all of the queries that would create the necessary tables and datas. 
It can be found <a href="https://github.com/z82206739/Project-MSSA/blob/master/3.Project.Sql">here.</a>

<p id="Website_Wire_Frames"><h1>5.Website Wire Frames:</h1></p>
<img src="Website Wire Frames/WireSignIn.PNG" width="750" >
<img src="Website Wire Frames/MainPage.PNG" width="750" >

<p id="Requirements_&_Use Case"><h1>6.Requirements & Use Case:</h1></p>
Use Case 1

Name: Create Account

Actors: Business Owner/Product seller

Precondition: Business Owner exists, application exists

Triggers: User wants to create invoices for clients using a webpage application

Use Case 2

Name: Edit Account Info

Actors: Application users/ database 

Precondition: User wants to edit/ update account info

Triggers: User realizes they entered information incorrectly. User wants to update info.

Use Case 3

Name: Create Invoice

Actors: User / Customer / Database

Preconditions: User has application

Triggers: Owner sells to Customer and needs to create an invoice

Requirement:

User should be able to create an account on the webpage.

User should be able to create invoices through a functional GUI

User should be able to make edits before finalizing their invoice.

Application should store all invoices for reference.

User should be able to make notes on existing projects.

User should be able to track expenses and see profit based on the invoice total.

User should be able to make updates to account info to include address changes, number changes, etc.

Application should store customer info for quicker invoice creation for repeat customers.


<p id="Test_Plan_&_RTM"><h1>7.Test Plan & RTM:</h1></p>
</head>
<body>

<h2>Below are the requirements verification and and testing tables for this project.</h2>

<table>
  <tr>
    <th>Requirement ID</th>
    <th>Requirement Description</th>
    <th>Verification Method</th>
    <th>TestID</th>
  </tr>
  <tr>
    <td>1</td>
    <td>User should be able to create an account</td>
    <td>Demonstration</td>
    <td>1</td>
  </tr>
  <tr>
    <td>2</td>
    <td>User should be able to create invoices through a functional GUI</td>
    <td>Demonstration</td>
    <td>12</td>
  </tr>
  <tr>
    <td>3</td>
    <td>User should be able to make edits before finalizing their invoice</td>
    <td>Demonstration</td>
    <td>11</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Application should store all invoices for reference</td>
    <td>Demonstration</td>
    <td>16</td>
  </tr>
  <tr>
    <td>5</td>
    <td>User should be able to make notes on existing projects</td>
    <td>Demonstration</td>
    <td>14</td>
  </tr>
  <tr>
    <td>6</td>
    <td>User should be able to track expenses and see profit based on the invoice total</td>
    <td>Demonstration</td>
    <td>3</td>
  </tr>
  <tr>
    <td>7</td>
    <td>User should be able to make updates to account info to include address changes</td>
    <td>Demonstration</td>
    <td>13</td>
  </tr>
  <tr>
    <td>8</td>
    <td>Application should store customer info for quicker invoice creation for repeat customers</td>
    <td>Demonstration</td>
    <td>15</td>
  </tr>
</table>

</body>
</html>

<h2>Test Plan Table:</h2>

<table>
  <tr>
    <th>Test ID</th>
    <th>Requirement ID(S)</th>
    <th>Test Procedure</th>
    <th>Current Status</th>
    <th>Last Time Tested</th>
    <th>Build Version</th>
  </tr>
<tr>
    <td>1</td>
    <td>1</td>
    <td>Security Test of the Account Creation Function</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
<tr>
    <td>2</td>
    <td>1.1</td>
    <td>Unit Test to ensure user can create invoices through a functional GUI</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
  <tr>
    <td>1</td>
    <td>1.1.1, 2.1</td>
    <td>Unit Test to ensure user can make adjustments on the invoice</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
  <tr>
    <td>1</td>
    <td>1.2, 1.3</td>
    <td>Unit Test to ensure all the adjustments can be properly stored</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
  <tr>
    <td>1</td>
    <td>1.3.3, 2.2</td>
    <td>Unit Test to ensure users can store all the invoice</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
    <tr>
    <td>1</td>
    <td>1.3, 1.2.3</td>
    <td>Unit Test to verify the notes can be stored</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
    <tr>
    <td>1</td>
    <td>1.3.1, 1.3.3.1</td>
    <td>Unit Test to verify the expense and profit on the invoice</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
    <tr>
    <td>1</td>
    <td>1.3.4, 1.3.3</td>
    <td>Unit Test to ensure the user's email is a valid email</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
  <tr>
    <td>1</td>
    <td>1.3.3, 1.3.4</td>
    <td>Unit Test to ensure the ability to create invoice according to the repeat customers</td>
    <td>Not Tested</td>
  <td></td>
  <td></td>
  </tr>
  </table>

</body>
</html>
  
  
<p id="Prototype"><h1>8.Prototype:</h1></p>
<img src="Website Wire Frames/PrototypeSignIn.PNG" width="750" >
<img src="Website Wire Frames/PrototypeMain.PNG" width="750" >
<img src="Website Wire Frames/PrototypeCustomer.PNG" width="750" >




<p id="Prototype"><h1>9.New User Register</h1></p>
<img src="USER.PNG" width="750" >




<p id="Prototype"><h1>10.Initial Sprint Planning:</h1></p>
This Sprint Plan is to deliberately plan all remaining requirements and tasks to prioritize them in order to ensure on-time completion. I will be utilizing style of sprint planning on a one-week timescale. Each week I will select the most important issues from the overall issues list and add them to the current week's sprint. The progress of each sprint will be tracked on a Kanban board in the Projects section.













