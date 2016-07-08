-- ================================================
-- Fix Mineral Respawn Times in Small Special Areas - Close Together With Only a Few Spawns Generally - (So Longer Respawn Time to Prevent Abuse)
-- ================================================
UPDATE `gameobject` SET `spawntimesecs`=180, `animprogress`=255 WHERE id in (324,1610,1731,1732,1733,1734,1735,2040,2047,2653,19903,73940,73941,123309,123310,123848,165658,175404,177388,180215,181068,181069,181555,181556,181557,181569,185557,185877,188432,188699,189978,189979,189980,189981,191133,191844,191845,195036);
UPDATE gameobject SET spawntimesecs=600 WHERE id IN (73939,73940,73941,123309,123310,123848,177388);

