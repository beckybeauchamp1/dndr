# README

**https://dndr.herokuapp.com/**

**d&dr** (pronounced "d-'n-d-er") is a full stack Ruby on Rails application to help players of the popular Dungeons and Dragons game to organize campaigns, characters, and adventure chapters.

Although D&D has been around for decades, players mainly rely on a PDF form to create their characters. After each adventure chapter, they have to fill out a new form. If players want to share there character info with their teammates, they have to share the PDF via email or some other method.

Wouldn't it be so great if there was an app where you can create/share your "campaign" (a.k.a. your group's instance of a D&D game) and create/share your characters all in one spot? Well now there is with **d&dr**!

**Technologies Used:**
* Ruby on Rails
* Faker Gem
* PostgreSQL, ActiveRecord
* HTML, CSS, Bootstrap
* A little JavaScript/jQuery
* Heroku

**Approach Taken:**
* I started off with creating an Entity-Relationship-Diagram (ERD) to layout the relationships between my app components. I created bronze, silver, and gold goals, which are color coded in my ERD. I also created some basic wireframes to have an idea of how I wanted the app to look.
* I created 3 models to start: campaigns, characters, and dungeon masters. I created a lot of dummy data using the Faker Gem. I then created the corresponding controllers, and views, and did a little styling. Responsive design was a big focus of mine from the start, so I immediately added Bootstrap. The Dungeon Master is a one-to-one relationship with campaigns, and this presented some initial problems that I later solved with instructors' help.
* I then created my adventures and abilities model. I thought abilities would present a lot of problems because it is a double-nested route (nested within characters which is nested within campaigns), but I figured it out successfully without errors! I created the corresponding controllers and views.
* I wanted my root_path to have a little more pizazz, so I added a carousel to the top with three striking images. I also revamped my default logo.
* I frequently deployed throughout the process. Every time I committed, I pushed to both GitHub and Heroku. Therefore, I didn't run into any problems as my app got larger.

**Installation Instructions:**
**If you fork/clone this repo, remember to `bundle install` and have PostgreSQL installed on your computer!**

**Unsolved Problems:**
* An "are you sure you want to delete this?" alert. Ideally, I would like a prompt window to show up if a user clicks the delete button. If the users types no in the prompt, it should prevent deletion. I could get the alert button to show up, but I couldn't prevent deletion.

**Steps for the Future:**
* Add a user component: This would actually be a complex relationship (a user can belong to many campaigns, and a user can have many characters among those campaigns).
* Flash notifications when a user does not fill in a required field on a form.
* A character has a ton of attributes: although many attributes are included in this version, I still haven't weapons and a section for notes.
* More attributes for the DM, including notes and a section to create 'Non-Player Characters' or NPCs.
