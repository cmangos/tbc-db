DELETE FROM string_id WHERE Id IN(17611) AND Name = 'SHH_WARCHIEFS_PORTAL';
INSERT INTO string_id(Id, Name) VALUES
(17611, 'SHH_WARCHIEFS_PORTAL');
UPDATE creature_template SET StringId1=17611 WHERE entry IN(17611);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10323 WHERE Id IN(17614);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10324 WHERE Id IN(13863);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10325 WHERE Id IN(17617);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10326 WHERE Id IN(17619);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10327 WHERE Id IN(17620);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=10328 WHERE Id IN(17621);
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=0 WHERE Id IN(18367);


