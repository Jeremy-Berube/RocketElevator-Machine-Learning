![alt text](https://github.com/DaveVaval/Rocket-Elevators-Ruby-Controller/blob/Main/img/R3.png)

# Rocket Elevators Information System #

<details>
<summary><i>CLICK TO EXPAND</i></summary>

This week converted our static website into a Ruby on Rails application.

The first step was to use the Assett Pipeline to provide the JS, CSS and HTML files needed to run the website. 

We implemented Embeded Ruby Syntax to the HTML code.

We created a database which contained multiple tables :

The employee table is used to assign permissions to access the Backoffice. It is also used to store e-mails and passwords of said employees.

If you want to access the Backoffice use these credentials:

- username: nicolas.genest@codeboxx.biz
- password: newdog1

</br>

![](app/assets/images/readmeimages/2021-02-19-19-06-57.png)

</br>

The users table is used to store login information for employees. It also assigns an ID to each one in order to link the tables together.


![](app/assets/images/readmeimages/2021-02-19-19-09-22.png)

</br>

In order to create a Backoffice, we first had to implement an authentication process. To achieve this, we used Gem Devise which took care of all the controllers necessary for user creation and user sessions. We then used RailsAdmin that provided us with a Backoffice interface for managing our data, such as the Employee table, the Users table and a Quote table which is used to store all the quote requests made on the website.


![](app/assets/images/readmeimages/2021-02-19-19-31-26.png)

</br>

Here is a screenshot of what the list of quotes looks like :

![](app/assets/images/readmeimages/2021-02-19-19-30-54.png)

</br>

We then deployed the website to AWS Ubuntu Server using Cloudflare to secure it.

</br>
</br>

The Backoffice was updated to include more data from Mysql as well as adding a Data Warehouse.

![](app/assets/images/readmeimages/2021-02-26-17-48-58.png)

</br>

It is now possible to Query the database and show the results in a graph :

![](app/assets/images/readmeimages/2021-02-26-17-52-10.png)

</br>

We can also group multiple Graphs at the same time using a Dashboard :

![](app/assets/images/readmeimages/2021-02-26-17-53-32.png)

</br>

In order to link the two databases together and to keep them up to date, we had to create tasks :

![](app/assets/images/readmeimages/2021-02-26-17-55-30.png)

</details>
----------------------------------------------------------------------------------------------------------------
</br>

# Rocket Elevators APIs #

<details>
<summary><i>CLICK TO EXPAND</i></summary>

**Use these credentials to access the back office:**

- Username: nicolas.genest@codeboxx.biz
- Password: newdog1
---------------------------------------------------------------------------------------------------------------
</br>

<u><b>This week we had to implement APIs to our Rocket Elevators Rails Applications:</u></b>

</br>

First we added the **Twilio** and **Slack** APIs which were pretty similar. We added this code to the *Elevator Model*:

![](app/assets/images/readmeimages/2021-03-11-12-17-18.png)

</br>

Next we linked the *Quotes* and *Leads* controller to **Zendesk**:

![](app/assets/images/readmeimages/2021-03-11-12-56-02.png)

![](app/assets/images/readmeimages/2021-03-11-12-56-45.png)

</br>

Here is what the **Sendgrid** code looks like in the *Leads Controller*:

![](app/assets/images/readmeimages/2021-03-11-12-59-13.png)

This is the email that the customer receives when he/she completes the *Contact Form*:

![](app/assets/images/readmeimages/2021-03-11-13-06-02.png)

</br>

In order to have *Contact Form Attachment Files* sent to **Dropbox**,(Le login est cmoutlook17@gmail.com password: rocketelevators2021) here is what we added:

![](app/assets/images/readmeimages/2021-03-11-13-15-36.png)

</br>

Next comes **IBM Watson Text-to-Speech**. We started by adding an audio player to *Rails Admin* in a new tab called Watson:

![](app/assets/images/readmeimages/2021-03-11-13-26-19.png)

Then, we created a method that updates the audio file with Watson reading the text provided, here is the code:

![](app/assets/images/readmeimages/2021-03-11-13-51-19.png)

See what the audio player looks like:

![](app/assets/images/readmeimages/2021-03-11-13-54-10.png)

</br>

Finally, we implemented **Google Maps** in the *Back Office*. This is the code:

![](app/assets/images/readmeimages/2021-03-12-11-08-22.png)

![](app/assets/images/readmeimages/2021-03-12-11-09-12.png)

Here is what it looks like on the website:

![](app/assets/images/readmeimages/2021-03-12-11-11-36.png)

## BONUS ##

</br>

We added a **Spotify Player** to the *Admin Page*:

![](app/assets/images/readmeimages/2021-03-12-17-25-18.png)
![](app/assets/images/readmeimages/2021-03-12-17-25-45.png)
![](app/assets/images/readmeimages/2021-03-12-17-26-46.png)

</br>

Next, we added a new **Watson** to provide interesting facts about *Star Wars*:

![](app/assets/images/readmeimages/2021-03-12-17-28-30.png)
![](app/assets/images/readmeimages/2021-03-12-17-29-23.png)
![](app/assets/images/readmeimages/2021-03-12-17-30-09.png)

</br>
</details>


# Extented Data Warehouse #
<details>
<summary><i>CLICK TO EXPAND</i></summary>
<u><b>This week we had to extend our data warehouse with a table named Fact Intervention:</u></b>

![](app/assets/images/readmeimages/fact_int.jpg)

</br>

Then we developed a rake task to generate random data into that table.

![](app/assets/images/readmeimages/fact_int2.jpg)
<hr>
</details>

# Consolidation 
<details>
<summary><i>CLICK TO EXPAND</i></summary>
<br>
This week, we gathered all of the knowledge we aquired in the past weeks, and applied in our tasks.

- Build a new table in the MySQL database called Intervention
- Build a new form to create interventions
- Creating a ZenDesk ticket to go along with the intervention
- Build new endpoints on the Rest API 

Link to the rest API: https://github.com/DaveVaval/Rocket-Elevators-Rest-API.git
Link to the GraphQL API: https://github.com/DaveVaval/Rocket-Elevators-GraphQL-API.git

**Use these credentials to access the back office:**

- Username: nicolas.genest@codeboxx.biz
- Password: newdog1

The new table:
![](app/assets/images/readmeimages/int_table.jpg)
<hr>

The new form:
![](app/assets/images/readmeimages/int_form.jpg)

The controller logic to go with the form:
![](app/assets/images/readmeimages/int_logic.jpg)
![](app/assets/images/readmeimages/int_logic2.jpg)
<hr>

All of the fields in the Intervention form are updated through and ajax call:
![](app/assets/images/readmeimages/ajaxcall.jpg)
</details>

# Quality and TDD

This week, we learned about TDD (test-driven development) and BDD (behavior-driven development). Our tasks were to:

- Create a module (ElevatorMedia) and class (Streamer)
- Create a method (getContent) that returns html in the form of "<'div'>Content<'div'>"
- Build a test that will validate the data received from the getContent method
- Apply the BDD to 3 existing parts of our code

**ElevatorMedia module:**
![](app/assets/images/readmeimages/elevatormedia.jpg)
<br>

**ElevatorMedia Spec:**
![](app/assets/images/readmeimages/elevatormedia_rspec.jpg)
<hr>

**Lead routing spec:**
![](app/assets/images/readmeimages/lead_rspec.jpg)
<br>

**Quote controller spec:**
![](app/assets/images/readmeimages/quotes_rspec.jpg)
<br>

**User model spec:**
![](app/assets/images/readmeimages/user_rspec.jpg)
<hr>

**The final outcome:**
![](app/assets/images/readmeimages/rspec.jpg)





