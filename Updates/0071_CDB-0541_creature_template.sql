-- Lord Falconcrest and Otto (Stromgarde) had wrong 'Monster' faction
-- Thanks Neotmiren for pointing and fixing.
-- Source: YTDB
UPDATE `creature_template` SET `FactionAlliance` = 87, `FactionHorde` = 87 WHERE `Entry` IN (2597, 2599);
