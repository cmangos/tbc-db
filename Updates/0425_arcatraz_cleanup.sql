-- Remove unused MovementScripts
DELETE FROM creature WHERE guid = 2086501;


-- Entropic Eye
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry IN (20868, 21593);


-- Death Watcher
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry IN (20867, 21591);

-- Soul Devourer
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry IN (20866, 21614);

-- Protean Horror
-- WalkSpeed: 3
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1.2', SpeedRun = '1.428' WHERE entry IN (20865, 21607);


-- Protean Nightmare
-- WalkSpeed: 3
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1.2', SpeedRun = '1.428' WHERE entry IN (20864, 21608);
