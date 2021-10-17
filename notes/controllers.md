Alright so I'm skipping around, or just sort of cherry-picking what I need at any given moment. 

the means I'm looking at controllers now. 

Ok, so I believe I've actually skipped ahead before, and I've looked at this../the ODIN project is something I can refer to if I have more specific questions, but I'm swishing over to the railsGuides for now. 


Ok, so what I wanted to do was I wanted to create the Teams controller; so I did that. 

And I did that with: 

```
bin/rails generate controller Teams index --skip-routes
```

and I think what that did is it generated an actual file called `teams_controller.rb` in the `app/controllers/` dir

it also created a view in `app/views/articles/` 

and the view it created was `app/views/articles/index.html.erb` verify that in VS code. 

Ok, so now I have new routes, I have the controllers to go with them, the views too, and I even have pages for styling those pages. 

Also, I forgot that I did this, but I have some basic bootstrap styling already applied. So that's kind of cool. 

I've found that even the Rails guide/tutorial is a bit dry and a bit dense for my purposes. I just want to sort of cherry pick certain things as I need them. So the next thing I want to do is...sort of figure out how to work more with controllers; like, what can I do now that I have controllers, routes, and views and objects to work with? 

Like, how can I do something with this stuff? M

Maybe it'd be a good time to take a look back at the welcome#index page I have? 


Since I have those controllers, i know that I have a strict ruby file that I can probably toy around with. 

Alright, so what am I trying to do? 

I'm trying to quickly get all the teams to display. but of course that's not going to work with what I'm doing. 

but what do I want to do? 

I mean, I'm pretty sure I have access to all teams...so try to take some of that stuff out of the welcome#index page.

I think what I may need to do is....work on something else a little bit more. I mean, I realize i'm sort of trying to make some magic happen, but there are some steps I feel like I'm missing. 

Ok, so I need a little extra practice here with the controllers, and with the entirety of Rails really. 

So I know what's going on a little bit more. 

Aha, so I think I got it to work. Or at least I got something to work lol

So what I did was I essentially moved that code that I had in the welcome#index page over to the teams#index page. But now I'm using a controller. So it just cleans things up a bit. 


Ok, so I'm really cooking with gas now, and there's a lot going on so I need to go ahead and write more. Because more is happening lol. 

Essentially what I've done is I've just copied and pasted the code that was on the welcome#index page and moved that over to the teams#index page...and I'm starting to use the idea of the controller a little bit more. 

but I'm doing a little more than that; or at least there's other things I want to do, or I want to learn. Like, now that I have this, I want to dig into the celly app a little more, and the data itself a little more; but I also want to link this stuff together, so I think the next thing to do is see if I can start adding links back and forth between pages. 

I mean, i don't really know what I need to say...but I do want to write somethings about what I've done. 

I have data now, and it's displayed on a webpage. And so yeah, that's a step in the right direction; but what next? Well, I want to link back to the homepage; so see if I can do that. 

But before I do that, what have I done? 

I mean really, what I've done is I've bene able to tap into the NHL API in a very rudimentary way. I don't really know what it is I'm doing, but I know that I'm grabbing some of the basic information. And I'm using rails to sort of parse the information; and I'm using rails to display the information; but what else can I do? 

I mean, what I want to do is I want to learn more about what it is i'm doing. So yeah, I've got the data in, but now I have separate pages; I have pages here and I have pages there. But I want to link them together. So go ahead and try to do that. 

Because I'm also mixing in some bootstrap as well. So I have Rails, Jekyll, the Gem, and Bootstrap all things that I'm sort of simultaneous looking at developing. So keep doing that. 

alright...next thing is getting some sort of links going. 

Alright linking between things. 

So this uses ERB and it looks like: 

```erb
<%= link_to  %>
```

now, admittedly, I don't know how to do the rest in rails/erb...but that's fine, that's why I'm taking this time now. 

>The `link_to` helper renders a link with its first argument as the link's text and its second argument as the link's destination

alright, so true to ruby it's a method.

And it takes parameters; but this method doesn't necessarily use parenthesis to distinguish the arguments. 

but learn what the arguments are supposed to be; 

1. the link's text
2. the link's destination

so I could do something basic like: 

```erb
<%= link_to "list of teams", teams_path %>
```

ok, cool; So this is actually really helpful. Keep building with this. Because as I do these little things, the power of Rails will continue to reveal itself, hopefully. 

Keep going. I want to put the link on the teams page and link back to the index. 

Alright, now what I want to do is I want to somehow create a page specifically for the Chicago Blackhawks. 

but i'm not sure I know how to do that. I mean, I know they have an ID, but I'm not sure how I can get this info into the HTTP request. 

Besides, what I'm doing is really a bastardized way of doing it. 

Hmmm, so now what I'm doing is something I'm not really ready for. What I'm trying to do is i'm now trying to use the Show action...is that what it is? 

That's exactly what it is...so how do I do that? 

Alright, so now what am I trying to do? 

I'm trying to work with the id of a team. But I don't really know how to do that. 

And I don't really know what I would expect to be the correct result of any work that I would do. 

so I guess what I'd like is I'd like to click the team name, and that take me to a page that has the team name at the top of it. 


Alright, so I did a lot, but I don't really know what I did, or how I did it. 

So yeah, I think I want to try to write down what I've done. 

