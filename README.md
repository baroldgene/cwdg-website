#&lt;CWDG /&gt; Website

[![Build Status](https://travis-ci.org/CWDG/cwdg-website.svg)](https://travis-ci.org/CWDG/cwdg-website)

##Description

This is our latest web application for our group in
order for us to manage our group better an automate
certain tasks that I am terrible at doing.
But yet still can't answer [emails for me](mailto:cwdgosu@gmail.com).

###Run this application

This application runs [Postgresql](http://www.postgresql.org) both locally and on Heroku.
Please have this setup before you continue on.

* If you are running Ubuntu use [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-14-04)
* If you are running OSX [please install with Homebrew](http://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/)

```
# Setup the app
./script/bootstrap

# Run the app
bundle exec rails server

# Run the tests
bundle exec rake test
```

The app runs on port 3000, we use [dotenv](http://github.com/bkeepers/dotenv), please contact [@tarebyte](http://github.com/tarebyte)
to get this. We have two different Oauth keys, one for production and one for development.

###Boxen Configuration

I'm probably the only person that uses [Boxen](http://boxen.github.com),
but if you do use it, this is the configuration file I use.

```puppet
# module/projects/manifests/cwdg.pp

class projects::cwdg {

  boxen::project { "cwdg-website":
    ruby       => '2.1.1',
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

