ALTER TABLE invest 
ADD CONSTRAINT fk 
FOREIGN KEY (emp_id) 
REFERENCES employes(emp_id); 
desc invest;

-- Adds a foreign key constraint named 'fk' to the invest table.
-- Links invest.emp_id to employes.emp_id and displays the table structure.
