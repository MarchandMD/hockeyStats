alright, so now I wnt to add the players controller...but first I want to see what I did. 

I mean, I added the routes...and I...did I run the generator?

yes I did.

So, I don't really know what I'm trying to do....

I'm trying to use this player_controller...but there are some things that need to be done, 

so i'm trying to do this from scratch. And so what sort of functionality do I have with the player controller? 

I mean, how would I even use the player#index action? 

I think it'd be easier to focus on the player#show action for now, since that's the action that's concerned wiht a single player. 

umm, there's still a lot to learn, and it usually starts with something specific that I want to do. 

For example, I was trying to do something specific....i'm trying to use the `#season_stats` method from the Celly gem, but I'm having some problems with it. 

I think what I eneed to think about is the entire request chain, from HTTP...like, what button is going to be clicked on? 

And how will that influence the HTTP request that is sent to the app? 

Well, I'm already sending HTTP requests to my app; and those requests are leveraging the params Hash, ut I don't really know how. 

So how is the params hash beig used, and why do I think it's iportant here? 

well, it'll be happening during one of the `link_to` helpers... and specifically, i'm pretty sure it's happening when I'm on the `teams#show` page...

Well, first it's happening on the `teams#index` page in one of the `link_to` methods...

ok, so what's going on with the HTTP request? 

Where is it originating from? 

It's originating from the `link_to` method on the `teams#index` page. 

And what does the `link_to` method look like, on the `teams#index` page?

```ruby
<%= link_to org['name'], team_path(org['id']) %>
```

and what does this mean? 

It means, create an anchor tag with an http link and use the value associated with the organization 'key' as the text to display, and connect to the RESTful path of the `teams#show` action, and pass in the value of the `org['id']` and that get's placed in the params hash, apparently. 


So now, when the app calls up the `teams#show` view, and there happens to appear some erb using the `params[:id]` value, the value of `org['id']` is passed from the `teams#index` page and into the `#show` action of the teams controller. 

While in the `Teams#show` action, it uses the argument `params[:id]` and grabs the value that was passed into the `params` Hash, to execute a method correctly. 

Now that the `teams#show` action has completed it's process, we move to the `teams/show` view...

SO NOW THIS IS WEIRD...BECAUSE I DON'T KNOW WHAT it is doing? or what is going on? 

So in the `teams#show` action, I ran

```ruby
def show
  # @team = Celly::Team.new
  # @team.find(params[:id])
end
```

and this means what? 

Ok, so I had to comment out the entire show method to find out more about what's going on. 

So when I comment out both lines, and I try to follow the HTTP route for `teams#show`, it fails, telling me that there is no method `#roster` for a `nil` class object. 

on the `teams/show` view there is some ERB that shows: 

```erb
<% team =  @team.roster(params[:id]) %>
```

and so this means that the view doesn't know about the `@team` instance variable. 

Now, I haven't necessarily declared any instance variables anywhere; at least not in this object in the traditional sense; 

But I can still just create one out of thin air...and I can do that in the `teams#show` controller. 

Ok, so this is interesting, I didn't even need the second line....

So then this makes me want to move the instantiation to outside of the individual methods. 

Just to play with scope a little. 

Ok, that didn't work. But what I have learned is that in the show action I didn't need that silly call to whatever I was doing. 

I didn't need to do the `@team.find(params[:id])`

I don't know what I thought it was doing. 

But this brings up another question....

How do I get from the `teams/index` view, to the `teams/show` view with correct information? 

and that has to stem from the `@team.find(params[:id])` that is being used in the `link_to` helper method. 

So the `@team` in `@team.find(params[:id])` is being pulled from the `teams#show` controller action, but as far as I can tell there is no way to place the instantiation of `@team` outside of the method. Can't scope that. 

I'm pretty sure i use the `#find` method in the `teams/index` view..no I don't. 

Wow. So there's additional data that I'm not even viewing. 

Well, that's interesting. 

So that's something I definitely want to try to do. 

I htink the best place to do that would be on the show page...

ok, so now I've done that...can I turn to the players now? 