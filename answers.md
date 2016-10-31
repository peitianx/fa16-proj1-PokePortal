# Q0: Why is this error being thrown?
It's trying to use Pokemon model in the index method in home_controller.rb, which hasn't been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The Pokemon are randomly created from .sample call in home_controller.rb. The common factor is that they all don't have a trainer yet.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a "Throw a Pokeball!" button on the page. If the button is clicked, it sends a PATCH request to the capture_path, which calls the capture method in pokemons_controller.rb.

# Question 3: What would you name your own Pokemon?
Unichu

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainer_path, which needs to take in trainer's ID as a parameter.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
After passing in ":error" (the key) in the temporaray storage variable - the "flash" hash, the error message (the value) would be displayed in "_messages.html.erb", which is rendered in application.html.erb.

# Give us feedback on the project and decal below!
Lovin' it!

# Extra credit: Link your Heroku deployed app
