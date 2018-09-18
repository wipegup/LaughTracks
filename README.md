## Laugh Tracks

This is your Week 1 Solo Project for Module 2 of the Backend program at Turing.

This project will allow you to apply the lessons you've learned this first week in an ongoing project. We encourage you to take chances, be risky, try new things.

The primary goals for this project:

- creation of a basic web application from scratch
- implementing basic MVC structure to your project
- save and retrieve data from a database
- display content on a web page with some very basic styling
- learning how to test your code effectively at a Controller and a Model level


Fork this repository from Turing's account to your own account, and clone your new forked repository to your laptop.


## Setup

Before you begin work, run the following commands:

```
bundle install
bundle update
```

## Requirements

- students must implement Sinatra and PostgreSQL
- all new code must be 100% tested
- you do not need any additional gems beyond what has been provided
  - if you find a gem you want to use, please DM your instructors for permission before implementing them


## User Stories

```
User Story 1 of 5

As a visitor,
When I visit `/comedians`
Then I see a list of comedians with the following
information for each comedian:
  * Name
  * Age
  * City

You may use any internet site to fetch this information to put into your database
The city attribute can hold birthplace or current known hometown.
```

```
User Story 2 of 5

As a visitor,
When I visit `/comedians`
Then I also see a list of each comedian's TV specials.
Each TV special should show it's run-time length in minutes and a thumbnail image.

You may find this information on IMDB.com and other related sites.
Your project does not need to include *every* special the comedian has ever made.
Image locations can be stored in the database as a string.
```

```
User Story 3 of 5

As a visitor,
When I visit `/comedians`
Then I see an area at the top of the page called 'Statistics'
In that 'Statistics' area, I see the following information:
- the average age of all comedians
- the average run length of every TV special
- a unique list of cities

Average and unique calculations should be done in ActiveRecord.
```

```
User Story 4 of 5

As a visitor,
when I visit `/comedians?age=34`
Then I see a list of all comedians with an age of 34.

Testing should check that excluded comedians do not show up.

Extension:
All other statistics information should show up, but should be
limited to only the information about the comedians listed
on the page.
```

```
User Story 5 of 5

As a visitor,
When I visit `/comedians`
For each comedian, I see a count of their TV specials
and the Statistics area on the page should list a total count
of TV specials for every comedian.
```
