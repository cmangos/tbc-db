-- Fix Gavis Greyshield 23941 giving Quest Credit with s.42660 for q.27213
-- cant hit players when he executes it after turning friendly to players
-- q.11134 'The End Of The Deserters' - fix
-- Script corrected for Gavis Greyshield - command 4 fixed & (timers corrected <- https://www.youtube.com/watch?t=124&v=7USO7ySdSOg&feature=youtu.be)
DELETE FROM dbscripts_on_relay WHERE id = 10124;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(10124,0,0,15,42660,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Cast Gavis Greyshield Credit'), -- 2:05
(10124,0,1,4,46,784,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set UnitFlags 784'), -- 2:05 - 46 in classic/tbc
(10124,0,1,22,84,1,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set Faction 84'), -- 2:05
(10124,2000,0,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Set Equipment Slots'), -- 2:07
(10124,4000,0,0,0,0,0,0,0,0,2000001525,0,0,0,0,0,0,0,'Gavis Greyshield - Say'), -- 2:09
(10124,7000,0,0,0,0,0,0,0,0,2000001526,0,0,0,0,0,0,0,'Gavis Greyshield - Say'), -- 2:12
(10124,14000,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gavis Greyshield - Despawn Self'); -- 2:19

