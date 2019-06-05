-- Harkor
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23999;

-- Harkor's Cage
UPDATE gameobject_template SET faction=14, flags=2 WHERE entry=187378;

-- Harkor's Satchel
UPDATE gameobject_template SET faction=94, flags=16 WHERE entry=187021;

-- add equipment template which Harkor switches to during chest event
DELETE FROM creature_equip_template WHERE entry=23999;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(23999, 25140, 0, 0);

-- target for Zul'Aman - Crate Burst used by Harkor (Zul'Aman Exterior InvisMan)
-- already exists in spell_script_target

-- fix loot for Gold Coin objects (186633, 186634)
UPDATE gameobject_loot_template SET ChanceOrQuestChance=-100 WHERE entry=22604; -- make it so Copper Powder placeholder never drops 

-- amounts are estimations
UPDATE gameobject_template SET mingold=100000, maxgold=130000 WHERE entry=186633;
UPDATE gameobject_template SET mingold=150000, maxgold=180000 WHERE entry=186634;

-- fill in "UDB Missing US text" for Kraz (24024) - gossip menu 8881
UPDATE npc_text SET text0_0='Nevermind me, $r. $b$bKraz as good as dead. Leave now, $r, before bad trolls get you too.' WHERE id=11596;
-- unknown use (alternative for above text?): "This place reeks of death, stranger.$b$bYou must leave before you fill a cage like Kraz."

-- Kraz
UPDATE creature_template SET NpcFlags=1 WHERE entry=24024;

-- Kraz's Cage - correct starting flags
UPDATE gameobject_template SET flags=2 WHERE entry=187379;

-- Ashli
UPDATE creature_template SET NpcFlags=1 WHERE entry=24001;

-- Ashli's Bag
UPDATE gameobject_template SET faction=94, flags=16 WHERE entry=186672;

-- Ashli's Cage
UPDATE gameobject_template SET faction=14, flags=2 WHERE entry=187380;

-- replace more instances of "UDB Missing US text"
UPDATE npc_text SET text0_1='Oh hooray - you killed the bad troll just in time to save me from being helplessly slaughtered and having my innocent little soul enslaved and used to add power to their wicked scheme to take over Azeroth and seeing how you have risked your lives to free me from certain death I must repay your kindness regardless of who you are or where you may have come from so help me out of here and I will do my best to find some way to reward you....$b$b<Ashli takes a deep breath.>$b$bI hope you like candy....' WHERE id=11907;
UPDATE npc_text SET text0_1='I wanted to practice my spells on the bunnies outside my home to make my magic stronger so I could go and kill all the bad guys in Gnomeregan and let all the gnomes go back home but momma said I was too young to go on adventures but then I met Mister Budd and he told me that you\'re only as young as you feel and that I could come here with his friends and I would get all the practice I needed but then we got caught and put in the cages...$b$b<Ashli takes a deep breath.>$b$bAre you a real $r?' WHERE id=11584;

-- add missing Zul'Aman Exterior InvisMan target for Cosmetic - Ashli's Fireball 02 (43525) - other 2 Fireball spells already have it
DELETE FROM spell_script_target WHERE entry=43525;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(43525, 1, 23746, 0);


