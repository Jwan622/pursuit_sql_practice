# Data Modeling

Often in interviews or greenfield projects, you'll be asked to build a data model to support business requirements. In other words, you'll be told some requirements that the business will want to support (support restaurants and orders, support dating and matching and messaging, support Twitter and tweets, etc.), and you'll be asked to build tables that can support the business's needs. Here are some examples.

## Example 1 (easiest)

Build out a data model that supports orders from an ecommerce site. The site supports two types of orders, food and wine. Entities are users, orders, restaurants. A restaurant can sell both food and wine orders but the orders have to be separate.  

1. How many food orders are ordered each month?
2. Which restaurants sell the most wine orders? Top 3
3. Which restaurants sell the most food orders? Top 3
4. Which restaurants sell the most food orders in the last 60 days.
5. Which users order the most food?

Create a SQL table schema and populate the tables with fake data. Then write the queries to answer all 5 questions.

## Example 2 (medium)

Build out a data model (logical and physical) that supports a dating app. We want to keep track of users sending messages to other users. We want to keep track of when a user has opened a message. We also want to ask simple questions like:
1. Which gender is sending more messages each month?
2. How often are messages unopened?
3. Which users are power users?
4. Which users are receiving the most messages? least messages?

## Example 2

This was an interview questions from a saas company for email marketing.

1. Say we want to launch an email campaign to our users. We want to be able to select different templates for the email campaign. We want to email specific users from different demographics. A user can belong to different demographics. We also want to know which users internal to the company send the most email campaigns (i.e., which are our most aggressive marketing department employees.). What would this data model look like? Say there's a page where a marketing dept employee may create a campaign, populate it with 100 users from the NorthEast under 25 demographic and then email the users. We eventually want to know the clickthrough rate (who clicked and opened the email) and conversion rate (who signed up or created an account from the email) of the campaign.

### My sample answer. First the logical model.

This was an answer I came up with in an hour. It got me an offer. There are flaws here.

1. User table <this is the table that keeps track of employees launching campaigns>
- userid (primary key)
- username - string
- department - string
- email - string


2. Template table
- id
- template_name - string (minimalist, corporate, skies, blue color, etc.)

3. audience
- id
- type - string (young, old, men, women, college, active, etc)

-- this keeps track of data about the actual email campaign but not which users got notified. That is in the campaign_audience table
3. campaign
- id - primary key
- template_id (FK)
- user_id (which colleague sent it) (FK)
- campaign_audience_id (this links to emails and converted data) (FK) (this is how to tell size)
- datetime (send time, when we actually send the campaign audience)
- clickrates - decimal (recalculated every batch of users)
- conversion rates - decimal (same as above, recalculated)
- send_emails? - boolean
- created_at - timestamp
- expiration_date - timestamp
- type - string (mobile, email, etc.)

-- This table represents the members in the actual campaign. 
-- We populate users in a campaign using the audience_members table which might have 10000000 users but for our example, we pull 100 users from the audience_members table, deduped on email. Those users are in the campaign_audience_table
4. Campaign_audience Table
- id - sequence (primary key)
- audience_member_id (FK)
- clicked? - boolean false by default
- converted? - boolean false by default
- opened? - boolean
- clicked_timestamp? - timestamp default null
- converted_timestamp - timestamp default null
- open_timestamp? - timestamp default null

5. Audience_members Table (This of this as a configuration table. A member can be duplicated here since a member can be in many audiences, so someone needs to dedupe on email, this could have 10000000 members).
- member_id (might appear multiple times because a member can be in many audiences)
- audience_id (FK)
- email (this should be unique right?)
- contact

6. Members Table
- id (primary key)
- user_name
- email

