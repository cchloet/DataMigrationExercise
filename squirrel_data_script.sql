CREATE OR REPLACE WAREHOUSE squirrel_warehouse
WITH
    WAREHOUSE_SIZE = 'XSMALL'  -- Options: XSMALL, SMALL, MEDIUM, etc.
    AUTO_SUSPEND = 300         -- Auto-suspend after 5 minutes of inactivity
    AUTO_RESUME = TRUE         -- Automatically resumes when a query is run
    INITIALLY_SUSPENDED = TRUE;  -- Starts in a suspended state

CREATE OR REPLACE DATABASE squirrel_data;

USE DATABASE squirrel_data;

CREATE OR REPLACE SCHEMA squirrel_schema;

USE SCHEMA squirrel_schema;

GRANT USAGE ON WAREHOUSE squirrel_warehouse TO ROLE SYSADMIN;
GRANT USAGE ON DATABASE squirrel_data TO ROLE SYSADMIN;
GRANT USAGE ON SCHEMA squirrel_schema TO ROLE SYSADMIN;
GRANT SELECT ON ALL TABLES IN SCHEMA squirrel_schema TO ROLE SYSADMIN;

USE WAREHOUSE squirrel_warehouse;
USE DATABASE squirrel_data;
USE SCHEMA squirrel_schema;

-- Verify active warehouse
SELECT CURRENT_WAREHOUSE();

-- Verify active database
SELECT CURRENT_DATABASE();

-- Verify active schema
SELECT CURRENT_SCHEMA();

-------------------------------------------------------------------------------------

-- Step 1: Create the table
CREATE OR REPLACE TABLE SquirrelData (
    AreaName STRING,
    AreaID STRING,
    ParkName STRING,
    ParkID INT,
    SquirrelID STRING,
    PrimaryFurColor STRING,
    HighlightsInFurColor STRING,
    ColorNotes STRING,
    Location STRING,
    AboveGroundHeight STRING,
    SpecificLocation STRING,
    Activities STRING,
    InteractionsWithHumans STRING,
    OtherNotesObservations STRING,
    SquirrelLatitude FLOAT,
    SquirrelLongitude FLOAT
);

