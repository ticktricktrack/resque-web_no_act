### resque-web\_no\_act

A child-proofed version of the Resque web interface that's safe to use by less trustworthy personnel. You get all the same information as the regular interface, but can't delete or retry anything. The interface looks the same, even all the buttons are there, but they just redirect to an ```Access Denied``` page.

__Caution__: Resque plugins that aren't covered here will still be able to manipulate queues.
Covered:

- Resque::Server
- Resque::Retry
- Resque::Scheduler
- Resque::History
- Resque::Cleaner

#### Install

Only mounting via routes is available, not standalone executable.

routes.rb

```ruby
  mount Resque::ServerNoAct.new, :at => "/monitor"
```

#### Authentication

I found authentication a bit tricky, since subclassing will using the parents authentication as well. Note: This only works if both have different namespaces, so ```/resque``` and ```/monitor``` works for me. ```/resque``` and ```/resque_no_act``` does not.


```ruby
class Resque::ServerOriginal < Resque::Server
end

# Set the AUTH env variable to your basic auth password to protect Resque
AUTH_PASSWORD = Settings.resque_server_password
if AUTH_PASSWORD
  Resque::ServerOriginal.use Rack::Auth::Basic, "Resque Interface" do |username, password|
    password == AUTH_PASSWORD
  end
end

Resque::ServerNoAct.use Rack::Auth::Basic, "Child Proof Resque Interface" do |username, password|
  password == 'secret'
end
```

#### Contributing to resque-web\_no\_act

- Let me know if you need any additional plugins covered, or:
- fork and send a request

#### Copyright

Copyright (c) 2012 Rainer Kuhn. See LICENSE.txt for
further details.

