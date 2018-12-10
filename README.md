Just Do It Rails API

SCOPE
* Give user a new work out video based on their self assessed fitness level and time availability.

Server address https://boiling-fjord-48869.herokuapp.com/
Front end repo https://github.com/RakshyaKC/Just-do-it-client
Live site https://rakshyakc.github.io/Just-do-it-client/

ERD - https://i.imgur.com/1n0ymyE.jpg

API creation
* Rails API template downloaded
* Migrated users and examples databases
* Heroku setup

User authentication
* Tied the built in user creation, sign in and sign out functionality to the client.
* User can successfully change password.
* Videos and workout controllers belong to ProtectedController

User profile
* User is able to update their fitness level

Databases
* Created videos resource with columns title, length in minutes, fitness and url.
* Created workout resource with columns user_id and video_id.
* Created a many to many relationship between users and videos through workouts.
* Add column fitness level to table users.
* Created invitation resource.

Video access
* Filter videos based on fitness level
* Filter videos based on time availability

Invitation feature
* User can input email to invite friends to the website.
* User can invite friends with existing accounts to workout alongside them.

Process
* User rails built in user table for authentication and password update.
* Updated user controller to allow deleting user account
* Added fitness as a column to the user table.
* Added video resource.
* Connected user and video resource with many to many relationship.
* Created 6 routes for specific time availability and fitness level.
* Updated fitness serializer to send back user profile including fitness level upon fitness update on the front end.
* Created invitation resource.
* Invitation has a many to one relationship with video.
* It has many to one relationship with user.
* In invitation model, invitee and inviter were defined and specified as belonging to User using
 class_name property.
* Enabled action mailer in config/application.rb by uncommenting line 11.
* Enabled action mailer previews to test emails. => https://guides.rubyonrails.org/action_mailer_basics.html
* https://i.imgur.com/DHVUTtL.png => Image of test email
* Generated invitation mailer (rails generate mailer InvitationMailer)
* In views, created invitation to website for user emails that don't exist in database.
* In views, created invitation to workout video for user emails that exist in database.
* Updated invitation controller to mail the invitation once the invitation is created.

Future features
* Search Youtube with keywords 'fitness level' & 'time availability' yoga video/ circuit/ crossfit etc.
* Grab a random video url and display in video player.
* Avoid showing the same video in a row to the user
* Enable mail service in heroku to fully realize the invitation feature.

 Resources
 * https://stackoverflow.com/questions/2933582/rails-migration-t-references-with-alternative-name
