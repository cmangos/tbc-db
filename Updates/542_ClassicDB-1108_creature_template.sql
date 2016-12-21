-- Fixed stats of boss NPCs in Blackrock Depths

-- Lord Roccor
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `ResistanceFire`='153', `ResistanceNature`='153', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `Entry`='9025';

-- Houndmaster Grebmar
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72' WHERE `Entry`='9319';

-- High Interrogator Gerstahn
UPDATE `creature_template` SET `CreatureTypeFlags`='72' WHERE `Entry`='9018';

-- High Justice Grimstone
UPDATE `creature_template` SET `UnitFlags`='832', `DynamicFlags`='0', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='10096';

-- Anub'shiah [UNKNOWN SWINGTIMER]

-- Eviscerator [UNKNOWN SWINGTIMER]

-- Gorosh the Dervish [UNKNOWN SWINGTIMER]

-- Grizzle [UNKNOWN SWINGTIMER]

-- Hedrum the Creeper
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2400', `RangedBaseAttackTime`='2400' WHERE `Entry`='9032';

-- Ok'thor the Breaker
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1.6', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='9030';

-- Pyromancer Loregrain

-- Warder Stilgiss
UPDATE `creature_template` SET `CreatureTypeFlags`='72' WHERE `Entry`='9041';

-- Verek
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72' WHERE `Entry`='9042';

-- Watchman Doomgrip
UPDATE `creature_template` SET `FactionAlliance`='54', `FactionHorde`='54', `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='9476';

-- Dark Keeper Bethek
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9437';

-- Dark Keeper Ofgut
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9438';

-- Dark Keeper Pelver
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9441';

-- Dark Keeper Uggel
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9442';

-- Dark Keeper Vorfalk
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9443';

-- Dark Keeper Zimrel
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='9439';

-- Fineous Darkvire 

-- Lord Incendius
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `Entry`='9017';









-- Bael'Gar
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2400', `RangedBaseAttackTime`='2400' WHERE `Entry`='9016';

-- General Angerforge
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='1800', `RangedBaseAttackTime`='1800' WHERE `Entry`='9033';

-- Golem Lord Argelmach
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `Entry`='8983';

-- Ribbly Screwspigot

-- Hurley Blackbreath [NO DAMAGE CALC - MISSING IN BESTIARY]
UPDATE `creature_template` SET `FactionAlliance`='54', `FactionHorde`='54', `UnitFlags`='33088', `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='9537';

-- Phalanx
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `MovementType`='1' WHERE `Entry`='9502';

-- Plugger Spazzring [NO DAMAGE CALC - UNKNOWN VARIANCE FORMULAR]
	
-- Ambassador Flamelash
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9156';

-- Panzor the Invincible
UPDATE `creature_template` SET `FactionAlliance`='54', `FactionHorde`='54', `NpcFlags`='32832', `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `MovementType`='1' WHERE `Entry`='8923';

-- Doom'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9039';

-- Dope'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9040';

-- Gloom'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9037';

-- Anger'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9035';

-- Hate'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9034';

-- Vile'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9036';

-- Seeth'rel
UPDATE `creature_template` SET `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9038';

-- Magmus [ALREADY DONE]

-- Emperor Dagran Thaurissan
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `MeleeBaseAttackTime`='2000' WHERE `Entry`='9019';

-- Christmas Emperor Dagran Thaurissan
UPDATE `creature_template` SET `FactionAlliance`='54', `FactionHorde`='54', `Scale`='0', `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1' WHERE `Entry`='15775';

-- Princess Moira Bronzebeard
UPDATE `creature_template` SET  `MeleeBaseAttackTime`='2000' WHERE `Entry`='8929';

-- High Priestess of Thaurissan
UPDATE `creature_template` SET `UnitFlags`='32832', `CreatureTypeFlags`='72', `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE `Entry`='10076';

-- Theldren [UNKNOWN SWINGTIMER]

-- Lefty [UNKNOWN SWINGTIMER]

-- Rotfang [UNKNOWN SWINGTIMER]

-- Malgen Longspear [UNKNOWN SWINGTIMER]

-- Gnashjaw [UNKNOWN SWINGTIMER]

-- Va'jashni [UNKNOWN SWINGTIMER]

-- Volida [UNKNOWN SWINGTIMER]

-- Snokh Blackspine [UNKNOWN SWINGTIMER]

-- Korv [UNKNOWN SWINGTIMER]

-- Rezznik [UNKNOWN SWINGTIMER]


