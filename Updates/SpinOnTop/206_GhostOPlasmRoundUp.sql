UPDATE gameobject_template SET type=1,data2=11796480 WHERE entry=177746; -- fix data based on evil-at-wow sniff
UPDATE creature_template SET FactionAlliance=15,FactionHorde=15 WHERE entry=11560; -- make mob neutral at start
DELETE FROM creature_template_addon WHERE entry=11560;
INSERT INTO creature_template_addon(entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES(11560,0,0,1,16,0,0,'18146'); -- chilling effect aura - guesswork from video based on icon


