DELETE FROM spell_script_target WHERE entry IN(30745,30741,30735);
INSERT INTO spell_script_target VALUES
(30745, 1, 17083, 0),
(30741, 1, 17083, 0),
(30735, 1, 17083, 0);

UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10262,EmoteIds=0 WHERE Id IN(15594);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10270,EmoteIds=0 WHERE Id IN(15589);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10272,EmoteIds=0 WHERE Id IN(15595);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10263,EmoteIds=11 WHERE Id IN(15569);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10264,EmoteIds=0 WHERE Id IN(15575);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10265,EmoteIds=11 WHERE Id IN(15573);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10266,EmoteIds=0 WHERE Id IN(15572);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10267,EmoteIds=0 WHERE Id IN(15579);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10268,EmoteIds=0 WHERE Id IN(15584);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10269,EmoteIds=0 WHERE Id IN(15582);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10259,EmoteIds=0 WHERE Id IN(14130);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10260,EmoteIds=11 WHERE Id IN(14132);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10261,EmoteIds=11 WHERE Id IN(14148);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10273,EmoteIds=0 WHERE Id IN(16863);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10271,EmoteIds=0 WHERE Id IN(16864);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10274,EmoteIds=0 WHERE Id IN(16865);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10275,EmoteIds=0 WHERE Id IN(16866);
UPDATE broadcast_text SET ChatTypeID=1, SoundEntriesID1=10276,EmoteIds=0 WHERE Id IN(16862);