Most of what Iv'e done happened in the views. But some other files were altered as well. 

So what was I trying to do? 

I was trying to extrapolate something in the views, that's for sure. But really what I wanted to do were some other things.   

I mean, I think it started with a desire to clean up the index page of the rails app I've been building with the NHL API. 

So it turns out that I'd just dumped a lot of stuff onto the index page. But I wanted to extrapolate a little bit...by using a controller, and creating some views. 

The reason I started wanting to do this was because I figured out how I have been using this Celly gem, and I wanted to do some more with it. 

so I've been learning about routing with Rails, and that's part of the odin curriculum. But the point is, I wanted some "real"-ish practice with routing. 

And I sort of got that. 

But what did I learn? 

Well, I learned a couple things. 

I learned about `routes.rb`, and I learned that the instruction sort of started there. 

Now, when I'm building, is that where I'll usually start? I mean, I don't see that as being the first place I'll be building; but then again, maybe it will be. I just don't know. 

but for the time being, I started working with the routes when I started trying to turn my access to the NHL API into resources. 

And that's when things started to happen for me. Because I realized that I had access to some built in objects...and that controllers used objects. 

So the path was sort of like: routes > controllers > views...

And working with those things, it started to make a little more sense..

Or at least, once I got the routes sorted out to interact with the controllers the way I wanted them to, then the views started playing "nice"...and things really started to happen. 

So for that, I'm grateful. 

So let me go back to the routes.rb and sort of explain what I've done. 

# Routes

so legit, the only thing I've really done is added a really small piece of code

```ruby
  resources :teams, only:[:index, :show]
```

so this is the short way of writing out some RESTful resources. 

And that's kind of the take-away that I'm really glossing over here. That with this one line of code, i'm creating a bunch of other paths that my application will need to use downstream. 

But I don't necessarily know exactly what I'm generating with this. 

I know it's some combination of the HTTP verbs and controller actions. 

But I'm not interested (at least not right now) in all of the HTTP verbs, and I'm not really that interested in the controller actions. At least not all of them. 

The most important HTTP verb that I'm interested in right now is `GET`. Seriously. I know that's like the majority of the verbs. But that's really the most interesting to me right now. 

I know there are all these other verbs, but I just don't give a shit about them right now. 

I just want to get good at this one verb, and then focus on the other things. I just don't really wnt to think about creating something else. 

All I know is I have access to the NHL API and it's being updated, and there's stuff happening on it. 

I know there are some limitations for it, but I don't really know what those limitations are. 

All I know is that I want to continue to build something with the skills I'm learning, and we'll go from there. 

So the point was, with that one line of code, I created some paths that I could use with HTTP requests. At least that's what I think is going on. See that's what sort of sucks. There's something that I'm sort of missing. I feel like there's a gap here in my knowledge. 

And I don't think I was glazing over this. There's just a lot of fluff, and i"m looking for something to really provide some insight. I want to know more about HTTP requests. Just very specifically about the actual simple ones, and not stray to far away from that. 

I think there are tons of resources. out there. 

Ok, so Mozilla has a section about HTTP; so if there's information I want, I can look there. And that'll provide some more context for me. 

So yeah, that's kind of what I wanted to do this evening, was understand what it was that I was sort of missing wit this work that I did today. Like,, I can see the results of some of what I did...and just having those routes really made a big impact for me. 

But having the routes was just one part of what I did. 

After I had the routes, I did something else. I generated the controller. And the controller had the same name as the resource. 

And again the resource was the thing that had the routes. And the routes are what are used to help sort of expedite adn dispatch the HTTP requests that are made. 

So the controller I made was actually something like, a stripped down version. Generating the controller could have been more robust, but I didn't need everting that the controller would have created. So I opted to limit what it was. 

Those limitations included not creating paths that I didn't need, and not creating views I didn't need. 

Now I believe I also limited some of the actions that were created and added to the controller. 

Because the controller is where the ruby actions/methods are stored. 

And those methods are called...on the controller objects. 

I mean, that's what it feels like...that's what it seems like...that the controllers are objects, and that the actions are the methods. 

I mean, that's probably what it is....on some level. But that's not really how it feels at first. 

It feels a lot different. It feels like, something bigger, something more intimidating. 

But it's difficult because I was so focused on trying to figure out how to use the object of the resource within the controller. 

And that's the next thing I did. 

But before I get too far ahead of myself, I don't really need to worry too much about what happens when I generate the controller. 

Generating the controller was really helpful, and it did a lot fo r me...but ultimately what it did, is just gave me all the things I would need, or will need. 

But after I had the controller created, I still had to do some more work. 

Specifically I had to figure out what to add to the actions, to allow them to access the NHL API. 

And so everything that I have there is working now, so what did I do in the controller? 

# Controllers

Now this is another remarkable bit about what I did today: 

It is remarkably sparse. Like the code in the teams_controller is very minimal. But it's doing a lot. 

So the thing about creating a controller is it gives me access to all the same things again: 

- index
- show
- new
- create
- edit
- update
- destroy

ISNCEUD

Igloos
Sometimes
Need
Cold
Earth
U
Dummy

Cool. I got all the controller actions now. 

So then, I get an index. But it's not just an index. It's a Controller#action...so it's Teams#index

Which helps tremendously. Because Teams#index is actually the same is just /teams at least when it comes to paths. 

