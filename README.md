# README

One of the best ways to learn sql is by doing. The point of this repo is to practice our data modeling skills and answering questions using our data.

# Topics to learn
1. Creating a data model to support business questions
2. SQL fundamentals (create table, insert data, select data)
3. SQL intermediate skills (group by, window functions).
4. Answering questions using our data.


# Assignment
Using the tables in the postgres container, answer the following questions using sql:

1. How many orders were made in the last 6 months?
2. How many orders were made by each restaurant in the last 6 months total?
3. How many orders were made by each restaurant each month in the last 6 months total?
4. What are the top 3 most popular restaurants in each country?
5. What is the most popular restaurant in each country in terms of order totals? What about order amounts?


# Explanation of some files

I created the dump file using the `pg_dump` command which dumped the content of my own database into a file.

When you create a dump using `pg_dump`, it includes all the necessary commands to recreate the database roles and permissions as they existed in the original database. If those roles do not exist in the new database instance, you'll encounter errors when trying to import the dump.... which I did the first time I did this.

To avoid this, you can create a role-agnostic dump with `pg_dump` by excluding role-related commands. You can use the `--no-owner` and --no-acl options:

```bash
pg_dump -U jwan -W --no-owner --no-acl -Fp -v -f "./database/migration.sql" postgres
```

--no-owner: This option will prevent the dump from including commands to set the ownership of objects to match the original database.
--no-acl: This will stop the dump from including any access privilege (GRANT/REVOKE) commands.


By using these options, the dump file will not include any role or permission commands, which makes it more portable between systems where the roles may not match.
After generating the dump with these options, you should be able to import it into your Docker container's PostgreSQL instance without the role existence issue.

Our `Dockerfile` copies the contents of that file to the container. So if you build the image with `docker build -t pursuit_sql .` and then run `docker run -d pursuit_sql` to run the image in detached, you can now enter the container and see the database with `docker exec -it <docker container id> bash` and then `psql -U postgres`. To validate the dump was build inside the docker container, now you should be able to run:

```bash
select * from grubhub.orders;
```
