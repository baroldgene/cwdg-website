#&lt;CWDG /&gt; Website

[![Build Status](https://travis-ci.org/CWDG/cwdg-website.png)](https://travis-ci.org/CWDG/cwdg-website)
[![Code Climate](https://codeclimate.com/github/CWDG/psychic-octo-wallhack.png)](https://codeclimate.com/github/CWDG/psychic-octo-wallhack)
[![Coverage Status](https://coveralls.io/repos/CWDG/psychic-octo-wallhack/badge.png)](https://coveralls.io/r/CWDG/psychic-octo-wallhack)

##Description

This is our latest web application for our group in
order for us to manage our group better an automate
certain tasks that I am terrible at doing.
But yet still can't answer emails for me.

##Development

###Technologies Used:

* Framework
  * [Ruby on Rails](http://rubyonrails.org/) w/ [Ruby 2.1.0](http://ruby-lang.org)
* Authentication
  * [Omniauth](https://github.com/intridea/omniauth)
  * [Omniauth-GitHub](https://github.com/intridea/omniauth-github)
* Templating Languages
  * [SLIM](http://slim-lang.com)
  * [SASS](http://sass-lang.com/)

###Run this application

This application runs Postgresql both locally and on Heroku.
Please have this setup before you continue on.

I also have `config/database.yml` gitignored since everyone's machine is different.
Make sure you add this to your project before running!

`cp config/database-example.yml config/database.yml`

Once you have that installed you can run:

    bundle install

    rake db:create
    rake db:migrate

    rails server

The app runs on port 3000, we use [dotenv](http://github.com/bkeepers/dotenv), please contact [@tarebyte](http://github.com/tarebyte)
to get this. We have two different Oauth keys, one for production and one for development.

###Boxen Configuration

I'm probably the only person that uses [Boxen](http://boxen.github.com),
but if you do use it, this is the configuration file I use.

```puppet
# module/projects/manifests/cwdg.pp

class projects::cwdg {

  boxen::project { "cwdg-website":
    ruby       => '2.1.0',
    postgresql => true,
    nginx      => true,
    source     => "CWDG/cwdg-website",
    dir        => "${boxen::config::srcdir}/CWDG/cwdg-website"
  }
}
```

##Contributing

This is meant to be an application that our group should enjoy and contribute to.
Please feel free to fork this project and make changes that you would like to see.

If you are not sure how to implement something, but would like to see it just make a pull feature pull
request on this repo or talk to one of us during the meeting. We'll always be more than happy to help.
