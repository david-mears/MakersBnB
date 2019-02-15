[![Build Status](https://travis-ci.org/david-mears/MakersBnB.svg?branch=staging)](https://travis-ci.org/david-mears/MakersBnB)

=======

# MakersBnB

Production site: https://makersbnb6ever.herokuapp.com.

## Overview

MakersBnb is an application designed to allow a host to list spaces available and for guests to book those spaces. It was written in 4 days as the first group project during week 6 at Makers Academy. In order to increase the challenge we decided to use Rails as the core technology for the product as this was a new framwework we were all keen to learn.

Link to spec: https://github.com/makersacademy/course/blob/master/makersbnb/specification_and_mockups.md

Link to intro: https://github.com/makersacademy/course/blob/master/makersbnb/README.md

## Technology stack

- Ruby on Rails: Core web application framework
- Postgresql: Database
- RSpec with Capybara: Testing
- BCrypt: Password hashing
- Travis: Continuous Integration
- Github: Source control
- Heroku: Hosting of staging and production environments
- BCrypt: Password hashing and security

## Local install

When locally installing for development first ensure you have postgresql installed (https://www.postgresql.org/download/) then:

```
git clone https://github.com/david-mears/MakersBnB/
bundle install
bundle exec db:create
bundle exec db:migrate
bin/rails server
```
Then simply connect to localhost:3000 to begin using the application.

## Design

We purposelly designed the application in a RESTful manner with spaces, users, availabilities and sessions following this model.

For the design of the database schema we created the following diagram:

![Database design](https://github.com/david-mears/MakersBnB/blob/staging/public/makersbnbdb.png?raw=true "Database design")

## Pipeline

One of the main goals of this project was to develop a working process and pipeline for collaborating as a team effectively.

Github was configured with a master and staging branch and all day-to-day changes were based on the staging branch. Individual developers could raise pull requests based on this branch with the main branches protected. To merge into staging 2 other developers were required to review the code and Travis had to successfully pass the feature and unit tests before the merge could take place.

At regular intervals, typically when a user story was completed, the staging branch was merged into master.

After each merged pull request the staging branch automatically deployed to Heroku at https://makersbnb5ever.herokuapp.com to allow the developer to perform any further manual UI checks. The master branch would automatically deploy to a production Heroku site at https://makersbnb6ever.herokuapp.com when staging changes were merged.

## User Stories (from headline specifications)

```
As a user
So that I can access my account
I want to be able to sign in
```

```
As a host
So that I can find guests
I want to be able to list a new space
```

```
As a prospective guest
So that I can plan my stay
I want to be able to see the places
```

```
As a host
So that I can increase earnings
I want to be able to list multiple spaces
```

```
As a host
So that I can make my place attractive
I want to be able to name their space, provide description and a price
```

```
As a host
So that guests know when my place is available
I want to offer a range of dates when my space is available
```

```
As a prospective guest
So that I can plan my stay
I want to be able to request any space for one night
```

```
As a host
So that I can vet my guests
I want to have right of approval over my guests
```

```
As a host
So that I can avoid duplicate enquiries
I want only available spaces to be listed publically
```

```
As a host
So that other guests can view my property in case a booking falls through
I want my spaces to continue to be shown until a booking request is confirmed
```
