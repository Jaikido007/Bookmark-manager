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

Update bookmarks

Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users are restricted to manage only their own bookmarks

## Database set up

* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager;
* Create a table using the psql command CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
* Connect to the database using the pqsl command \c bookmark_manager;
* Run the query we have saved in the file 01_create_bookmarks_table.sql

## Test Database set up

* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager_test;
* Create a table using the psql command CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
