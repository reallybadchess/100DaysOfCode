-- Using UPSERT
-- #############################

/*
	1. The idea is that when you insert a new row into the table, PostgreSQL will update the row if it
	   already exists, otherwise, it will insert a new row. 
	   
	   Which is why the statement is called UPSERT (combo of UPDATE and INSERT)
	
	2. Syntax
		
		INSERT INTO table_name (column_list)
		VALUES (value_list)
		ON CONFLICT target action;
	
	3. for 'action'
		
		ON CONFLICT
		
		DO NOTHING						means do nothing if the row alrady exists
		DO UPDATE SET col1 = val1		update some fields in the table
		WHERE condition
	
	4. This is similar to INSERT INTO..... IF NOT EXIST
	
*/

-- create a sample table

CREATE TABLE t_tags(
	id SERIAL PRIMARY KEY,
	tag TEXT UNIQUE,
	update_date TIMESTAMP DEFAULT NOW()
);

SELECT * 
FROM t_tags

-- insert some data

INSERT INTO t_tags (tag)
VALUES
('Pen'),
('Pencil');

-- View data
SELECT *
FROM t_tags


-- 2022-02-10 11:21:38.429422
-- Insert a record, on conflict do nothing

INSERT INTO t_tags (tag)
VALUES
('Pen')
ON CONFLICT (tag) 
DO NOTHING

SELECT * 
FROM t_tags

-- Lets insert a record, on conflict set new values
INSERT INTO t_tags (tag)
VALUES
('Pen')
ON CONFLICT (tag)
DO 
	UPDATE SET
		tag = EXCLUDED.tag,
		update_date = NOW();

SELECT * 
FROM t_tags

-- We can also concatenate using ||

INSERT INTO t_tags (tag)
VALUES
('Pen')
ON CONFLICT (tag)
DO 
	UPDATE SET
		tag = EXCLUDED.tag || '1',
		update_date = NOW();

-- This variation will inssert a new row
INSERT INTO t_tags (tag)
VALUES
('Notebook')
ON CONFLICT (tag)
DO 
	UPDATE SET
		tag = EXCLUDED.tag,
		update_date = NOW();
		
SELECT * 
FROM t_tags