-- Step 2: Insert data
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-01', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.85941, -73.933936);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-02', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Looks skinny', 40.859436, -73.933937);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-03', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating, Digging something', 'Indifferent', NULL, 40.859416, -73.933894);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-04', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.859418, -73.933895);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-05', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running, Eating', 'Indifferent', 'She left food', 40.859493, -73.93359);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-06', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Climbing', 'Indifferent', NULL, 40.860825, -73.932871);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-07', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.860225, -73.933143);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-08', 'Black', 'Gray', NULL, 'Above Ground', '10', NULL, 'Climbing', 'Runs From', NULL, 40.859965, -73.933412);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-09', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.859892, -73.933326);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-10', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating, Digging', 'Indifferent', NULL, 40.859636, -73.933717);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-11', 'Gray', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Eating, Digging', 'Indifferent', 'was intimidated by a dog', 40.859576, -73.933738);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Fort Tryon Park', 1, 'A-01-12', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Runs From', NULL, 40.859989, -73.934544);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-01', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.845749, -73.9407);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-02', 'Gray', 'Cinnamon', NULL, 'Above Ground', '2', NULL, 'Foraging', 'Indifferent', NULL, 40.845875, -73.940808);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-03', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', NULL, NULL, 40.845875, -73.940808);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-04', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.846088, -73.940613);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-05', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Runs From', NULL, 40.846088, -73.940613);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-06', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.846088, -73.940613);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-07', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, NULL, 'Runs From', NULL, 40.846222, -73.94094);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-08', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging, Nesting/gathering leaves', 'Indifferent', NULL, 40.846222, -73.94094);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-09', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', NULL, 40.846197, -73.941026);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-10', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.846185, -73.940613);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-11', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Runs From', NULL, 40.846271, -73.940579);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-12', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '15', 'tree', 'Climbing', 'Indifferent', NULL, 40.846332, -73.940369);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-13', 'Gray', 'White', NULL, 'Above Ground, Specific Location', '20', 'tree', 'Sleeping', 'Indifferent', NULL, 40.846332, -73.940369);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-14', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.846332, -73.940369);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-15', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.846458, -73.94103);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-16', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '20', 'tree', 'Eating', 'Indifferent', NULL, 40.846417, -73.941115);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-17', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.846296, -73.941132);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-18', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.846064, -73.941497);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-19', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '2', 'tree', 'Climbing', 'Indifferent', NULL, 40.846065, -73.941498);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-20', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.847296, -73.942061);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-21', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Runs From', NULL, 40.847259, -73.941598);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-22', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.84719, -73.941308);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-23', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '2', 'fence', 'Eating', 'Indifferent', NULL, 40.84719, -73.941308);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'J. Hood Wright Park', 2, 'A-02-24', 'Cinnamon', 'White', NULL, 'Above Ground, Specific Location', '20', 'tree', 'Sitting', 'Indifferent', NULL, 40.847113, -73.940937);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-01', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '2', 'in tree', 'Chasing, Climbing', 'Watches us from tree', '#1 and #2 chasing each other', 40.841178, -73.935482);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-02', 'Gray', 'White', NULL, 'Above Ground, Specific Location', '2', 'in tree', 'Chasing, Climbing, Eating', 'Runs From', '#1 and #2 chasing each other', 40.841204, -73.935434);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-03', 'Gray', 'White', NULL, 'Above Ground, Specific Location', '2', 'in tree', 'Running', NULL, NULL, 40.841212, -73.934827);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-04', 'Gray', 'White', NULL, 'Above Ground', '3', NULL, 'Climbing', NULL, NULL, 40.841217, -73.934714);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-05', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Runs From', '#5, #6 & #7 together in shrub area to East, a lot of acorns and Corona bottle caps on ground', 40.841359, -73.934339);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-06', 'Gray', 'Gray', NULL, 'Above Ground, Specific Location', '2', 'in tree', 'Running', 'Runs From, watchful', '#5, #6 & #7 together in shrub area to East, a lot of acorns and Corona bottle caps on ground', 40.841375, -73.934242);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-07', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '< 1', 'on log', 'Running', 'Runs From', '#5, #6 & #7 together in shrub area to East, a lot of acorns and Corona bottle caps on ground', 40.841375, -73.934242);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-08', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '3', 'in wall', 'Running, Chasing, Climbing', 'Runs From', '#8 & #9 saw together at start of river overlook, hiding in cracks of cement wall! so cool!', 40.842308, -73.933061);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-09', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '3', 'in wall', NULL, NULL, '#8 & #9 saw together at start of river overlook, hiding in cracks of cement wall! so cool!', 40.842401, -73.932986);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-10', 'Gray', 'Cinnamon', NULL, 'Ground Plane, Above Ground', '6ÛÒ18', 'Started on ground, climbed 6ÛÒ18 ft.', 'Climbing, Foraging', 'Watching us from tree - very interested in us', 'Lots of garbage, near #8 & #9', 40.842511, -73.932916);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-11', 'Gray', 'Cinnamon', NULL, 'Above Ground', '4', NULL, 'Vocalization at us', 'Approaches, watching us', NULL, 40.842673, -73.932793);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-12', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running, Foraging', 'Runs From', NULL, 40.842795, -73.933002);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-13', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-14', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running, Eating', 'Runs From, watches us in short tree', 'Loud sparrows in tree', 40.842327, -73.934269);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-15', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '9', 'in tree', 'Jumped to building', NULL, NULL, 40.842359, -73.934177);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Highbridge Park', 3, 'A-03-16', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Indifferent', NULL, 40.842769, -73.934478);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-01', 'Gray', 'White', NULL, 'Above Ground', NULL, NULL, 'Climbing', 'Indifferent', 'Jumping between', 40.817593, -73.948855);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-02', 'Black', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Chasing #3', 40.817719, -73.948855);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-03', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', 'Being chased by #2', 40.817719, -73.948914);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-04', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.817711, -73.949118);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-05', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Climbing, Eating', 'Indifferent', NULL, 40.817569, -73.948931);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-06', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Chasing, Climbing', 'Indifferent', NULL, 40.817544, -73.949016);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-07', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Chasing, Climbing', 'Indifferent', NULL, 40.817544, -73.949016);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-08', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Runs From', NULL, 40.817479, -73.949006);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-09', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Wooded area', 40.816685, -73.949689);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-10', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Wooded area', 40.816677, -73.949549);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-11', 'Black', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Wooded area', 40.816555, -73.949609);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-12', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Wooded area - would look but not fully approach', 40.816506, -73.949587);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-13', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.816425, -73.949474);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-14', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.818308, -73.948952);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'St. Nicholas Park', 4, 'A-04-15', 'Gray', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.818263, -73.948909);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-01', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running, up tree', 'Runs From', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-02', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running, up tree', 'Runs From', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-03', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running, up tree', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-04', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-05', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Chasing', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-06', 'Gray', 'Gray', NULL, 'Above Ground', '15', NULL, 'Sitting on branch', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-07', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running, up tree', 'Indifferent', 'Forever wild section', NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-08', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-09', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-10', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-11', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-12', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-13', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-14', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-15', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-16', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-17', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Okay with people', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-18', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-19', 'Gray', 'Gray', NULL, 'Above Ground, Specific Location', NULL, 'Tree', 'Running', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-20', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-21', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, 'at tree', NULL, 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-22', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Chasing', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-23', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Chasing', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-24', 'Gray', 'Gray', NULL, NULL, NULL, NULL, 'Sitting at attention', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-25', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-26', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-27', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Riverside Park (Section Near Grant Memorial)', 5, 'A-05-28', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-01', 'Gray', 'Gray', NULL, 'Above Ground', '20ÛÒ40', NULL, 'Climbing', 'Indifferent', 'HAWK. HAAAAAWK. All in 1 tree.', 40.804912, -73.943735);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-02', 'Gray', 'Gray', NULL, 'Above Ground', '20ÛÒ40', NULL, 'Climbing', 'Indifferent', 'HAWK. HAAAAAWK. All in 1 tree.', 40.804912, -73.943736);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-03', 'Gray', 'Gray', NULL, 'Above Ground', '20ÛÒ40', NULL, 'Climbing', 'Indifferent', 'HAWK. HAAAAAWK. All in 1 tree.', 40.804913, -73.943735);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-04', 'Gray', 'Gray', NULL, 'Above Ground', '20ÛÒ40', NULL, 'Climbing', 'Indifferent', 'HAWK. HAAAAAWK. All in 1 tree.', 40.804915, -73.943737);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-05', 'Gray', 'Gray', NULL, 'Above Ground', '20ÛÒ40', NULL, 'Climbing', 'Indifferent', 'HAWK. HAAAAAWK. All in 1 tree.', 40.804916, -73.943735);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-06', 'Gray', 'Gray', NULL, 'Above Ground', '20ÛÒ40', NULL, 'Climbing', 'Indifferent', 'HAWK. HAAAAAWK. All in 1 tree.', 40.804914, -73.943736);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-07', 'Gray', 'Gray', NULL, 'Above Ground', '20ÛÒ40', NULL, 'Climbing', 'Indifferent', 'HAWK. HAAAAAWK. All in 1 tree.', 40.804917, -73.943737);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-08', 'Black', 'Black', NULL, 'Above Ground', '25', NULL, 'Climbing', NULL, 'Defending the tree from the HAAAAWK. The bravest.', 40.804912, -73.943738);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-09', 'Gray', 'Gray', NULL, 'Above Ground, Specific Location', '2ÛÒ6', 'small trees', 'Chasing, Climbing, Eating', 'Indifferent', '2 were chasing each other through some short trees, others just sat', 40.804701, -73.944118);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-10', 'Gray', 'Gray', NULL, 'Above Ground, Specific Location', '2ÛÒ6', 'small trees', 'Chasing, Climbing, Eating', 'Indifferent', '2 were chasing each other through some short trees, others just sat', 40.804746, -73.94374);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-11', 'Gray', 'Gray', NULL, 'Above Ground, Specific Location', '2ÛÒ6', 'small trees', 'Chasing, Climbing, Eating', 'Indifferent', '2 were chasing each other through some short trees, others just sat', 40.804912, -73.94408);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-12', 'Gray', 'Gray', NULL, 'Above Ground, Specific Location', '2ÛÒ6', 'small trees', 'Chasing, Climbing, Eating', 'Indifferent', '2 were chasing each other through some short trees, others just sat', 40.804729, -73.944053);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-13', 'Gray', 'Gray', NULL, 'Above Ground', '4...3...2...1', NULL, 'Climbing', NULL, 'Slid down a signpost while spinning. Other squirrels flung leaves at it, cheering.', 40.804713, -73.944032);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-14', 'Gray', 'Gray', NULL, 'Above Ground', '15', NULL, 'Climbing, Eating', NULL, 'Too far to observe human interactions', 40.804613, -73.943829);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-15', 'Gray', 'Gray', NULL, 'Above Ground', '15', NULL, 'Climbing, Eating', NULL, 'Too far to observe human interactions', 40.804564, -73.943824);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-16', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', NULL, 'Ran up the the 3rd baseline of a Little League field. Wrong way!', 40.804253, -73.944121);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-17', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', NULL, 'Scampered across path', 40.803758, -73.94433);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-18', 'Gray', 'Gray', NULL, 'Above Ground', '4', NULL, 'Sitting, shouting', 'Indifferent', NULL, 40.803616, -73.944464);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-19', 'Gray', 'Gray', NULL, 'Above Ground', '4', NULL, 'Sitting, shouting', 'Indifferent', NULL, 40.803413, -73.944207);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-20', 'Gray', 'Gray', NULL, 'Above Ground', '4', NULL, 'Sitting, shouting', 'Indifferent', NULL, 40.80338, -73.944148);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-21', 'Gray', 'Gray', NULL, 'Above Ground', '4', NULL, 'Sitting, shouting', 'Indifferent', NULL, 40.803392, -73.944228);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-22', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Defending tree, shouting', 'Indifferent, Preoccupied by HAAWK', 'HAWK. Same scene as 1ÛÒ8. All gray.', 40.803794, -73.944003);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-23', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Defending tree, shouting', 'Indifferent, Preoccupied by HAAWK', 'HAWK. Same scene as 1ÛÒ8. All gray.', 40.803795, -73.944003);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-24', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Defending tree, shouting', 'Indifferent, Preoccupied by HAAWK', 'HAWK. Same scene as 1ÛÒ8. All gray.', 40.803794, -73.944004);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-25', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Defending tree, shouting', 'Indifferent, Preoccupied by HAAWK', 'HAWK. Same scene as 1ÛÒ8. All gray.', 40.803794, -73.944005);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-26', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Defending tree, shouting', 'Indifferent, Preoccupied by HAAWK', 'HAWK. Same scene as 1ÛÒ8. All gray.', 40.803796, -73.944003);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-27', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Defending tree, shouting', 'Indifferent, Preoccupied by HAAWK', 'HAWK. Same scene as 1ÛÒ8. All gray.', 40.803795, -73.944004);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-28', 'Gray', 'Gray', NULL, 'Above Ground', '3', NULL, 'Eating', 'Indifferent', NULL, 40.80362, -73.944067);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-29', 'Gray', 'Gray', NULL, 'Above Ground', '6', NULL, 'Chasing, Climbing', 'Runs From', NULL, 40.80352, -73.943629);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-30', 'Gray', 'Gray', NULL, 'Above Ground', '6', NULL, 'Chasing, Climbing', 'Runs From', NULL, 40.803507, -73.943661);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-31', 'Gray', 'Gray', NULL, 'Above Ground', '25', NULL, 'Climbing', NULL, NULL, 40.803981, -73.943327);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-32', 'Gray', 'Gray', NULL, 'Above Ground', '25', NULL, 'Climbing', NULL, NULL, 40.804123, -73.943402);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-33', 'Black', 'Cinnamon', 'Chestnut Brown?? May be black with sunlight??', 'Above Ground', '25', NULL, 'Cleaning', NULL, 'Cleaning himself like a cat would.', 40.803981, -73.943273);
INSERT INTO SquirrelData VALUES ('UPPER MANHATTAN', 'A', 'Marcus Garvey Park', 6, 'A-06-34', 'Gray', 'Gray', NULL, 'Above Ground', '4', NULL, 'Climbing', 'Runs From', NULL, 40.804878, -73.942781);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-01', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Scar on forehead', 40.74145, -73.987884);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-02', 'Gray', NULL, NULL, 'Above Ground, Specific Location', '30', 'in a tree', 'Sitting', NULL, NULL, 40.742255, -73.987433);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-03', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.742556, -73.986971);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-04', 'Gray', NULL, NULL, 'Above Ground, Specific Location', '10', 'in tree', 'Resting in tree', NULL, NULL, 40.742792, -73.987046);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-05', 'Gray', NULL, NULL, 'Ground Plane, Specific Location', NULL, 'Farragut Lawn', 'Running', 'Indifferent', 'Many pigeons lounging on lawn, tourist taking picture', 40.74288, -73.987663);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-06', 'Gray', NULL, NULL, 'Above Ground, Specific Location', '15', 'in old tree (oval lawn)', 'Sitting', 'Indifferent', '#6 & #7 in same tree', 40.742421, -73.98808);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-07', 'Gray', NULL, NULL, 'Above Ground, Specific Location', '20', 'in old tree (oval lawn)', 'Sitting', 'Indifferent', '#6 & #7 in same tree - In general, visitors/people are trying to coax squirrels and take pictures. They are delighted to see squirrels.', 40.742421, -73.98808);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-08', 'Gray', 'Cinnamon', NULL, 'Ground Plane, Specific Location', NULL, 'base of tree', 'Foraging', 'Indifferent', 'Dog owners encouraging dogs to chase squirrels', 40.742807, -73.988435);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-09', 'Gray', NULL, NULL, 'Ground Plane, Specific Location', NULL, 'base of tree', 'Foraging', 'Indifferent', 'Ran from base of tree to lawn about 20 feet away in search of food', 40.741528, -73.988324);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-10', 'Gray', NULL, NULL, 'Above Ground, Specific Location', '10', 'in tree', 'Climbing, Foraging', 'Indifferent', 'First spotted in tree, then climbed down. Squirrel was small in stature.', 40.741805, -73.988448);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Madison Square Park', 7, 'B-07-11', 'Gray', NULL, NULL, 'Ground Plane, Above Ground', '1', 'on bench', 'Running, Climbing, Foraging', 'Indifferent', 'First seen on bench. Then jumped to ground, ran across path and onto lawn in search of food.', 40.741862, -73.988797);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-01', 'Cinnamon', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Climbing', 'Friendly', NULL, 40.735981, -73.99062);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-02', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running, Eating, Foraging', 'Indifferent', NULL, 40.735847, -73.990115);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-03', 'Cinnamon', NULL, NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.735896, -73.99041);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-04', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.73579, -73.990738);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-05', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Digging', 'Indifferent', NULL, 40.735941, -73.99063);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-06', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'in tree', 'Climbing', NULL, NULL, 40.73566, -73.990351);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-07', 'Gray', 'Cinnamon', 'Cinnamon tail', 'Above Ground, Specific Location', NULL, 'in tree', 'Climbing, Eating', NULL, 'Baby smaller', 40.735636, -73.990426);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-08', 'Gray', 'Black', NULL, NULL, NULL, NULL, 'Climbing', NULL, 'Baby smaller', 40.73566, -73.990351);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-09', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Running, Digging', 'Runs From', NULL, 40.735587, -73.990367);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-10', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Indifferent, Staring', NULL, 40.73542, -73.990453);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-11', 'Cinnamon', NULL, NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent, Runs From (kids)', 'Ran away from kids and climbed up the tree', 40.735514, -73.99033);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-12', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', NULL, 'Big', 40.735945, -73.990201);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-13', 'Cinnamon', NULL, NULL, NULL, NULL, NULL, 'Foraging', NULL, 'Big', 40.735947, -73.99023);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-14', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', NULL, 'Big and chubby', 40.73604, -73.98966);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-15', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', NULL, NULL, 40.73618, -73.990683);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Union Square Park', 8, 'B-08-16', 'Cinnamon', NULL, NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', NULL, NULL, 40.736298, -73.990559);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-01', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Found nut and moved into tree', 40.733753, -73.983682);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-02', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.733648, -73.983483);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-03', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.733631, -73.983419);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-04', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Climbing', 'Runs From', NULL, 40.733546, -73.983263);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-05', 'Gray', 'Cinnamon', NULL, 'Above Ground', '30', NULL, 'Climbing', NULL, NULL, 40.733591, -73.983263);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-06', 'Gray', 'Cinnamon', NULL, 'Above Ground', '15', NULL, 'Climbing, Eating', 'Indifferent', NULL, 40.733648, -73.984294);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-07', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', 'Curious, thinks we have food', 40.733737, -73.98438);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-08', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', 'Being chased by #9', 40.733501, -73.984417);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-09', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', 'Chasing #8', 40.733575, -73.984391);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-10', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', 'Expected food', 40.733506, -73.984553);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-11', 'Gray', 'Cinnamon', NULL, 'Above Ground', '20', NULL, 'Climbing', 'Indifferent', 'Juvenile? Playing with #12 in tree', 40.733619, -73.984708);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-12', 'Gray', 'Cinnamon', NULL, 'Above Ground', '20', NULL, 'Chasing', 'Indifferent', 'Juvenile? Playing with #11 in tree', 40.733648, -73.984638);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-13', 'Gray', 'Cinnamon', NULL, 'Above Ground', '40', NULL, 'Eating', NULL, NULL, 40.733737, -73.984644);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-14', 'Black', 'Cinnamon', NULL, 'Above Ground', '10', NULL, 'Eating', 'Approaches', NULL, 40.733932, -73.984612);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-15', 'Black', 'Cinnamon', NULL, 'Above Ground', '30', NULL, 'Eating', NULL, 'Far away', 40.734014, -73.984461);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-16', 'Black', 'Cinnamon', NULL, 'Above Ground, Specific Location', '60', 'in tree', NULL, NULL, NULL, 40.734221, -73.984397);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-17', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '15', 'in tree', 'Eating', NULL, NULL, 40.734083, -73.984322);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-18', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.73403, -73.984199);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-19', 'Black', 'Cinnamon', NULL, 'Above Ground, Specific Location', '40', 'in tree', 'Grooming', NULL, NULL, 40.734204, -73.984242);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-20', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.734314, -73.984231);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-21', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '30', 'in tree', NULL, NULL, NULL, 40.734261, -73.984284);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-22', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '30', 'in tree', NULL, NULL, NULL, 40.734144, -73.984059);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-23', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.734335, -73.984038);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-24', 'Black', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.734383, -73.984118);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Stuyvesant Square Park', 9, 'B-09-25', 'Black', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.734356, -73.984062);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-01', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Sun', 40.730703, -73.995821);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-02', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.730638, -73.995784);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-03', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.730528, -73.995891);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-04', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.730394, -73.996009);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-05', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730341, -73.996052);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-06', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', 'People eating at bench with dog', 40.7303, -73.996106);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-07', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730247, -73.996175);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-08', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730231, -73.996138);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-09', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.730223, -73.996132);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-10', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', 'Shady', 40.730077, -73.996277);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-11', 'Gray', 'Gray', NULL, 'Above Ground', '20', NULL, 'Nesting', 'Indifferent', 'In squirrel house (pic). Someone is trying to feed squirrel in house.', NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-12', 'Gray', 'Gray', NULL, 'Above Ground', '25', NULL, 'Climbing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-13', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', 'Chasing #15', NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-14', 'Gray', NULL, NULL, 'Above Ground, Specific Location', '15', 'in tree', 'Eating', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-15', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Chasing', 'Indifferent', 'Being chased by #13', 40.729858, -73.996843);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-16', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Chasing', 'Indifferent', NULL, 40.72985, -73.996778);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-17', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Chasing', 'Indifferent', NULL, 40.729822, -73.996816);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-18', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Chasing', 'Indifferent', NULL, 40.729809, -73.996762);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-19', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Chasing', 'Indifferent', NULL, 40.729939, -73.997068);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-20', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, NULL, 'Indifferent', NULL, 40.729976, -73.997154);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-21', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, NULL, 'Indifferent', NULL, 40.72996, -73.997079);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-22', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, NULL, 'Indifferent', NULL, 40.729927, -73.997036);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-23', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, NULL, 'Indifferent', NULL, 40.729988, -73.997106);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-24', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, NULL, 'Indifferent', NULL, 40.72998, -73.997031);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-25', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730318, -73.997213);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-26', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730301, -73.997251);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-27', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730334, -73.997589);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-28', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730411, -73.997589);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-29', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730395, -73.997535);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-30', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree', NULL, 'Indifferent', NULL, 40.730411, -73.997766);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-31', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.731031, -73.999122);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-32', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'in tree high', NULL, 'Indifferent', NULL, 40.731504, -73.998977);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-33', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'in tree high', NULL, 'Indifferent', NULL, 40.731548, -73.998842);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-34', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'in tree high', NULL, 'Indifferent', NULL, 40.731608, -73.998928);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-35', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'in tree high', NULL, 'Indifferent', NULL, 40.731503, -73.999014);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-36', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree canopy, low down', NULL, 'Indifferent', NULL, 40.731552, -73.998788);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-37', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree high', NULL, 'Indifferent', NULL, 40.731952, -73.998647);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-38', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree high', NULL, 'Indifferent', NULL, 40.731936, -73.998598);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-39', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree low', NULL, 'Indifferent', NULL, 40.732001, -73.998491);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-40', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Busy area', 40.731974, -73.998482);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-41', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.731861, -73.998122);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-42', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.731804, -73.997999);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-43', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree', NULL, 'Indifferent', NULL, 40.731747, -73.997859);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-44', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree', NULL, 'Indifferent', NULL, 40.731665, -73.997747);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-45', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree', NULL, 'Indifferent', NULL, 40.731548, -73.99758);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-46', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'tree high', NULL, 'Indifferent', NULL, 40.731389, -73.997231);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-47', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', 'Sun', 40.7312, -73.996805);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-48', 'Gray', NULL, NULL, 'Above Ground, Specific Location', NULL, 'small tree', NULL, 'Indifferent', NULL, 40.731119, -73.996655);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-49', 'Gray', NULL, NULL, 'Specific Location', NULL, 'on bench', NULL, 'Indifferent', NULL, 40.731103, -73.996601);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-50', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.73092, -73.996242);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Washington Square Park', 10, 'B-10-51', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, 'Indifferent', NULL, 40.730782, -73.996017);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-01', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', 'Runs From', 'Nut in mouth, very fast moving', NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-02', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-03', 'Black', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-04', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-05', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-06', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-07', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-08', 'Gray', 'Gray', NULL, 'Above Ground', '20', NULL, 'Climbing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-09', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-10', 'Gray', 'Gray', NULL, 'Above Ground', '30', NULL, 'Chasing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-11', 'Gray', 'Gray', NULL, 'Above Ground', '30', NULL, 'Chasing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-12', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-13', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-14', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-15', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing (down tree)', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-16', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing (down tree)', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-17', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-18', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-19', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-20', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-21', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-22', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Sitting', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-23', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Sitting (in tree hole)', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-24', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Lounging', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-25', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-26', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-27', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-28', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-29', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-30', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-31', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-32', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-33', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Sitting', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-34', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', 'Approaches', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-35', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-36', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing (down)', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-37', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing (down)', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-38', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-39', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-40', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-41', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-42', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-43', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-44', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-45', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-46', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-47', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-48', 'Black', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'They (#48 & #49) are fat.', NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-49', 'Black', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'They (#48 & #49) are fat.', NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-50', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-51', 'Black', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-52', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-53', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-54', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', 'Indifferent', NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-55', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-56', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-57', 'Gray', 'Gray', NULL, 'Specific Location', NULL, 'Tree', 'Climbing', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-58', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'Tompkins Square Park', 11, 'B-11-59', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Foraging', NULL, NULL, NULL, NULL);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-01', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running, Eating', 'Indifferent', 'Nibbling on shrubs?', 40.725738, -73.972105);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-02', 'Black', 'Black', NULL, 'Ground Plane', NULL, NULL, 'Running, Eating (peanuts)', NULL, NULL, 40.722614, -73.972894);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-03', 'Gray', 'Gray', NULL, 'Ground Plane, Above Ground', NULL, NULL, 'Climbing, Watching #2', 'Approaches', 'Siblings? (with #4) Playing (with #4) in fenced yard', 40.72263, -73.973001);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-04', 'Gray', 'Gray', NULL, 'Ground Plane, Above Ground', NULL, NULL, 'Running, Chasing, Eating', NULL, 'Siblings? (with #3) Playing (with #3) in fenced yard', 40.72263, -73.973109);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-05', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Approaches', NULL, 40.722614, -73.973033);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-06', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Approaches', NULL, 40.722173, -73.97272);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-07', 'Gray', 'Gray', NULL, 'Ground Plane, Above Ground', '8', NULL, 'Climbing, Foraging', 'Indifferent', NULL, 40.719379, -73.973504);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-08', 'Gray', 'Gray', NULL, 'Ground Plane, Above Ground', '8', NULL, 'Climbing, Foraging', 'Indifferent', NULL, 40.71935, -73.973445);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-09', 'Gray', 'Gray', NULL, 'Above Ground, Specific Location', '12', 'in a tree', 'Climbing', NULL, NULL, 40.721923, -73.974121);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-10', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Approaches', NULL, 40.724011, -73.97313);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-11', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Climbing, Eating, Foraging', 'Indifferent', 'Was very close to a dog and hid in a tree', 40.724608, -73.972841);
INSERT INTO SquirrelData VALUES ('CENTRAL MANHATTAN', 'B', 'John V. Lindsay East River Park', 12, 'B-12-12', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Runs From', NULL, 40.724774, -73.97275);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Seward Park', 14, 'C-14-01', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Runs From', NULL, 40.715415, -73.989567);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Seward Park', 14, 'C-14-02', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', 'Bushier and plump, big tail', 40.715484, -73.989299);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Seward Park', 14, 'C-14-03', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Runs From', NULL, 40.714749, -73.989577);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Seward Park', 14, 'C-14-04', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Climbing', 'Approaches', 'Looking to us for food! Climbed tree when we did not have any to give.', 40.71468, -73.989776);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Seward Park', 14, 'C-14-05', 'Gray', 'Cinnamon', 'Cinnamon tail', 'Ground Plane, Above Ground', '9', NULL, 'Climbing, Foraging', 'Approaches', 'Skinny tail, lots of digging, found an acorn and is eating', 40.714846, -73.989679);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Seward Park', 14, 'C-14-06', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running, Chasing', 'Indifferent', 'Medium bushy, maybe a little younger, agile, sprightly', 40.715033, -73.989609);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Seward Park', 14, 'C-14-07', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running, Chasing', 'Indifferent', 'Too quick', 40.715208, -73.989534);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-01', 'Gray', NULL, NULL, 'Above Ground', '20', NULL, 'Running, Climbing, Eating', 'Runs From', 'Frantically zig-zagging whilst clutching a mid-afternoon snack', 40.712159, -73.979415);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-02', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Eating, Foraging', 'Indifferent', 'Digging in leaves carelessly', 40.712199, -73.979519);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-03', 'Gray', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Multiple nut dives into the leaves; mostly successful', 40.712118, -73.97968);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-04', 'Gray', 'Cinnamon', NULL, NULL, NULL, NULL, NULL, NULL, 'Playing tag with #5', 40.712179, -73.979776);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-05', 'Gray', 'Cinnamon', NULL, NULL, NULL, NULL, NULL, NULL, 'Playing tag with #4', 40.712216, -73.979857);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-06', 'Gray', NULL, NULL, 'Above Ground', '15', NULL, 'Ear scratching', NULL, NULL, 40.712224, -73.979669);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-07', 'Gray', NULL, NULL, 'Above Ground', '25', NULL, NULL, NULL, NULL, 40.71224, -73.979744);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-08', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Frolicking', NULL, 'Leaping from branch to branch', 40.711927, -73.979658);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-09', 'Gray', 'Cinnamon', NULL, 'Above Ground', '8', NULL, 'Running, Climbing, Scratching', NULL, 'Meandering among the branches', 40.711866, -73.97976);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-10', 'Gray', 'Gray', NULL, 'Above Ground', '8', NULL, 'Running, Climbing', 'Approaches', 'Came by to make sure we had proper Sighter buttons, looks like a Gerald', 40.71174, -73.980539);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-11', 'Gray', 'White', NULL, 'Specific Location', NULL, 'Handrail', 'Posing', 'Approaches', 'Timidly approached but ran from a passing pooch', 40.711442, -73.978354);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-12', 'Gray', NULL, NULL, 'Above Ground', '15', NULL, 'Guarding', 'Defensive', 'Very upset that we spotted him accessing his tree-hole stash', 40.711316, -73.978343);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-13', 'Gray', 'Black', NULL, 'Ground Plane, Above Ground', '30', NULL, 'Running, Chasing, Climbing', NULL, '#13, #14 & #15: Scattering and teasing a Shih Tzu that chased them, runs from dog', 40.711417, 73.977767);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-14', 'Gray', 'Black', NULL, 'Ground Plane, Above Ground', '30', NULL, 'Running, Chasing, Climbing', NULL, '#13, #14 & #15: Scattering and teasing a Shih Tzu that chased them, runs from dog', 40.711421, -73.977692);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-15', 'Gray', 'Black', NULL, 'Ground Plane, Above Ground', '30', NULL, 'Running, Chasing, Climbing', NULL, '#13, #14 & #15: Scattering and teasing a Shih Tzu that chased them, runs from dog', 40.711409, -73.977719);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Corlears Hook Park', 15, 'C-15-16', 'Cinnamon', NULL, NULL, 'Above Ground', '20ÛÒ30', NULL, 'Foraging', 'Indifferent', 'So curious! A unique color and thirst for the unknown.', 40.711303, -73.97759);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Columbus Park', 16, 'C-16-01', 'Gray', 'Cinnamon', 'Cinnamon streak down back', 'Ground Plane', NULL, NULL, 'Climbing, Eating, Foraging', 'Approaches', 'Boy, Alert ÛÓ lots of basketball close by', 40.714867, -74.000236);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Columbus Park', 16, 'C-16-02', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running, Foraging', NULL, NULL, 40.7159, -74.000167);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Columbus Park', 16, 'C-16-03', 'Gray', NULL, NULL, 'Above Ground', '25', NULL, NULL, 'Indifferent', 'Nibbling on branches', 40.714875, -74.000346);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Columbus Park', 16, 'C-16-04', 'Gray', NULL, NULL, 'Above Ground', '35', NULL, 'Climbing', 'Approaches', 'Patchy ÛÓåÊbald spots', 40.715779, -73.999887);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Teardrop Park', 18, 'C-18-01', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running, Eating (or pretending to eat)', 'Runs From', 'Ran up tree and down tree, tail vibration ÛÓ not a flag or twitch, kuk sound', 40.716335, -74.015612);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-01', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', NULL, NULL, 40.712828, -74.005072);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-02', 'Gray', NULL, NULL, 'Above Ground', NULL, NULL, 'Climbing', NULL, 'Chasing #3 up the tree', 40.712938, -74.005152);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-03', 'Gray', NULL, NULL, 'Above Ground', NULL, NULL, 'Climbing', NULL, 'Chasing #2 up the tree', 40.712938, -74.005152);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-04', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Eating, Burying', 'Approaches', 'Very chubby cinnamon squirrel got peanuts from humans and buried them in leaves', 40.712893, -74.005233);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-05', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Eating, Burying', 'Approaches', 'Couldn''t find a good spot to bury theirs (peanuts from humans)', 40.712893, -74.005233);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-06', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Approaches', 'Being fed by people', 40.712922, -74.005147);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-07', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Approaches', 'Being fed by people', 40.712922, -74.005147);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-08', 'Gray', 'White', 'Very distinct white outlines on ears and ring around tail', 'Ground Plane', NULL, NULL, 'Eating', 'Approaches', 'Came out to get peanut from human', 40.713044, -74.005404);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-09', 'Gray', 'Gray', NULL, 'Above Ground', '5', NULL, 'Climbing, Foraging', 'Indifferent, Runs From', 'Perched in a bush, watched us and scampered off to eat - very little squirrel', 40.712836, -74.005662);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-10', 'Gray', 'White', NULL, 'Ground Plane, Specific Location', NULL, 'on City Hall back steps', 'Running', 'Indifferent', NULL, 40.712881, -74.005823);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-11', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane, Specific Location', NULL, 'by back steps of City Hall', 'Eating, Foraging', 'Indifferent', 'Found something to eat buried in leaves and then looked for more', 40.712995, -74.005963);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-12', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Very carefully watching a cat', 'Indifferent', NULL, 40.713044, -74.006242);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-13', 'Gray', NULL, NULL, 'Above Ground', '30', NULL, 'Chattering', 'Indifferent', 'High up in a tree, lots of talking', 40.713276, -74.006323);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-14', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating (nuts), Foraging', 'Approaches, Runs From', NULL, 40.713339, -74.006313);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-15', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', NULL, 'Very active, darting around', 40.713518, -74.006308);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-16', 'Gray', 'White', 'Lots of white!', 'Above Ground', '3', NULL, 'Climbing, Foraging', 'Watching', 'Perched on knot of tree, watching us, then started foraging', 40.71312, -74.006862);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-17', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Indifferent', 'Successfully finding buried food', 40.712872, -74.006878);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'City Hall Park', 19, 'C-19-18', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Indifferent', 'Rolling around in loose dirt with a "swimming" motion', 40.712872, -74.006878);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-01', 'Gray', 'Cinnamon', NULL, 'Above Ground', '5', NULL, NULL, 'Interested in', '#1ÛÒ5 all together being fed by humans', 40.704053, -74.01612);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-02', 'Gray', 'Cinnamon, White', NULL, 'Specific Location', NULL, 'on fencing', 'Climbing, Balancing on fencing', NULL, '#1ÛÒ5 all together being fed by humans - Hungry', 40.704011, -74.016134);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-03', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, NULL, 'Indifferent', '#1ÛÒ5 all together being fed by humans, Had a ton of leaves in his mouth for several minutes', 40.703897, -74.016118);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-04', NULL, NULL, NULL, 'Ground Plane', NULL, NULL, NULL, 'Cautious of', '#1ÛÒ5 all together being fed by humans', 40.703885, -74.016161);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-05', 'Gray', 'Cinnamon, White', NULL, 'Specific Location', NULL, 'on fencing', NULL, NULL, '#1ÛÒ5 all together being fed by humans', 40.703848, -74.016134);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-06', 'Cinnamon', 'Gray, White', NULL, 'Ground Plane', NULL, NULL, 'Chillin'', Rubbing butt on ground', NULL, 'Seems left out', 40.703882, -74.015955);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-07', 'Cinnamon', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Runs From', NULL, 40.704211, -74.015859);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-08', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', NULL, 'Obviously a couple with #9', 40.704142, -74.015837);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-09', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', NULL, 'Obviously a couple with #8', 40.704175, -74.015306);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-10', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', 'Skinny with tiny ears', 40.704171, -74.015242);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-11', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.704468, -74.014774);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-12', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.704453, -74.014757);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-13', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, 40.70442, -74.014741);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-14', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '10', 'in tree', 'Sticking out of a tree', 'Indifferent', NULL, 40.704188, -74.014853);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-15', 'Gray', 'White', 'White bellies', NULL, NULL, NULL, 'Chasing', NULL, 'Flirty, chasing #16, also eating urban farm debris', 40.70352, -74.015273);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-16', 'Gray', 'White', 'White bellies', NULL, NULL, NULL, 'Chasing', NULL, 'Flirty, being chased by #15, also eating urban farm debris', 40.703487, -74.015278);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-17', 'Gray', 'White', NULL, NULL, NULL, NULL, 'Hangin'' with #13 & #14', NULL, NULL, 40.703989, -74.015202);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-18', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, NULL, NULL, 'Looks like he has a patch of fur missing on his back', 40.703383, -74.015584);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-19', 'Gray', 'Cinnamon', NULL, 'Above Ground', '2', NULL, 'Climbing (tree)', NULL, NULL, 40.70295, -74.015813);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-20', 'Cinnamon', NULL, NULL, 'Ground Plane', NULL, NULL, NULL, NULL, NULL, 40.702934, -74.015775);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-21', 'Gray', 'White', NULL, 'Above Ground, Specific Location', '20', 'in a tree', 'Snacking in a tree', NULL, NULL, 40.702922, -74.016629);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-22', 'Cinnamon', NULL, NULL, 'Specific Location', NULL, 'on a bench', NULL, NULL, NULL, 40.702411, -74.015896);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-23', 'Gray', NULL, NULL, NULL, NULL, NULL, 'Prancing about', NULL, NULL, 40.702313, -74.015644);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-24', 'Gray', 'Cinnamon', NULL, 'Specific Location', NULL, 'on fence', 'Climbing fence', NULL, NULL, 40.702467, -74.015757);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-25', 'Gray', 'Cinnamon', NULL, 'Above Ground, Specific Location', '15', 'in a tree', NULL, NULL, NULL, 40.702597, -74.016132);
INSERT INTO SquirrelData VALUES ('LOWER MANHATTAN', 'C', 'Battery Park', 20, 'C-20-26', 'Gray', 'Cinnamon', NULL, 'Specific Location', NULL, 'on fence', 'Climbing fence', NULL, NULL, 40.702618, -74.016556);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-01', 'Gray', 'Cinnamon', NULL, 'Above Ground', '10ÛÒ12', NULL, 'battery', 'Staring', 'Looks cold, not moving, lethargic', 40.725308, -73.942789);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-02', 'Gray', 'Cinnamon', 'White underbelly', 'Above Ground', '< 1', NULL, 'Climbing, Foraging, Self-cleaning', 'Indifferent', NULL, 40.725511, -73.943609);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-03', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Approaches', NULL, 40.725511, -73.943448);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-04', 'Gray', NULL, NULL, 'Above Ground', '15', NULL, 'Climbing', NULL, NULL, 40.725478, -73.944113);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-05', 'Gray', NULL, NULL, 'Above Ground', '30', NULL, 'Eating', NULL, NULL, 40.725527, -73.943974);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-06', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Approaches', 'We fed him!', 40.725397, -73.944124);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-07', 'Gray', NULL, NULL, 'Above Ground', '30', NULL, 'Climbing', NULL, NULL, 40.725413, -73.943984);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-08', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Climbing (down)', NULL, NULL, 40.724755, -73.944006);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-09', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Climbing (down)', NULL, NULL, 40.723974, -73.943845);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-10', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Climbing (down)', NULL, NULL, 40.723462, -73.943952);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-11', 'Gray', NULL, NULL, 'Ground Plane', NULL, NULL, 'Climbing (down)', NULL, NULL, 40.725372, -73.943652);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-12', 'Gray', 'White', NULL, 'Above Ground, Specific Location', '15', 'by playground', 'Sitting', 'Indifferent', NULL, 40.725364, -73.943512);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-13', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, 'at Nassau (Avenue) / Henry (Street) ', 'Running', 'Runs From', NULL, 40.725397, -73.943297);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'Msgr. McGolrick Park', 21, 'D-21-14', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', NULL, 40.725197, -73.943273);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-01', 'Cinnamon', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Indifferent', NULL, 40.72167, -73.953364);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-02', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating', 'Approaches', NULL, 40.721768, -73.953192);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-03', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Runs From', 'Ran in from baseball field', 40.721662, -73.953278);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-04', 'Gray', 'Cinnamon', NULL, 'Above Ground', NULL, NULL, 'Climbing', 'Runs From', NULL, 40.721857, -73.953139);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-05', 'Cinnamon', NULL, NULL, 'Ground Plane', NULL, NULL, 'Running', 'Approaches', 'Running around', 40.721941, -73.952947);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-06', 'Cinnamon', NULL, NULL, 'Above Ground', NULL, NULL, 'Climbing', 'Approaches', 'Perched up ÛÓ came close to us!', 40.722039, -73.952796);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-07', 'Cinnamon', NULL, NULL, 'Ground Plane', NULL, NULL, 'Chasing', 'Approaches', 'Skinny tail ÛÓ was in the baseball field', 40.72147, -73.952857);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-08', 'Cinnamon', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Runs From', NULL, 40.721713, -73.95305);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-09', 'Gray', 'Gray', NULL, 'Ground Plane, Specific Location', NULL, 'In a trash and metal heap next to baseball field', 'Eating, Foraging', 'Indifferent', NULL, 40.721933, -73.953147);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-10', 'Gray', 'Cinnamon, White', NULL, 'Above Ground, Specific Location', '12', 'in tree', 'Climbing', 'Runs From', 'Ran up a tree', 40.722283, -73.953115);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-11', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Runs From', 'Ran out of park', 40.722698, -73.953198);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-12', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Indifferent', 'Birds walking nearby', 40.722819, -73.952095);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-13', 'Gray', 'White', NULL, 'Above Ground', NULL, NULL, 'Climbing', 'Indifferent', 'Ran from ground to tree', 40.722966, -73.951987);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-14', 'Cinnamon', 'White', NULL, 'Above Ground, Specific Location', '3', 'in short tree', 'Climbing, Sitting in short tree', 'Indifferent', NULL, 40.723136, -73.951794);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-15', 'Gray', 'White', NULL, 'Above Ground, Specific Location', NULL, 'in tree', 'Eating', 'Indifferent', NULL, 40.723071, -73.951697);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-16', 'Cinnamon', 'Gray', NULL, 'Ground Plane, Specific Location', NULL, 'below park benches', 'Foraging, Jumping', 'Indifferent', 'Great jumper', 40.723006, -73.951655);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-17', 'Gray', 'Cinnamon, White', NULL, 'Above Ground', '9', NULL, 'Chilling', 'Indifferent', 'Perched on branch, just hanging out', 40.722962, -73.951752);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-18', 'Cinnamon', 'Cinnamon', NULL, 'Above Ground', '14', NULL, 'Hanging', 'Indifferent', 'Perched on branch', 40.722603, -73.951449);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-19', 'Cinnamon', 'Gray, White', NULL, 'Above Ground', '20', NULL, 'Running, Climbing', NULL, 'Very small, climbed from one tree to another', 40.721247, -73.951609);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-20', 'Gray', 'Cinnamon, White', NULL, 'Above Ground', '75', NULL, 'Climbing', 'Indifferent', 'Small, on tree on branch, two others below it', 40.720606, -73.952769);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-21', 'Gray', 'Cinnamon, White', NULL, 'Above Ground', '15', NULL, 'Chasing, Climbing', 'Indifferent', 'Started in middle of tree, started chasing others up in branches, jumped from branch to branch', 40.720582, -73.952694);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-22', 'Gray', 'Cinnamon, White', NULL, 'Above Ground', '20', NULL, 'Climbing', 'Indifferent', 'One of three together on a tree', 40.720533, -73.95272);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-23', 'Gray', 'White', NULL, 'Above Ground', '20', NULL, 'Climbing', 'Indifferent', 'Jumped from one tree to next', 40.720488, -73.952806);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-24', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Eating, Foraging', 'Indifferent', 'Dog chased it up a tree', 40.720458, -73.954244);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-25', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Skittish to humans', NULL, 40.720018, -73.953442);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-26', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running, Foraging', 'Indifferent', 'Fast', 40.720026, -73.953652);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-27', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Eating (bread crumbs), Foraging', 'Indifferent', 'Near a lot of little birds', 40.719777, -73.952774);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-28', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', 'Running against fence', 40.720114, -73.952768);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-29', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Hanging out', 'Runs From', 'Standing at base of tree, then climbed up', 40.719944, -73.952505);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-30', 'Gray', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', NULL, 40.720448, -73.952521);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-31', 'Cinnamon', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Walking around bushes', 40.720412, -73.952353);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-32', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'A little on the robust side', 40.720372, -73.952326);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-33', 'Gray', 'Cinnamon', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Busy digging for something', 40.720749, -73.951891);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-34', 'Cinnamon', 'Cinnamon', NULL, 'Above Ground', '15', NULL, 'Sleeping (Dead?)', 'Indifferent', 'It almost looks dead. Eyes open, curled up into itself in a nook in a tree with #35.', 40.721181, -73.951255);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-35', 'Cinnamon', 'Cinnamon', NULL, 'Above Ground', '15', NULL, 'Sleeping (Dead?)', NULL, 'Curled up together with #34. One big furry ball of squirrel.', 40.721181, -73.951255);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-36', 'Cinnamon', 'Gray, Cinnamon', 'Reddish tail', 'Ground Plane', NULL, NULL, 'Eating (tortilla/chip)', NULL, 'Pretty fat', 40.72112, -73.95104);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-37', 'Gray', 'Gray', NULL, 'Ground Plane', NULL, NULL, 'Running', 'Indifferent', 'Turning around, trying to eat', 40.721315, -73.950943);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-38', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Eating', NULL, 'Sitting next to #39 and eating', 40.721258, -73.950799);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-39', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Eating', NULL, 'Sitting next to #38 and eating', 40.721217, -73.95077);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-40', 'Cinnamon', 'White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Indifferent', 'Fluffy', 40.721173, -73.950781);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-41', 'Cinnamon', 'Cinnamon', NULL, 'Above Ground', NULL, NULL, 'Running, Foraging', 'Indifferent', 'Skinny', 40.721161, -73.950732);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-42', 'Gray', 'Gray', NULL, 'Above Ground', NULL, NULL, 'Climbing', 'Indifferent', 'Clinging to tree', 40.721124, -73.950797);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-43', 'Gray', 'White', NULL, 'Above Ground', '10', NULL, 'Running, Chasing, Climbing', 'Indifferent', 'Playing with another squirrel in a tree', 40.721026, -73.950765);
INSERT INTO SquirrelData VALUES ('BROOKLYN', 'D', 'McCarren Park', 22, 'D-22-44', 'Gray', 'Cinnamon, White', NULL, 'Ground Plane', NULL, NULL, 'Foraging', 'Runs From', 'Ran very quickly', 40.719376, -73.952326);

