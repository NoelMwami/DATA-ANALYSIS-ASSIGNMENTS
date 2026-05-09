# SQL Concepts and Practical Application

## 1. DDL vs DML

SQL commands are mainly divided into:

- **DDL (Data Definition Language):** Used to define and structure database objects such as tables.
- **DML (Data Manipulation Language):** Used to manage and manipulate data inside those tables.

| Aspect   | DDL (Data Definition Language) | DML (Data Manipulation Language) |
|----------|-------------------------------|----------------------------------|
| Purpose  | Defines database structure     | Manipulates data in tables       |
| Commands | CREATE, ALTER, DROP           | INSERT, UPDATE, DELETE           |
| Effect   | Changes schema                | Changes records/data             |
| Example  | CREATE TABLE students         | INSERT INTO students VALUES (...)|

---

## 2. Use of CREATE, INSERT, UPDATE, DELETE

In this assignment:

- **CREATE** was used to define tables such as students, exam results, and subjects.
- **INSERT** was used to add records into the tables.
- **UPDATE** was used to correct or modify existing data, such as updating a student’s city or correcting marks in the exam results table.
- **DELETE** was used to remove incorrect or cancelled records. For example, `result_id 9` was deleted from the exam results table.

---

## 3. Filtering Data Using WHERE

The `WHERE` clause was used to filter records based on specific conditions. It supports several operators including:

- `=` (equal to)
- `>` and `<` (greater than / less than)
- `BETWEEN`
- `IN`
- `LIKE`

### Examples:

- **LIKE (pattern matching):**
  - `'A%'` → starts with A  
  - `'E%'` → starts with E  
  - `'%Studies%'` → contains "Studies"

- **IN (multiple values):**
  ```sql
  WHERE city IN ('Nairobi', 'Mombasa', 'Kisumu')
WHERE marks BETWEEN 50 AND 80
## 4. CASE WHEN for Data Transformation

CASE WHEN was used to create conditional logic in SQL queries.

It helped transform raw data into meaningful categories. For example, exam marks were classified into:Distinction,Merit,Pass,Fail based on score ranges.

## 5. Reflection

This week I learned how SQL is used to manage and analyze data efficiently.

The most interesting part was creating tables from scratch and adding data into them. Seeing the results using SELECT * was fascinating.

The most challenging part was ensuring correct syntax when writing multiple-row INSERT statements and using filtering conditions correctly. It was surprising how a small mistake like a missing comma could cause errors.

Overall, this has improved my understanding of how databases are structured and how data is manipulated in real-world scenarios.