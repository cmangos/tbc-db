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

-- Negaton Screamer
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry IN (20875, 21604);

-- Negaton Warp-Master
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry IN (20873, 21605);

-- Ereder Deathbringer
-- WalkSpeed: 2.22221994400024414
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '0.88', SpeedRun = '1.428' WHERE entry IN (20880, 21594);

-- Ereder Soul-Eater
-- WalkSpeed: 2.22221994400024414
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '0.88', SpeedRun = '1.428' WHERE entry IN (20879, 21595);


-- Unbound Devastator
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry IN (20881, 21619);

-- Spiteful Temptress
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry IN (20883, 21615);

-- Skulking Witch
-- WalkSpeed: 2.5
-- RunSpeed: 10
UPDATE creature_template SET SpeedWalk = '1', SpeedRun = '1.428' WHERE entry IN (20882, 21613);