/*
correct spell mask including all these seals and judgement
-- judgement -           0x0000000000800000
-- seal of vengeance -   0x0000000002000000
-- seal of the crusader  0x0000000000000200
-- seal of command       0x0000000002000000
-- seal of justice       0x0000000008000000
-- seal of wisdom        0x0000000008000000
-- seal of righteousness 0x0000000008000000
-- seal of light         0x0000000008000000
                         0x000000000A800200
*/
UPDATE spell_affect SET SpellFamilyMask=0x000000000A800200 WHERE entry IN(20101);


