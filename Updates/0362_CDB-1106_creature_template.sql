-- Fixed stats of "trash" NPCs in Blackrock Depths
UPDATE `creature_template` SET `DamageMultiplier`='4' WHERE `entry`='8894'; -- Anvilrage Medic
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8896'; -- Shadowforge Peasant
UPDATE `creature_template` SET `PowerMultiplier`='2', `ArmorMultiplier`='1' WHERE `entry`='8899'; -- Doomforge Dragoon
UPDATE `creature_template` SET `DamageMultiplier`='1.75' WHERE `entry`='8900'; -- Doomforge Arcanasmith (114-158)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8902'; -- Shadowforge Citizen
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='8903'; -- Anvilrage Captain
UPDATE `creature_template` SET `DamageMultiplier`='1.75', `ArmorMultiplier`='1' WHERE `entry`='8904'; -- Shadowforge Senator (117-163)
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='3.6' WHERE `entry`='8905'; -- Warbringer Construct
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='3.6' WHERE `entry`='8906'; -- Ragereaver Golem (1600 attackspeed, not 2000)
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='8907'; -- Wrath Hammer Construct (CreatureType 9)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8909'; -- Fireguard
UPDATE `creature_template` SET `MaxLevel`='54', `PowerMultiplier`='2', `DamageMultiplier`='3.6' WHERE `entry`='8911'; -- Fireguard Destroyer
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8912'; -- Twilight's Hammer Torturer
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8913'; -- Twilight Emissary
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8915'; -- Twilight's Hammer Ambassador
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='8916'; -- Arena Spectator
UPDATE `creature_template` SET `MinLevel`='53', `MaxLevel`='54', `DamageMultiplier`='1.75' WHERE `entry`='8920'; -- Weapon Technician
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8921'; -- Bloodhound
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8922'; -- Bloodhound Mastiff
UPDATE `creature_template` SET `DamageMultiplier`='3.7', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1.25' WHERE `entry`='8926'; -- Deep Stinger
UPDATE `creature_template` SET `DamageMultiplier`='1.6', `MeleeBaseAttackTime`='2000' WHERE `entry`='8927'; -- Dark Screecher
UPDATE `creature_template` SET `DamageMultiplier`='3', `MeleeBaseAttackTime`='2000' WHERE `entry`='8928'; -- Burrowing Thundersnout
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='8932'; -- Borer Beetle
UPDATE `creature_template` SET `DamageMultiplier`='3', `ArmorMultiplier`='1' WHERE `entry`='8933'; -- Cave Creeper
UPDATE `creature_template` SET `CreatureTypeFlags`='0', `PowerMultiplier`='2' WHERE `entry`='9023'; -- Marshal Windsor
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='4', `MeleeBaseAttackTime`='2000', `MinLootGold`='147', `MaxLootGold`='737' WHERE `entry`='9398'; -- Twilight's Hammer Executioner
UPDATE `creature_template` SET `PowerMultiplier`='2', `MinLootGold`='147', `MaxLootGold`='737' WHERE `entry`='9445'; -- Dark Guard
UPDATE `creature_template` SET `UnitFlags`='320', `CreatureTypeFlags`='0', `PowerMultiplier`='2', `DamageMultiplier`='7.5' WHERE `entry`='9537'; -- Hurley Blackbreath (unitflags handled in npc_hurley_blackbreath)
UPDATE `creature_template` SET `UnitFlags`='320', `PowerMultiplier`='2', `MinLootGold`='147', `MaxLootGold`='737' WHERE `entry`='9541'; -- Blackbreath Crony (unitflags handled in npc_hurley_blackbreath)
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='3.5' WHERE `entry`='9554'; -- Hammered Patron
UPDATE `creature_template` SET `MinLevel`='52', `MaxLevel`='52', `CreatureTypeFlags`='0', `HealthMultiplier`='8', `MinLevelHealth`='18968', `MaxLevelHealth`='18968', `PowerMultiplier`='2', `DamageMultiplier`='7.5', `MinMeleeDmg`='54', `MaxMeleeDmg`='72', `MeleeAttackPower`='214' WHERE `entry`='9682'; -- Marshal Reginald Windsor
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='9956'; -- Shadowforge Flame Keeper
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='10043'; -- Ribbly's Crony

