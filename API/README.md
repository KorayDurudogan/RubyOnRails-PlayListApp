# API for providing user, playlist and song data.

API provides users, songs and playlists from 3 csv files via provider classes which invokes the needed type by strategy pattern approach.
It has total of 16 unit tests. They mostly focused on inheritance and dependency injection type checks. Since Ruby is dynamically typed language, I found it crucial to test inheritance and dependency injection types to prevent people get lost in future implementations.

You can simply start the API with running "rails s" in console. It will start the server default 3000 port. You can start the app within a different port via "rails s -p your_port_number".

* Ruby 2.6.5
* RubyOnRails 5.0.7.2
* bundler 2.1.4
