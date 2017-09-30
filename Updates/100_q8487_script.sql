UPDATE quest_template SET RewSpellCast=0,CompleteScript=8487 WHERE entry=8487;

DELETE FROM db_script_string WHERE entry=2000008487;
INSERT INTO db_script_string(entry,content_default) VALUES(2000008487,'Such... dark... energy! How can this be possible?');

DELETE FROM dbscripts_on_quest_end WHERE id=8487;
INSERT INTO dbscripts_on_quest_end VALUES
(8487,0,29,2,0,0,0,0,0,0,0,0,0,0,0,0,'Corrupted Soil - Apprentice remove quest flag'),
(8487,0,15,29535,0,0,0,0,0,0,0,0,0,0,0,0,'Corrupted Soil - Apprentice cast spell Test Soil'),
(8487,2,0,0,0,0,0,0,2000008487,0,0,0,0,0,0,0,'Corrupted Soil - Apprentice say text'),
(8487,10,29,2,0,0,0,0,0,0,0,0,0,0,0,0,'Corrupted Soil - Apprentice add quest flag');



