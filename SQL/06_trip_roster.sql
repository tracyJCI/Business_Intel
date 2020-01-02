USE www;
SELECT 
    destination_name,
    trip_type_name,
    t.trip_number,
    trip_date,
    CONCAT(e.first_name, ' ', e.last_name) AS 'guide name',
    CONCAT(g.first_name, ' ', g.last_name) AS 'guest name',
    experience_name,
    age,
    weight,
    isSwimmer,
    g.mobile_phone AS 'guest mobile_phone'
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
        JOIN
    guest g ON r.guest_id = g.guest_id
        JOIN
    experience ex ON g.experience_code = ex.experience_code
ORDER BY destination_name , trip_type_name , trip_date , 'guest name';