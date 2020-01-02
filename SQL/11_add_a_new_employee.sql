USE www;
INSERT INTO employee(employee_id,first_name,last_name,nickname,mobile_phone,availability_notes) 
values(8, 'Patrick L.', 'Patterson','Pat','847-555-9706','All Saturdays and Sundays in June, July and August'); 

INSERT INTO plays_role values(8,2);
INSERT INTO plays_role values(8,3);

INSERT INTO can_guide values(8,1);
INSERT INTO can_guide values(8,2);
INSERT INTO can_guide values(8,3);