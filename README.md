Deployed Site: https://jennywy.github.io/wdip2fe/
Front-end Repo: https://github.com/jennywy/wdip2fe

TECHNOLOGIES USED:
- Ruby
- Rails
- PostgreSQL
- Heroku

ERD:
https://imgur.com/a/Ffk2O

PROCESS:
I had a concussion during this project, so I scaled down a lot and tried to meet the barest minimum requirements for the project.

I generated my resources from scaffold, and then tested them with curl scripts. I identified that my userlanguages resource was going to be my CRUDable resource, I added a "name" field to the Users model to use, and gave my userlanguages the properties of the OpenReadController. I chose 8 programming languages use as seed data.

UNSOLVED PROBLEMS:
This was originally conceived as a "Couchsurfing for languages" where a user could search for other users based on their skill level so that a user could GET/INDEX a list of users with that skill level. This would allow beginners to find experts, and experts to find students. I'd also like to impliment a GET/SHOW where when a user clicks on one of those entries they find that user's email address.

The level attribute is fluid at the moment, but I'd like to limit it 4 values: Beginner, Intermediate, Expert, and "Want To Learn".

I'd like to add additional validations to the user for email address and username.

I'd like users to GET their own resources. At the moment the get request is nonspecific to a user and all the users on the site are shown. This is pretty bad UI and makes it confusing for the user to understand what is theirs and isn't.

I'd like to add a "last updated at" so users can track their progress as they go up a level, and users can track a history of their updates.

The languages resource is not fully CRUDable, but I'd like to make it CRUDable for only an admin so users don't deface the site.
