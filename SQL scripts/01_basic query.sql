-- basic query
-- show the databases in the current RDBMS
show databases;

-- create new database
create database my_database;

-- delete database (dangerous!!)
-- drop database my_database;

-- comment
-- single line comment
-- 1. --
#2. #

-- multi lines comment
/*
drop database my_database;
drop database my_database;
drop database my_database;
*/

-- use (enter)
use my_database;
use world;
use sakila;

-- check the database you're using
select database();