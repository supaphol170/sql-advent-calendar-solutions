-- SQL Advent Calendar - Day 20
-- Title: Hot Cocoa Break Logs
-- Difficulty: medium
--
-- Question:
-- Jack Frost wants to review all the cocoa breaks he actually took — including the cocoa type and the location he drank it in. How would you combine the necessary tables to show each logged break with its matching cocoa details and location?
--
-- Jack Frost wants to review all the cocoa breaks he actually took — including the cocoa type and the location he drank it in. How would you combine the necessary tables to show each logged break with its matching cocoa details and location?
--

-- Table Schema:
-- Table: cocoa_logs
--   log_id: INT
--   break_id: INT
--   cocoa_id: INT
--
-- Table: break_schedule
--   break_id: INT
--   location_id: INT
--
-- Table: cocoa_types
--   cocoa_id: INT
--   cocoa_name: VARCHAR
--
-- Table: locations
--   location_id: INT
--   location_name: VARCHAR
--

-- My Solution:

SELECT cocoa_logs.break_id,
  cocoa_types.cocoa_id,
  cocoa_types.cocoa_name,
  locations.location_name
FROM cocoa_logs
JOIN break_schedule ON 
  break_schedule.break_id = cocoa_logs.break_id
JOIN cocoa_types ON
  cocoa_types.cocoa_id = cocoa_logs.cocoa_id
JOIN locations ON
  locations.location_id = break_schedule.location_id
