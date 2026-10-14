ALTER TABLE invest 
ADD CONSTRAINT fk 
FOREIGN KEY (emp_id) 
REFERENCES employes(emp_id); 
desc invest;
