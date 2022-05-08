DELETE FROM `npc_text_broadcast_text` WHERE `Id` BETWEEN 25327 AND 25344;
DELETE FROM `npc_text_broadcast_Text` WHERE `Id` IN (10622, 10627);
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `BroadcastTextId0`) VALUES
(25327, 1, 25327),
(25328, 1, 25328),
(25329, 1, 25329),
(25330, 1, 25330),
(25331, 1, 25331),
(25332, 1, 25332),
(25333, 1, 25333),
(25334, 1, 25334),
(25335, 1, 25335),
(25336, 1, 25336),
(25337, 1, 25337),
(25338, 1, 25338),
(25339, 1, 25339),
(25340, 1, 25340),
(25341, 1, 25341),
(25342, 1, 25342),
(25343, 1, 25343),
(25344, 1, 25344),
(10622, 1, 10622),
(10627, 1, 10627);

DELETE FROM `gossip_menu` WHERE `entry` IN (26301, 26302, 26303);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(26301, 25329, 0),
(26302, 25328, 0),
(26303, 10622, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (26301, 26302, 26303);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_text`, `option_broadcast_text`, `option_id`, `action_menu_id`, `action_script_id`, `condition_id`, `npc_option_npcflag`) VALUES
(26301, 0, "Stable", 0, 14, 0, 0, 15, 1),
(26301, 1, "New Pet", 0, 1, 26302, 0, 15, 1),
(26301, 2, "Untrain Pet", 0, 1, 26303, 0, 15, 16),
(26302, 0, NULL, 25330, 1, -1, 2630701, 15, 1),
(26302, 1, NULL, 25331, 1, -1, 2630702, 15, 1),
(26302, 2, NULL, 25332, 1, -1, 2630703, 15, 1),
(26302, 3, NULL, 25333, 1, -1, 2630704, 15, 1),
(26302, 4, NULL, 25334, 1, -1, 2630705, 15, 1),
(26302, 5, NULL, 25335, 1, -1, 2630706, 15, 1),
(26302, 6, NULL, 25336, 1, -1, 2630707, 15, 1),
(26302, 7, NULL, 25337, 1, -1, 2630708, 15, 1),
(26302, 8, NULL, 25338, 1, -1, 2630709, 15, 1),
(26302, 9, NULL, 25339, 1, -1, 2630710, 15, 1),
(26302, 10, NULL, 25340, 1, -1, 2630711, 15, 1),
(26302, 11, NULL, 25341, 1, -1, 2630712, 15, 1),
(26302, 12, NULL, 25342, 1, -1, 2630713, 15, 1),
(26302, 13, NULL, 25343, 1, -1, 2630714, 15, 1),
(26302, 14, NULL, 25344, 1, -1, 2630715, 15, 1),
(26303, 0, NULL, 10627, 17, 0, 0, 15, 16);

DELETE FROM `dbscripts_on_gossip` WHERE `id` BETWEEN 2630701 AND 2630715;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `data_flags`, `comments`) VALUES
(2630701, 0, 15, 46717, 6, "Bat"),
(2630701, 500, 15, 46649, 6, "Bat Happiness"),
(2630702, 0, 15, 46718, 6, "Boar"),
(2630702, 500, 15, 46649, 6, "Boar Happiness"),
(2630703, 0, 15, 46719, 6, "Carrion Bird"),
(2630703, 500, 15, 46649, 6, "Carrion Bird Happiness"),
(2630704, 0, 15, 46720, 6, "Cat"),
(2630704, 500, 15, 46649, 6, "Cat Happiness"),
(2630705, 0, 15, 46721, 6, "Dragonhawk"),
(2630705, 500, 15, 46649, 6, "Dragonhawk Happiness"),
(2630706, 0, 15, 46722, 6, "Nether Ray"),
(2630706, 500, 15, 46649, 6, "Nether Ray Happiness"),
(2630707, 0, 15, 46723, 6, "Owl"),
(2630707, 500, 15, 46649, 6, "Owl Happiness"),
(2630708, 0, 15, 46724, 6, "Raptor"),
(2630708, 500, 15, 46649, 6, "Raptor Happiness"),
(2630709, 0, 15, 46725, 6, "Ravager"),
(2630709, 500, 15, 46649, 6, "Ravager Happiness"),
(2630710, 0, 15, 46726, 6, "Scorpid"),
(2630710, 500, 15, 46649, 6, "Scorpid Happiness"),
(2630711, 0, 15, 46727, 6, "Serpent"),
(2630711, 500, 15, 46649, 6, "Serpent Happiness"),
(2630712, 0, 15, 46728, 6, "Spider"),
(2630712, 500, 15, 46649, 6, "Spider Happiness"),
(2630713, 0, 15, 46716, 6, "Warp Stalker"),
(2630713, 500, 15, 46649, 6, "Warp Stalker Happiness"),
(2630714, 0, 15, 46729, 6, "Wind Serpent"),
(2630714, 500, 15, 46649, 6, "Wind Serpent Happiness"),
(2630715, 0, 15, 46730, 6, "Wolf"),
(2630715, 500, 15, 46649, 6, "Wolf Happiness");

DELETE FROM `spell_template` WHERE `Id`=24722;
INSERT INTO `spell_template` (`Id`, `SchoolMask`, `Category`, `CastUI`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `Stances`, `StancesNot`, `Targets`, `TargetCreatureType`, `RequiresSpellFocus`, `CasterAuraState`, `TargetAuraState`, `CastingTimeIndex`, `RecoveryTime`, `CategoryRecoveryTime`, `InterruptFlags`, `AuraInterruptFlags`, `ChannelInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `PowerType`, `ManaCost`, `ManaCostPerlevel`, `ManaPerSecond`, `ManaPerSecondPerLevel`, `RangeIndex`, `Speed`, `ModalNextSpell`, `StackAmount`, `Totem1`, `Totem2`, `Reagent1`, `Reagent2`, `Reagent3`, `Reagent4`, `Reagent5`, `Reagent6`, `Reagent7`, `Reagent8`, `ReagentCount1`, `ReagentCount2`, `ReagentCount3`, `ReagentCount4`, `ReagentCount5`, `ReagentCount6`, `ReagentCount7`, `ReagentCount8`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectBaseDice1`, `EffectBaseDice2`, `EffectBaseDice3`, `EffectDicePerLevel1`, `EffectDicePerLevel2`, `EffectDicePerLevel3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectChainTarget1`, `EffectChainTarget2`, `EffectChainTarget3`, `EffectItemType1`, `EffectItemType2`, `EffectItemType3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectPointsPerComboPoint1`, `EffectPointsPerComboPoint2`, `EffectPointsPerComboPoint3`, `SpellVisual`, `SpellIconID`, `ActiveIconID`, `SpellPriority`, `SpellName`, `SpellName2`, `SpellName3`, `SpellName4`, `SpellName5`, `SpellName6`, `SpellName7`, `SpellName8`, `Rank1`, `Rank2`, `Rank3`, `Rank4`, `Rank5`, `Rank6`, `Rank7`, `Rank8`, `ManaCostPercentage`, `StartRecoveryCategory`, `StartRecoveryTime`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `StanceBarOrder`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `MinFactionId`, `MinReputation`, `RequiredAuraVision`, `IsServerSide`, `AttributesServerside`) VALUES (24722, 0, 0, 0, 0, 0, 142606592, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 30, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 999999, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 455, 0, 50, 'Happy Pet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 133, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 1, 0);

UPDATE `creature_template` SET `GossipMenuId`=26301 WHERE `Entry`=26307;
UPDATE `creature_template` SET `NpcFlags`=4194321 WHERE `Entry`=26307;
UPDATE `creature_template` SET `TrainerClass`=3 WHERE `Entry`=26307;
UPDATE `creature_template` SET `TrainerType`=3 WHERE `Entry`=26307;
UPDATE `creature_template` SET `TrainerTemplateId`=2020 WHERE `Entry`=26307;