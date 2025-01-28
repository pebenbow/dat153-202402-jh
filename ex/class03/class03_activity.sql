/*
Class 03: Data Types
*/
--------------------------------------------------------------------------------
/*
Part 1

Exercise 1.1

Create a table named `inventory` to store the following columns, with appropriate data types:

-   `item_id`: The primary key of our table, it needs to uniquely identify each row.
-   `item_name`: A text description of our inventory items, limited to 100 characters.
-   `quantity`: The number of items available in the inventory.
-   `price`: Item prices with two decimal places; needs exact precision to ensure accurate financial calculations.
-   `discount_rate`: Product discount rates; needs exact precision to ensure accurate financial calculations.
-   `weight`: The weight of each item; does not need to be as accurate as the preceding columns.
*/


CREATE TABLE IF NOT EXISTS inventory (
  item_id       INTEGER GENERATED ALWAYS AS IDENTITY,
  item_name     VARCHAR(100) NOT NULL,
  quantity      INT,
  price         NUMERIC(10, 2),
  discount_rate DECIMAL(5, 3),
  weight        FLOAT
);

--------------------------------------------------------------------------------
/*
Exercise 1.2

Use the `INSERT INTO` statement demonstrated in *Practical SQL* to populate your
new inventory table with three inventory items, such as a hardcover book, a
video game, and a board game. Populate each column with data that you think is
appropriate for its data type.
*/

INSERT INTO inventory (item_name, quantity, price, weight, discount_rate)
VALUES
  ('Hardcover Book', 30, 19.99, 1.2, 0.05),
  ('Video Game', 15, 59.49, 0.1, 0.15),
  ('Board Game', 10, 35.00, 2.5, 0.10);

--------------------------------------------------------------------------------
/*
Exercise 1.3

Now query the data from the table you just created.
*/


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
/*
Part 2: Character data types

Exercise 2.1

Create table storing different text types
*/

CREATE TABLE IF NOT EXISTS text_types (
  text_type_id INTEGER GENERATED ALWAYS AS IDENTITY,
  fixed_char CHAR(10),
  variable_char VARCHAR(100),
  unbounded_text TEXT
);

--------------------------------------------------------------------------------
/*
Exercise 2.2

Populate table with text
*/

INSERT INTO text_types (fixed_char, variable_char, unbounded_text)
VALUES
    ('Test', 'This is a longer text string.', 'Text fields can hold a large amount of text, far more than the other two types.'),
    ('Short   ', 'Short', 'Short');

--------------------------------------------------------------------------------
/*
Exercise 2.3

Use the `LENGTH()` function to query the table you just created and get the
length of each column. Also use the `OCTET_LENGTH()` function to figure out how
many bytes each column uses to store its data.

Note: you can use column aliases to give a name to each new column you are
adding to your output. Simply add `AS (column_name)` after you have closed your
`LENGTH()` functions.
*/



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
/*
Part 3: Date/Time data types

Exercise 3.1

Create table for event logging
*/

CREATE TABLE IF NOT EXISTS event_log (
    event_id INTEGER GENERATED ALWAYS AS IDENTITY,
    event_name VARCHAR(100),
    event_date DATE,
    event_time TIME,
    event_timestamp TIMESTAMP,
    event_timestamptz TIMESTAMPTZ
);

--------------------------------------------------------------------------------
/*
Exercise 3.2

Insert data into the event log table
*/

INSERT INTO event_log (event_name, event_date, event_time, event_timestamp, event_timestamptz)
VALUES
    ('Project Kickoff', '2025-01-15', '14:00:00', '2025-01-15 14:00:00', '2025-01-15 14:00:00+00'),
    ('Yearly Review', '2025-12-01', '09:00:00', '2025-12-01 09:00:00', '2025-12-01 09:00:00-05'),
    ('Team Outing', '2025-07-22', '12:30:00', '2025-07-22 12:30:00', '2025-07-22 12:30:00+01'),
    ('Product Launch', '2025-09-30', '16:00:00', '2025-09-30 16:00:00', '2025-09-30 16:00:00-07'),
    ('Holiday Party', '2025-12-20', '20:00:00', '2025-12-20 20:00:00', '2025-12-20 20:00:00+00'),
    ('Quarterly Planning', '2025-04-05', '10:00:00', '2025-04-05 10:00:00', '2025-04-05 10:00:00-04'),
    ('Client Meeting', '2025-11-15', '11:00:00', '2025-11-15 11:00:00', '2025-11-15 11:00:00+00');

--------------------------------------------------------------------------------
/*
Exercise 3.3

Query all the columns you just created, and add a few more with column aliases:

-   Use `INTERVAL` to add 1 day to the `event_date` column, and call it `next_day`
-   Use `INTERVAL` to add 1 hour to the `event_time` column, and call it `one_hour_later`
-   Use `EXTRACT(YEAR)` to get the year from the `event_timestamp` column, and call it `event_year`
-   Use `EXTRACT(HOUR)` to get the hour from the `event_timestamptz` column, and call it `event_hour`
*/



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
/*
Part 4: Transforming data with CAST

Exercise 4.1

Create table
*/


--------------------------------------------------------------------------------
/*
Exercise 4.2

Insert values
*/


--------------------------------------------------------------------------------
/*
Exercise 4.3

Cast numeric to int and text
*/


--------------------------------------------------------------------------------
/*
Exercise 4.4

Cast int to numeric and text
*/


--------------------------------------------------------------------------------
/*
Exercise 4.5

Cast text to numeric and int (where possible)
*/


--------------------------------------------------------------------------------
/*
Exercise 4.6

Cast date to text and try casting text back to date
*/