-- Step 3: Verify the data
SELECT * FROM SquirrelData LIMIT 10;



SELECT PrimaryFurColor, COUNT(*) AS Count
FROM SquirrelData
WHERE PrimaryFurColor IS NOT NULL
GROUP BY PrimaryFurColor
ORDER BY Count DESC;


SELECT Location, COUNT(*) AS Count
FROM SquirrelData
WHERE Location IS NOT NULL
GROUP BY Location
ORDER BY Count DESC;

SELECT Activities, COUNT(*) AS Count
FROM SquirrelData
WHERE Activities IS NOT NULL
GROUP BY Activities
ORDER BY Count DESC;


SELECT InteractionsWithHumans, COUNT(*) AS Count
FROM SquirrelData
WHERE InteractionsWithHumans IS NOT NULL
GROUP BY InteractionsWithHumans
ORDER BY Count DESC;

SELECT 
    ROUND(SquirrelLatitude, 2) AS LatitudeGroup, 
    ROUND(SquirrelLongitude, 2) AS LongitudeGroup, 
    COUNT(*) AS Count
FROM SquirrelData
WHERE SquirrelLatitude IS NOT NULL AND SquirrelLongitude IS NOT NULL
GROUP BY LatitudeGroup, LongitudeGroup
ORDER BY Count DESC;

SELECT 
    AboveGroundHeight, 
    COUNT(*) AS Count
FROM SquirrelData
WHERE AboveGroundHeight IS NOT NULL
GROUP BY AboveGroundHeight
ORDER BY Count DESC;


SELECT 
    OtherNotesObservations, 
    COUNT(*) AS Count
FROM SquirrelData
WHERE OtherNotesObservations IS NOT NULL
GROUP BY OtherNotesObservations
ORDER BY Count DESC;
