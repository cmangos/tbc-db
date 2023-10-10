-- Karazhan | Maiden of Virtue bct
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=9204,EmoteId1=0 WHERE Id IN(15079); 
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=9313,EmoteId1=0 WHERE Id IN(15080);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=9208,EmoteId1=0 WHERE Id IN(13396);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=9206,EmoteId1=0 WHERE Id IN(15081); 

DELETE FROM creature_spell_list WHERE Id = 1645701;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1645701, 1, 29511, 0, 0, 0, 100, 0, 42000, 44000, 28000, 36000, "Maiden of Virtue - Repetence"),
(1645701, 2, 29522, 0, 108, 0, 100, 0, 8000, 14000, 12000, 20000, "Maiden of Virtue - Holy Fire - random player non tank not in melee"),
(1645701, 3, 32445, 0, 100, 0, 100, 0, 15000, 25000, 25000, 35000, "Maiden of Virtue - Holy Wrath - random player"),
(1645701, 4, 29512, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, "Maiden of Virtue - Holy Ground");

DELETE FROM creature_spell_list_entry WHERE Id = 1645701;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1645701, "Karazhan - Maiden of Virtue", 0, 0);

UPDATE creature_template SET SpellList = '1645701' WHERE entry = '16457';

