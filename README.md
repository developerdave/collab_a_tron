== Welcome to collab_a_tron [![Build Status](https://secure.travis-ci.org/developerdave/collab_a_tron.png)](http://travis-ci.org/developerdave/collab_a_tron)

SUMMARY
-------
collab_a_tron is an open source website to allow for better collobration within companies. The main aim of collab_a_tron is to build a community within IT. Allowing developers, designers, testers to showcase their work.

We are starting off small concentrating on greater collobration between developers.

Installation
------------
The fastest way to get started is by using RVM and cloning the repository 

```shell
git clone git@github.com:developerdave/collab_a_tron.git
cd collab_a_tron
git install bundler
bundle install
```
You will also want to migrate the database once your are done.

```shell
bundle exec rake db:migrate
```

Contributing
------------
A guide on how to contribute to the collab_a_tron project can be found [here](https://github.com/developerdave/collab_a_tron/blob/master/contribution_guidelines.md)
