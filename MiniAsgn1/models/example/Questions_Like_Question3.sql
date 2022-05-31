{{ config(materialized='table') }}



select p.body
from "MINIASGN"."MINISCHEMA"."POSTS" p
where p.Id = (select u.Id
from "MINIASGN"."MINISCHEMA"."USERS" u
where u.DisplayName like "%nau%") and p.PostTypeId = 1
