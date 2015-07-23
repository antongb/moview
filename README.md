## moview

[x] AJAX call to 3rd part API (www.myapifilms.com)
[x] DB with reviews table containing reviews for movies on list
[x] movie review view page
[x] all reviews index page

## Notes on this exercise:

> I was not sure if I misunderstood the instructions, but from
> what I did understand, I was not to make any database entries
> for the movie object fetched via the 3rd party API and thus I was
> forced into making it do the call on the client side of the app.
> This felt like an anti-pattern, as it was very inefficient, relied
> completely on the 3rd party API to be responsive, and was a bit
> of a headache in terms of dealing with cross-origin API calls.
> If I did indeed misunderstand the instructions then I at least
> would like to mention that I would have probably gone about the challenge instead
> by making some AJAX call to the API on some interval, save the
> parts of the data that I need to my DB and setup local API routes
> to ping for the data making it instantly and reliably available.
> I did a similar [implementation](https://github.com/antongb/Thought-Free-Hero-Picker/blob/master/lib/tasks/scrape.rake) recently inside a custom rake task
> which scraped some data, saved it locally, and then made it available
> to my [backbone frontend](https://github.com/antongb/Thought-Free-Hero-Picker/blob/backbone-app/app/assets/javascripts/collections/heros.js) via a [rails API](https://github.com/antongb/Thought-Free-Hero-Picker/blob/master/app/controllers/api/heros_controller.rb).
> As far as sorting the results is concerned, I was considering saving
> the movie object array to a variable in the js file as it aleady is.
> On sort calls from the rails view I would sort and clear/reappend.
> If I had movies saved to the database it would have been a lot
> simpler to setup sorts via helper methods. 
