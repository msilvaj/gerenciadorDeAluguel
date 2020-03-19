To run this app clone or download it.

This needs the following techologies to run:

Rails 5.2.4
Ruby 2.6.3
Postgres 11.5


To run this application do the following:

Access the directory with the project

Run the command:

$bundle install

After, you need configure your database connection

access the file 

config/database.yml

and put your database user and password.

After all, you need create and configure the database. So, type the commands:

$rails db:create

$rails db:migrate

$rails db:seed

And to run the application, run:

$rails s


