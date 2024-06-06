use kunaldb;
SELECT * from airline_passenger_satisfaction;

-- 1. **Average Age of Passengers by Gender:**

SELECT Gender, AVG(Age) AS average_age
FROM airline_passenger_satisfaction
GROUP BY Gender;


-- 2. **Total Number of Passengers by Customer Type:**

SELECT `Customer Type`, COUNT(*) AS total_passengers
FROM airline_passenger_satisfaction
GROUP BY `Customer Type`;


-- 3. **Average Flight Distance by Travel Type:**

SELECT `Type of Travel`, AVG(`Flight Distance`) AS average_flight_distance
FROM airline_passenger_satisfaction
GROUP BY `Type of Travel`;


-- 4. **Total Number of Delayed Flights:**

SELECT COUNT(*) AS total_delayed_flights
FROM airline_passenger_satisfaction
WHERE `Departure Delay` > 0 OR `Arrival Delay` > 0;


-- 5. **Average Satisfaction Score by Travel Class:**

SELECT Class, AVG(Satisfaction) AS average_satisfaction
FROM airline_passenger_satisfaction
GROUP BY Class;

-- 6. **Correlation between Ease of Online Booking and Satisfaction:**

SELECT AVG(`Ease of Online Booking`) AS avg_ease_online_booking, AVG(Satisfaction) AS avg_satisfaction
FROM airline_passenger_satisfaction
GROUP BY `Ease of Online Booking`;

-- 7. **Average Departure Delay by Travel Class:**

SELECT Class, AVG(`Departure Delay`) AS average_departure_delay
FROM airline_passenger_satisfaction
GROUP BY Class;

-- 8. **Number of Passengers by Age Group and Satisfaction Level:**

SELECT CASE 
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 30 THEN '18-30'
        WHEN Age BETWEEN 31 AND 45 THEN '31-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE 'Over 60'
        END AS age_group,
       Satisfaction,
       COUNT(*) AS passenger_count
FROM airline_passenger_satisfaction
GROUP BY age_group, Satisfaction;

-- 9. **Average Seat Comfort Rating by Travel Class:**

SELECT Class, AVG(`Seat Comfort`) AS average_seat_comfort
FROM airline_passenger_satisfaction
GROUP BY Class;


-- 10. **Percentage of Passengers Satisfied with Cleanliness:**

SELECT ROUND((SUM(CASE WHEN Cleanliness = 'Satisfied' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) 
AS cleanliness_satisfaction_percentage
FROM airline_passenger_satisfaction;


-- 11. **Average Satisfaction Score by Type of Travel:**

SELECT `Type of Travel`, AVG(Satisfaction) AS average_satisfaction
FROM airline_passenger_satisfaction
GROUP BY `Type of Travel`;

-- 12. **Average On-Board Service Rating by Travel Class:**

SELECT Class, AVG(`On-board Service`) AS average_onboard_service
FROM airline_passenger_satisfaction
GROUP BY Class;


-- 13. **Correlation between In-Flight Entertainment and Satisfaction:**

SELECT AVG(`In-flight Entertainment`) AS avg_inflight_entertainment, AVG(Satisfaction) AS avg_satisfaction
FROM airline_passenger_satisfaction
GROUP BY `In-flight Entertainment`;

-- 14. **Average In-Flight Wifi Service Rating by Travel Class:**

SELECT Class, AVG(`In-flight Wifi Service`) AS average_inflight_wifi_service
FROM airline_passenger_satisfaction
GROUP BY Class;

-- 15. **Number of Passengers by Gender and Satisfaction Level:**

SELECT Gender, Satisfaction, COUNT(*) AS passenger_count
FROM airline_passenger_satisfaction
GROUP BY Gender, Satisfaction;

-- 16. **Average Leg Room Service Rating by Travel Class:**

SELECT Class, AVG(`Leg Room Service`) AS average_leg_room_service
FROM airline_passenger_satisfaction
GROUP BY Class;

-- 17. **Percentage of Passengers Satisfied with Food and Drink:**

SELECT ROUND((SUM(CASE WHEN `Food and Drink` = 'Satisfied' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS food_drink_satisfaction_percentage
FROM airline_passenger_satisfaction;

-- 18. **Average Check-in Service Rating by Type of Travel:**

SELECT `Type of Travel`, AVG(`Check-in Service`) AS average_check_in_service
FROM airline_passenger_satisfaction
GROUP BY `Type of Travel`;

-- 19. **Average Satisfaction Score by Gate Location Convenience:**

SELECT `Gate Location`, AVG(Satisfaction) AS average_satisfaction
FROM airline_passenger_satisfaction
GROUP BY `Gate Location`;