So there's been something that's been bothering my eyes; I don't know if it's the quality or angle of light, but it just has been making seeing the computer screen somewhat difficult. 

So I guess lightmode it is; it does seem to make it a little easier 

So I left off yesterday reviewing what I'd done to make the hockeyStats page a little more robust; 

Now I'm not sure if I really want to do anything wiht the actual stats, but I do know that this is good practice for me. Im learning about making requests, and how a route interats with a controller, interacts with a view. 

And I haven't even really talked about what I did yesterday with the views, because I was actually struggling for a while wiht the controlloer ad the route, but now that I have it "working", I can take a little more time to do this. Because I realize that I actually have a lot more "data" to work with.


that is, i have different teams populated...and I've done more than I expected to do. 

I mean, I was able to create 32 different pages yesterday, with barely lifting a finger. 

Like, that's impressive. 

And how I did that was through Rails; essentially Rails enabled most of what I did; 

And it was due to my focus on limiting what I was doing with HTTP. 

Taths' right, I was thinking about HTTP when I finished yesterday. Because HTTP is an important idea, but it gets quickly glazed over with the TOP curriculum. I mean, they discuss it, but they more or less shy away from being methodical about it. 


And this is just the way I am. I need to be more methodical about it. 

Because I eventually got things working yesterday, doing the things i wanted, but I need to know more about how it was working. 

Because a lot of new things are happening. 

So let's strat there. 

And that's also what's awesome about the progress i've made...I'm willing to do something else. Like, I feel the willingness to switch gears and focus on organization or design of some of the things. 

Like that feels really good...to say "ok cool. i have a ton of stuff organized...now let's make it look good." that to me feels like a real step. 

But before I keep charging ahead and look at boot strap and making things a little more organized and a little more pretty, I want to sotp and just understand how this is all working. 

So i have an index page. and now I have a link to a teams page. 

so how did I setup the link? 

I used a `link_to` helper method on the view. 

So I went into the `welcome#index`, and I added some ERB...because the view is written in ERB. 

It's a little complicated, ERB is, but I thnk that's mostly because it doesn't flow from the IDE. Or at least, not yet. 

so anyway, in the `welcome#index` I added this `link_to` helper: 

```erb
<%= link_to "list of teams", teams_path %>
```

so that outputs a link in the view. and it does a couple things.

so it's just a method. `link_to` is a method, and the other two things are parameters. I wonder if I could organize it like a normal method....

And I can. Of course I can. I don't know why I'm surprised by that. But I can. So that actually helps a little. 

First argument is the text of what I want the link to say. The second argument is the url, or the path. 

the `teams_path` is actually using a shortcut that's specific to Rails; Since I know that I want to go to `teams#index`, and I don't really want to have to worry about the correct HTTP request to add to this link, I can simply say `teams_path` and that'll take me to the `teams#index`.

So there's more to say about this. This is one of those things that is really important. But it just isn't discussed enough. I mean, the idea of this shortcut is super helpful, but where does it come from? And how does it work in more complicated situations? 

I mean, wanting to go to some controllers index action is really basic, but there are other things that this "shortcut" can do. So what even is this shortcut? And where does it come from? And how is it constructed? and what are the variatons? 

Well, there's a lot of them. And it's one of those things i'd like to know about. 

So the context, as afar as I can tell right now, is taht the short cut is soemthing like `<prefix>_path`...and there are variations on that idiom. 

So then the question is...where does that `<prefix>` come from? 

Well, the prefix comes from the RESTful routes that have been created in the `config/routes.rb` file. 

so for example, for my `teams_controller` that I created, I have a couple of prefixes. 

And actually, for the entire applicatin I have a handful of prefixes: 

- welcome_index
- root
- teams
- team
  
  And then some other ones, that I don't really care about. At least not right now. 

  And so this suggests that for other `link_to` helpers, I could do things like: 

  - welcome_index_path
  - root_path
  - teams_path
  - team_path

And that's exactly what I've done. Now there are some other ways to link to stuff outside of my application. but I don't need ot know that right now, so I'm not going to worry about learning that. 

Ok. So next. 

Next is acknowledging that I've used those paths in my actual application. And I can add some more of those. In fact I think I need to add some more of those. So let me see where I could add those...

Ok, so I literally just added 32 links to my site by adding one line of code. 

that's so cool. 

So yeah. Ok, so I feel more comfortable with the idea of working with these `link_to` helpers. 

and so the next thing that I wnat to take a look at is, how did I create the 32 different pages with the teams information on them? 

So I have a link on the home page that targets the `teams_path`...and that takes me to the `teams#index` controller#action....and so that means I have something on the `views/teams/index.html.erb`...right? 

Yep. 

Ok, I know what I want to do next....

I want to create a link that will show all the individual teams data...like I want to see everything...and I want it to be very readable. 

I know I could probably do that with the JSON...but I want to see it in my webpage. 

So what do I need for that? 

I mean, I already sort of have that on my show page....

So I want to show more information. 