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
  mount Resque::ServerNoAct.new, :at => "/resque_no_act"
```

#### Contributing to resque-web\_no\_act

- Let me know if you need any additional plugins covered, or:
- fork and send a request

#### Copyright

Copyright (c) 2012 Rainer Kuhn. See LICENSE.txt for
further details.

