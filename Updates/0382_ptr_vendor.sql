-- Flaskataur 23405
-- Summoned by item Flaskataur's Lamp 35721
UPDATE creature_template SET NpcFlags=NpcFlags|128|256|512|1024|2048|4096 WHERE Entry=23405;

-- https://i32.photobucket.com/albums/d25/Gamax/Flask.jpg
DELETE FROM npc_vendor WHERE entry=23405;
INSERT INTO npc_vendor (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(23405, 32762, 0, 0, 1, 0, 0, 'Rulkster''s Brain Juice'),
(23405, 32763, 0, 0, 2, 0, 0, 'Rulkster''s Secret Sauce'),
(23405, 32764, 0, 0, 3, 0, 0, 'Flaskataur''s Celestial Brew'),
(23405, 32765, 0, 0, 4, 0, 0, 'Flaskataur''s Tears'),
(23405, 32766, 0, 0, 5, 0, 0, 'Flaskataur''s Flask of Flaskocity'),
(23405, 32767, 0, 0, 6, 0, 0, 'Flaskataur''s Flask of Pretty Good Power'),
(23405, 32760, 0, 0, 7, 0, 0, 'The Macho Gnome''s Arrow'),
(23405, 32761, 0, 0, 8, 0, 0, 'The Sarge''s Bullet'),
(23405, 6265, 0, 0, 9, 0, 0, 'Soul Shard'),
(23405, 22018, 0, 0, 10, 0, 0, 'Conjured Glacier Water');

-- The Rulkster
UPDATE creature_template SET NpcFlags=NpcFlags|128|512, Faction=35 WHERE Entry=23151;
DELETE FROM npc_vendor WHERE entry=23151;
INSERT INTO npc_vendor (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(23151, 32762, 0, 0, 1, 0, 0, 'Rulkster''s Brain Juice'),
(23151, 32763, 0, 0, 2, 0, 0, 'Rulkster''s Secret Sauce');
