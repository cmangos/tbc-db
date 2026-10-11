-- Update DamageMultiplier and DamageVariance to match with newest core changes
-- Damage Values taken from WoW Bestiary
-- Also adding the outcome (on 0 armor) with our current calculation after rounding

-- ------------
-- Gruuls Lair
-- ------------


-- Lair Brute - 19389
-- Level 72 - UnitClass 1 - Bestiary Min: 7842 Bestiary Max 11090
-- Calculated DmgMultiplier: 32.2967
-- Calculated DMG Variance: 0.3716
-- Outcome after rounding
-- MinDMG: 7,849.59
-- MaxDMG: 11,084.32
UPDATE creature_template SET DamageMultiplier = '32.3', DamageVariance = '0.37' WHERE entry = 19389;

-- Gronn-Priest - 21350
-- Level 72 - UnitClass 2 - Bestiary Min: 6304 Bestiary Max 8907
-- Calculated DmgMultiplier: 26.0633
-- Calculated DMG Variance: 0.3690
-- Outcome after rounding
-- MinDMG: 6,285.13
-- MaxDMG: 8,888.93
UPDATE creature_template SET DamageMultiplier = '26', DamageVariance = '0.37' WHERE entry = 21350;

-- Kiggler the Crazed - 18835
-- Level 73 - UnitClass 2 - Bestiary Min: 6834 Bestiary Max 9653
-- Calculated DmgMultiplier: 27.8175
-- Calculated DMG Variance: 0.3688
-- Outcome after rounding
-- MinDMG: 6,825.17
-- MaxDMG: 9,651.47
UPDATE creature_template SET DamageMultiplier = '27.8', DamageVariance = '0.37' WHERE entry = 18835;

-- Blindeye the Seer - 18836
-- Level 73 - UnitClass 2 - Bestiary Min: 1724 Bestiary Max 2435
-- Calculated DmgMultiplier: 7.0172
-- Calculated DMG Variance: 0.3688
-- Outcome after rounding
-- MinDMG: 1,718.57
-- MaxDMG: 2,430.23
UPDATE creature_template SET DamageMultiplier = '7', DamageVariance = '0.37' WHERE entry = 18836;

-- Olm the Summoner - 18834
-- Level 73 - UnitClass 2 - Bestiary Min: 4101 Bestiary Max 5792
-- Calculated DmgMultiplier: 16.6918
-- Calculated DMG Variance: 0.3687
-- Outcome after rounding
-- MinDMG: 4,100.01
-- MaxDMG: 5,797.82
UPDATE creature_template SET DamageMultiplier = '16.7', DamageVariance = '0.37' WHERE entry = 18834;


-- Wild Fel Stalker - 18847
-- Level 73 - UnitClass 1 - Bestiary Min: 1474 Bestiary Max 2084
-- Calculated DmgMultiplier: 5.9773
-- Calculated DMG Variance: 0.3714
-- Outcome after rounding
-- MinDMG: 1,480.77
-- MaxDMG: 2,090.76
UPDATE creature_template SET DamageMultiplier = '6', DamageVariance = '0.37' WHERE entry = 18847;


-- Krosh Firehand - 18832
-- Level 73 - UnitClass 2 - Bestiary Min: 4101 Bestiary Max 5792
-- Calculated DmgMultiplier: 16.6918
-- Calculated DMG Variance: 0.3687
-- Outcome after rounding
-- MinDMG: 4,100.01
-- MaxDMG: 5,797.82
UPDATE creature_template SET DamageMultiplier = '16.7', DamageVariance = '0.37' WHERE entry = 18832;

-- High King Maulgar
-- Level 73 - UnitClass 1 - Bestiary Min: 12214 Bestiary Max 17270
-- Calculated DmgMultiplier:  49.5316
-- Calculated DMG Variance: 0.3715
-- Outcome after rounding
-- MinDMG: 12,216.38
-- MaxDMG: 17,248.81
UPDATE creature_template SET DamageMultiplier = '49.5', DamageVariance = '0.37' WHERE entry = 18831;

-- Gruul the Dragonkiller
-- Level 73 - UnitClass 1 - Bestiary Min: 6904 Bestiary Max 9761
-- Calculated DmgMultiplier: 27.9963
-- Calculated DMG Variance: 0.3714
-- Outcome after rounding
-- MinDMG: 6,910.27
-- MaxDMG: 9,756.90
UPDATE creature_template SET DamageMultiplier = '28', DamageVariance = '0.37' WHERE entry = 19044;


-- -------------------
-- Magtheridon's Lair
-- -------------------

-- Hellfire Channeller - 17256
-- Level 73 - UnitClass 2 - Bestiary Min: 4926 Bestiary Max 6957
-- Calculated DmgMultiplier: 20.0494
-- Calculated DMG Variance: 0.3687
-- Outcome after rounding
-- MinDMG: 4,910.20
-- MaxDMG: 6,943.50
UPDATE creature_template SET DamageMultiplier = '20', DamageVariance = '0.37' WHERE entry = 17256;

-- Hellfire Warder - 18829
-- Level 72 - UnitClass 2 - Bestiary Min: 5335 Bestiary Max 7537
-- Calculated DmgMultiplier: 22.0555
-- Calculated DMG Variance: 0.3689
-- Outcome after rounding
-- MinDMG: 5,318.18
-- MaxDMG: 7,521.41
UPDATE creature_template SET DamageMultiplier = '22', DamageVariance = '0.37' WHERE entry = 18829;

-- Burning Abyssal - 17454
-- Level 70 - UnitClass 1 - Bestiary Min: 1009 Bestiary Max 1428
-- Calculated DmgMultiplier: 4.3052
-- Calculated DMG Variance: 0.3724
-- Outcome after rounding
-- MinDMG: 1,009.15
-- MaxDMG: 1,424.91
UPDATE creature_template SET DamageMultiplier = '4.3', DamageVariance = '0.37' WHERE entry = 17454;

-- Magtheridon - 17257
-- Level 73 - UnitClass 1 - Bestiary Min: 14604 Bestiary Max 20649
-- Calculated DmgMultiplier: 59.2232
-- Calculated DMG Variance: 0.3715
-- Outcome after rounding
-- MinDMG: 14,610.29
-- MaxDMG: 20,628.88
UPDATE creature_template SET DamageMultiplier = '59.2', DamageVariance = '0.37' WHERE entry = 17257;