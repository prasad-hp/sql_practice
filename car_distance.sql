-- Create the car_distances table
CREATE TABLE car_distances (
    cars VARCHAR(40),
    days VARCHAR(10),
    cumulative_distance INTEGER
);

-- Insert data into the car_distances table
INSERT INTO car_distances (cars, days, cumulative_distance) VALUES
('Car1', 'Day1', 50),
('Car1', 'Day2', 100),
('Car1', 'Day3', 200),
('Car2', 'Day1', 0),
('Car3', 'Day1', 0),
('Car3', 'Day2', 50),
('Car3', 'Day3', 50),
('Car3', 'Day4', 100);

SELECT * FROM car_distances;

-- CALCULATE DISTANCE TRAVELLED EACH DAY

SELECT *, 
(cumulative_distance - LAG(cumulative_distance, 1, 0) OVER (PARTITION BY cars ORDER BY days) ) AS distance_travelled
FROM car_distances
