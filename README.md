Just Do It Rails API

SCOPE
* Give user a new work out video based on their self assessed fitness level and time availability.

API creation
* Rails API template downloaded
* Migrated users and examples databases
* Heroku setup

User authentication
* Tied the built in user creation, sign in and sign out functionality to the client.
* User can successfully change password.
* Videos and workout controllers to belong to ProtectedController

User profile
*** User should be able to update their fitness level

Databases
* Created videos database with columns title, length in minutes, fitness and url.
* Created workout database with columns user_id and video_id.
* Created a many to many relationship between users and videos through workouts.
* Add column fitness level to database users.

Video access
*** Filter videos based on fitness level
*** Filter videos based on time availability
*** Avoid showing the same videos to the client

YouTube API integration
*** Search video 'fitness level' & 'time availability' yoga video
*** Grab the second video url and display in video player.

Process
* Maybe use nested resources to get correct fitness level and time availability?
 example: http://localhost:4741/videos/fitness/length
* Or should I just make three resources for the three timelines and create a
 many to many connections between them and user databases.

 11/28
* Added destroy to user_controller allowed actions
* Adding fitness as required param to users_controller (line 58)
* Added :fitness on user_serializer.rb on line 4.
* Added :fitness on user_login_serializer.rb on line 4.
* Added (patch '/change-fitness' => 'users#changefitness') in routes.rb

* Adding fitness patch method on users_controller
*
