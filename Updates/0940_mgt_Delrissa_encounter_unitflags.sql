-- Correct UnitFlags & InhabitType for Priestess Delrissa, Apoko, Garaxxas, Warlord Salaris, Zelfan, Fizzle, Sliver, Kagani Nightstrike, Yazzai
UPDATE `creature_template` SET `InhabitType` = `InhabitType`|2, `UnitFlags` = 32768 WHERE `entry` IN (
24560,25560, -- Priestess Delrissa -- sniff
24553,25541, -- Apoko
24555,25555, -- Garaxxas
24559,25574, -- Warlord Salaris
24556,25579, -- Zelfan
24656,25553, -- Fizzle
24552,25564, -- Sliver
24557,25556, -- Kagani Nightstrike
24561,25578 -- Yazzai -- tdb confirmed
);

