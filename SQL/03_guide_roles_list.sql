USE www;
SELECT 
    nickname,
    CONCAT(first_name, ' ', last_name) AS 'employee name',
    role_name
FROM
    employee e
        JOIN
    plays_role p ON e.employee_id = p.employee_id
        JOIN
    role r ON p.role_code = r.role_code
ORDER BY nickname , role_name;