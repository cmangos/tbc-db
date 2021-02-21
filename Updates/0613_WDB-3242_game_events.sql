-- Make Events Happen in this year also
UPDATE game_event_time SET end_time = '2050-09-20 00:00:00' WHERE end_time = '2020-09-20 00:00:00';
UPDATE game_event_time SET end_time = '2050-12-29 22:00:00' WHERE end_time = '2020-12-29 22:00:00';
UPDATE game_event_time SET end_time = '2050-12-30 22:00:00' WHERE end_time = '2020-12-30 22:00:00';
UPDATE game_event_time SET end_time = '2050-12-30 23:00:00' WHERE end_time = '2020-12-30 23:00:00';
UPDATE game_event_time SET end_time = '2050-12-31 08:00:00' WHERE end_time = '2020-12-31 08:00:00';
UPDATE game_event_time SET end_time = '2050-12-31 22:59:59' WHERE end_time = '2020-12-31 22:59:59';
UPDATE game_event_time SET end_time = '2050-01-01 01:00:00' WHERE end_time = '2025-01-01 01:00:00';
UPDATE game_event_time SET end_time = '2050-12-30 22:00:00' WHERE end_time = '2030-12-30 22:00:00';
UPDATE game_event_time SET end_time = '2050-12-31 23:59:00' WHERE end_time = '2030-12-31 23:59:00';
