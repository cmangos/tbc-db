-- To Legion Hold(q.10596) -H  (q.10563) -A - Update
-- communication device will despawn, to let correct see event with "Image of Warbringer Razuun"
 
DELETE FROM dbscripts_on_spell WHERE id = 37097; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(37097,0,15,48342,0,0,0,0,0,0,0,0,0,0,0,0,'stun'),
(37097,4,10,21633,61000,0,0,0,0,0,0,0,-3312.04,2948.81,171.12,4.83,'summon - Deathbringer Jovaan'),
(37097,5,40,0,0,184834,25737,7 | 0x10,0,0,0,0,0,0,0,0,'despawn object'),
(37097,5,40,0,0,184835,25738,7 | 0x10,0,0,0,0,0,0,0,0,'despawn object'),
(37097,57,8,21502,0,0,0,0,0,0,0,0,0,0,0,0,'q. completed'),
(37097,60,14,48342,0,0,0,0,0,0,0,0,0,0,0,0,'stun');

-- sync. gameobjcts with quest. 
UPDATE gameobject SET spawntimesecs = 60 WHERE id IN (184834,184835);


