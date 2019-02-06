DELETE FROM spell_affect WHERE entry IN(14082,21082) AND effectId IN(1,2);
INSERT INTO spell_affect VALUES
-- Dirty Deeds
(14082,1,0x0000010F2682021E), -- applicable to vanilla but with trimmed mask
(14082,2,0x0000000000100100), -- applicable to vanilla
-- Seal of the Crusader
(21082,2,0x0000800000000000); -- not applicable to vanilla - patch 2.4.2


