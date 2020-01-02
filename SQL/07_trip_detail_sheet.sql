USE www;
SELECT 
    destination_name,
    trip_type_name,
    t.trip_number,
    trip_date,
    CONCAT(e.first_name, ' ', e.last_name) AS 'guide name',
    e.mobile_phone AS 'guide mobile_phone',
    '414-555-1212' AS 'Wimas Wild Wisconsin Office Phone',
    latest_guest_arrival_time,
    departure_time,
    estimated_return_time,
    gathering_point_description
FROM
    destination d
        JOIN
    trip t ON d.destination_code = t.destination_code
        JOIN
    trip_type tr ON t.trip_type_code = tr.trip_type_code
        JOIN
    employee e ON t.guide_employee_id = e.employee_id
        JOIN
    gathering_point ga ON t.gathering_point_id = ga.gathering_point_id
ORDER BY destination_name , trip_type_name , trip_date;