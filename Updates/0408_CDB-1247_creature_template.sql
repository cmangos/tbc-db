-- attacktimers were corrupted, damage far too high, but again classicmangos has no immunities on bosses
UPDATE `creature_template` SET `PowerMultiplier`='1.5', `DamageMultiplier`='3.6', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1.25' WHERE `entry`='11451'; -- Wildspawn Satyr (6D) (1.24466A)
UPDATE `creature_template` SET `PowerMultiplier`='1.5', `DamageMultiplier`='3.7', `MeleeBaseAttackTime`='1500', `ArmorMultiplier`='1' WHERE `entry`='11452'; -- Wildspawn Rogue (4.7D) (0.992899A)
UPDATE `creature_template` SET `DamageMultiplier`='3.7', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1' WHERE `entry`='11453'; -- Wildspawn Trickster (6.3D) (0.99344A)
UPDATE `creature_template` SET `PowerMultiplier`='1.5', `DamageMultiplier`='3.6', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1' WHERE `entry`='11454'; -- Wildspawn Betrayer (6D) (0.992486A)
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1' WHERE `entry`='11455'; -- Wildspawn Felsworn (7.1D) (0.991696A)
UPDATE `creature_template` SET `PowerMultiplier`='1.5', `DamageMultiplier`='3.6', `MeleeBaseAttackTime`='1500' WHERE `entry`='11456'; -- Wildspawn Shadowstalker (4.6D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='3.7', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1' WHERE `entry`='11457'; -- Wildspawn Hellcaller (6.3D) (0.991618A)
UPDATE `creature_template` SET `DamageMultiplier`='0.5', `MechanicImmuneMask`='1' WHERE `entry`='11460'; -- Alzzin's Minion (0.27D) (1A) - delete his corrupted loot in classicmangos
UPDATE `creature_template` SET `DamageMultiplier`='3.8', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1.5', `ResistanceFire`='-58' WHERE `entry`='11461'; -- Warpwood Guardian (6.5D) (1.48529A)
UPDATE `creature_template` SET `PowerMultiplier`='1.5', `DamageMultiplier`='3.5', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1.25', `ResistanceFire`='-55' WHERE `entry`='11462'; -- Warpwood Treant (6D) (1.24457A)
UPDATE `creature_template` SET `DamageMultiplier`='3.6', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1.25', `ResistanceFire`='-56' WHERE `entry`='11464'; -- Warpwood Tangler (6D) (1.24268A)
UPDATE `creature_template` SET `PowerMultiplier`='1.5', `DamageMultiplier`='3.8', `MeleeBaseAttackTime`='2500', `ArmorMultiplier`='1.25', `ResistanceFire`='-58' WHERE `entry`='11465'; -- Warpwood Stomper (8D) (1.24454A)
UPDATE `creature_template` SET `DamageMultiplier`='6.5', `MeleeBaseAttackTime`='2000' WHERE `entry`='11490'; -- Zevrim Thornhoof (11D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2000' WHERE `entry`='11491'; -- Old Ironbark (6D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='5.5', `MeleeBaseAttackTime`='1300' WHERE `entry`='11492'; -- Alzzin the Wildshaper (6D) (1A)
UPDATE `creature_template` SET `PowerMultiplier`='1.5', `DamageMultiplier`='6', `MeleeBaseAttackTime`='2500' WHERE `entry`='13021'; -- Warpwood Crusher (13D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='0.75', `MeleeBaseAttackTime`='2000' WHERE `entry`='13022'; -- Whip Lasher (1.03D) (1A)
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='6', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1' WHERE `entry`='13196'; -- Phase Lasher (10D) (0.991746A)
UPDATE `creature_template` SET `DamageMultiplier`='6', `MeleeBaseAttackTime`='2000' WHERE `entry`='13197'; -- Fel Lash (10D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2000' WHERE `entry`='13276'; -- Wildspawn Imp (1.4D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='6.5', `MeleeBaseAttackTime`='2000' WHERE `entry`='13280'; -- Hydrospawn (11D) (1A)
UPDATE `creature_template` SET `PowerMultiplier`='1.5', `DamageMultiplier`='6', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1', `ResistanceFire`='0', `ResistanceFrost`='0', `ResistanceNature`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `entry`='13285'; -- Death Lash (10D) (0.99214A) 58,58,58,290,58
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2000', `MechanicImmuneMask`='1' WHERE `entry`='14241'; -- Ironbark the Redeemed (1.7D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='6', `MeleeBaseAttackTime`='2000' WHERE `entry`='14327'; -- Lethtendris (10D) (1A)
UPDATE `creature_template` SET `DamageMultiplier`='4', `MeleeBaseAttackTime`='2000' WHERE `entry`='14349'; -- Pimgib (7D) (1A)
UPDATE `creature_template` SET `Faction`='16', `SpeedWalk`=(2.5/2.5), `SpeedRun`=(13/7), `DamageMultiplier`='1', `DamageSchool`='4', `MeleeBaseAttackTime`='2000', `MechanicImmuneMask`='1', `SchoolImmuneMask`='16' WHERE `entry`='14350'; -- Hydroling (0.275D) (1A) - 2009-05-14-01-50_9835_MIHASYA.sqlite (speed wrong)
UPDATE `creature_template` SET `DamageMultiplier`='4', `MeleeBaseAttackTime`='2000' WHERE `entry`='14354'; -- Pusillin (7D) (1A)
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16045'; -- Isalien Trigger (1D) (1A)

-- https://github.com/cmangos/classic-db/commit/46ed68020a2ce559ba2ca0f612cc4d47961a29c4
UPDATE `creature_template` SET `DamageMultiplier`='6', `MeleeBaseAttackTime`='2600', `MechanicImmuneMask`='8388624' WHERE `entry`='16097'; -- Isalien (13.6D) (1A)
UPDATE `creature_template` SET `PowerMultiplier`='15' WHERE `entry`='16098'; -- Empyrean (6D) (1A)

