# Bookmark-manager
Bookmark pairing challenge

User stories:

Show a list of bookmarks:

As a user
So that I can see my bookmarks
I would like to be able to list my bookmarks.

Add new bookmarks:

As a user
So that I can store extra bookmarks
I would like to be able to add new bookmarks

Delete bookmarks

As a User
So that I can remove bookmarks from my library
I would like to be able to delete bookmarks

Update bookmarks

Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users are restricted to manage only their own bookmarks

## Database set up

* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager;
* Connect to the database using the pqsl command \c bookmark_manager;
* Run the query we have saved in the file 01_create_bookmarks_table.sql
* INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');
INSERT INTO bookmarks (url) VALUES ('http://www.askjeeves.com');
INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');
INSERT INTO bookmarks (url) VALUES ('http://www.google.com');
* Run the query we have saved in the file 02_add_title_to_bookmarks.sql

## Test Database set up

* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager_test;
* Create a table using the psql command CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
* Run the query we have saved in the file 02_add_title_to_bookmarks.sql
