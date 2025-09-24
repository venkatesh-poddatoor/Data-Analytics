SELECT * FROM fastf1_laps;

SELECT "Driver", COUNT(*) AS total_laps
FROM fastf1_laps
GROUP BY "Driver"
ORDER BY total_laps DESC;

SELECT "Driver", MIN("LapTime") AS fastest_lap
FROM fastf1_laps
GROUP BY "Driver"
ORDER BY fastest_lap ASC;

SELECT "Driver", COUNT("PitInTime") AS pit_stops
FROM fastf1_laps
WHERE "PitInTime" IS NOT NULL
GROUP BY "Driver"
ORDER BY pit_stops DESC;

SELECT "Driver", AVG("SpeedFL") AS avg_speed
FROM fastf1_laps
GROUP BY "Driver"
ORDER BY avg_speed DESC;

SELECT "Driver", "Compound", COUNT(*) AS laps_on_compound
FROM fastf1_laps
GROUP BY "Driver", "Compound"
ORDER BY "Driver", laps_on_compound DESC;

SELECT "Driver", "LapNumber", "Position"
FROM fastf1_laps
ORDER BY "LapNumber", "Position";

SELECT "Driver", COUNT(*) AS deleted_laps
FROM fastf1_laps
WHERE "Deleted" = TRUE
GROUP BY "Driver"
ORDER BY deleted_laps DESC;

SELECT "Driver", COUNT(*) AS total_laps,
       SUM(CASE WHEN "IsAccurate" = TRUE THEN 1 ELSE 0 END) AS accurate_laps
FROM fastf1_laps
GROUP BY "Driver";










