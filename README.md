Note to self: database name is DBC_Sinatra_RESTful_CRUD_Challenge_development

an_object.method(:update).source_location
=> will show the path to where the method is defined from

User Story: create and maintain notes
Views:
CRUD # | Path             | Verb | Purpose            | Next Route
(0)      /                         [log in user]        (1) if login or (0.1) otherwise
(0.1)    /signup                   [created user]       (1) if login || (0.1)
(1)      /notes                    [display notes]       /notes
(1)      /notes                    [create user]         /notes
(1)      /notes                    [display notes]      (2)create or(4)detail
(2)      /notes/new                [create note]        /logout
(3)      /notes                    [created new note] => same as (1)
(4)      /notes/:id                [show a note] => (1)
(5)      /notes/:id/edit     GET   [form for 6] => (1)
(6)      /notes/:id          PATCH [update a note] => (4)
(7)      /notes/:id          DEL   [delete a note] => (4)

Differences:
edit, goes to show


REFERENCE: http://guides.rubyonrails.org/routing.html
http://www.danneu.com/posts/15-a-simple-blog-with-sinatra-and-active-record-some-useful-tools/

Changes that had to be made to skeleton to get rspec shoulda matchers to run:
(1) Had to require the app and then the shoulda matchers in the spec_helper.rb
(2) Had to set RACK_ENV to development; decided to use the Rakefile


Overview
Using Sinatra, create a simple notes application with a single notes table in the database and all CRUD routes and views. You can start from the standard SInatra Skeleton .

Core
Demonstrate that you can implement CRUD in a Sinatra application.

Objectives
Modify the skeleton code to achieve the following functionality:

A user Create a new note.
A user can Read all the notes created.
A user can Update a note.
A user can Delete an existing note.
Verify that a user really wants to delete a particular note.
Your note table should have a title and content field. You should use RESTful routes for each operation.

You Will Know You Are Done When:
You can Create, Read, Update and Delete a note.
You use appropriate CRUD routes for each operation
Your can describe how the routes and views interact.
** Useful Resources:
* Sinatra Crud Tutorial * Rendering Partials in Sinatra

Stretch (OPTIONAL)
Add AJAX and Partials to convert your page to a single page application.

Objectives
Redo your application so that each CRUD route is triggered from an AJAX request. When necessary, return a partial to update your display.
You Will Know You Are Done When:
The above functionality is implemented with clean and efficient code in a single page application.

