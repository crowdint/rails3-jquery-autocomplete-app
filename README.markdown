# rails3-jquery-autocomplete Example Application

This app is meant to show you how to use the [rails3-jquery-autocomplete](http://github.com/crowdint/rails3-jquery-autocomplete) gem.

# The Application, step by step

## Create the app

Use the rails command to create a new application

    rails new rails3-jquery-autocomplete -J
    
The _-J_ option is used to skip prototype, at this point I assume you won't need it.

## Gem requirements

The first thing to do is, add the following line to the Gemfile:

    gem 'rails3-jquery-autocomplete'
    gem 'nifty-generators'

This will include the rails3-jquery-autocomplete and Ryan Bates' nifty-generators gem as dependencies for the application.

We will use nifty-generators to speed things up a bit.

Now, make sure you install the required gems by running:

    bundle install
    
Run the nifty-generators layout command to install some default files:

    rails g nifty:layout
    
## Run the generator

Run the generator to install the required files:

    rails g autocomplete

## Javascript files

Go to [http://jqueryui.com/download](http://jqueryui.com/download) and create a custom build for jQuery-UI. Obviously, make sure you select the Autocomplete widget.

Click on download and extract all the files in the zip file you just downloaded.

Copy the files on the *js* folder to the *public/javascripts* folder on your app.

Copy the files on the *css* folder to the *public/stylesheets* folder on your app.

Go to [http://github.com/rails/jquery-ujs](http://github.com/rails/jquery-ujs) and copy *rails.js* to the *public/javascripts* folder on your app.

## Include the files on your layout

Open app/views/layouts/application.html.erb and put the following lines on the <head> section:

    <head>
      <%= javascript_include_tag 'rails.js', 'jquery-1.4.2.min.js', 'jquery-ui-1.8.2.custom.min.js', 'autocomplete-rails.js' %>
      <%= stylesheet_link_tag 'jquery-ui-1.8.2.custom.css' %>
    </head>

## Create a model

Let's create a model named Brand that will have a name attribute:

    rails g model Brand name:string
    
Create your database by running:

    rake db:create
    rake db:migrate

Now, to make sure we have something to test the app, lets add something to the seed file. Open *db/seeds.rb* and add the following lines:

    Brand.create(:name => 'Alpha')
    Brand.create(:name => 'Beta')
    Brand.create(:name => 'Gama')

Then, run *rake db:seed* to populate the database with the values on the seeds file.

## Create a Controller

Create a controller called welcome with a show action:

    rails g controller welcome show
    
Edit the *config/routes.rb* file, add the following two lines:

    get "welcome/show"
    root :to => "welcome#show"

Delete the *public/index.html* file.

Run the server, 

    rails s
    
Go to http://127.0.0.1:3000 on your browser and make sure everything is running just fine.

### The magic

Add this line at the very top of the *app/controllers/welcome_controller.rb* file:

      autocomplete :brand, :name

And add to *config/routes.rb*:

    get 'welcome/autocomplete_brand_name'
    
Now, run *rake routes* and you should have something like:

                       welcome_show GET /welcome/show                    {:controller=>"welcome", :action=>"show"}
    welcome_autocomplete_brand_name GET /welcome/autocomplete_brand_name {:controller=>"welcome", :action=>"autocomplete_brand_name"}
                               root     /                                {:controller=>"welcome", :action=>"show"}

## The view

Replace *app/views/welcome/show.html.erb* with the following code:

    <h1>Welcome!</h1>
    <%= form_tag do %>
      <%=text_field_tag 'name', '', :autocomplete => welcome_autocomplete_brand_name_path %>
    <% end %>

Notice how I used the autocomplete action's *_path* helper as the value for :autocomplete?

Run your server, go to http://127.0.0.1:3000 and try typing 'Al' on the text field.

If you can see the Autocomplete widget. You're done.
