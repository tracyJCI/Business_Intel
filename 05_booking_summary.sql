USE www;
SELECT 
    destination_name,
    trip_type_name,
    t.trip_number,
    trip_date,
    CONCAT(first_name, ' ', last_name) AS 'guide name',
    capacity,
    COUNT(t.trip_number) AS 'guests booked',
    capacity - (COUNT(t.trip_number)) AS 'positions available'
FROM
    destination d
        JOIN
    trip t ON d.destination_code = t.destination_code
        JOIN
    trip_type tr ON t.trip_type_code = tr.trip_type_code
        JOIN
    employee e ON t.guide_employee_id = e.employee_id
        JOIN
    reservation r ON t.trip_number = r.trip_number
GROUP BY t.trip_number
ORDER BY destination_name , trip_type_name , trip_date , trip_number;