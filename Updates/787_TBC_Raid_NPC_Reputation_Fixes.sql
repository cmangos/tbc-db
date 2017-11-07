-- ================================================================================
-- ==========          TBC RAID NPC ON KILL REPUTATION GAINS          ==========
-- ================================================================================
-- ===================================
-- Karazhan
-- ===================================
-- Arcane Anomaly 16488 - (WOWHEAD SHOWS 8 REP BUT WOWWIKI SAYS 15)
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16488);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16488,967,0,7,0,8,0,0,0,0);

-- Arcane Protector 16504
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16504);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16504,967,0,7,0,30,0,0,0,0);

-- Arcane Watchman 16485
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16485);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16485,967,0,7,0,15,0,0,0,0);

-- Astral Flare 17096
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17096);

-- Astral Spark 17283
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17283);

-- Baron Rafe Dreuger 19874
DELETE FROM creature_onkill_reputation WHERE creature_id IN (19874);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(19874,967,0,7,0,15,0,0,0,0);

-- Baroness Dorothea Millstipe 19875
DELETE FROM creature_onkill_reputation WHERE creature_id IN (19875);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(19875,967,0,7,0,15,0,0,0,0);

-- Chaotic Sentience 16489
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16489);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16489,967,0,7,0,15,0,0,0,0);

-- Coldmist Stalker 16170
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16170);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16170,967,0,7,0,15,0,0,0,0);

-- Coldmist Widow 16171
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16171);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16171,967,0,7,0,15,0,0,0,0);

-- Concubine 16461
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16461);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16461,967,0,7,0,15,0,0,0,0);

-- Conjured Elemental 17167
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17167);

-- Demon Chains 17248
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17248);

-- Dreadbeast 16177
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16177);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16177,967,0,7,0,15,0,0,0,0);

-- Ethereal Spellfilcher 16545
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16545);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16545,967,0,7,0,30,0,0,0,0);

-- Ethereal Thief 16544
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16544);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16544,967,0,7,0,15,0,0,0,0);

-- Fiendish Imp 17267
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17267);

-- Fleshbeast 16595
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16595);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16595,967,0,7,0,30,0,0,0,0);

-- Ghastly Haunt 16481
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16481);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16481,967,0,7,0,15,0,0,0,0);

-- Ghostly Baker 16412
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16412);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16412,967,0,7,0,15,0,0,0,0);

-- Ghostly Philanthropist 16470
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16470);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16470,967,0,7,0,15,0,0,0,0);

-- Ghostly Steward 16414
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16414);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16414,967,0,7,0,15,0,0,0,0);

-- Greater Fleshbeast 16596
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16596);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16596,967,0,7,0,30,0,0,0,0);

-- Greater Shadowbat 16174
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16174);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16174,967,0,7,0,15,0,0,0,0);

-- Homunculus 16539
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16539);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16539,967,0,7,0,3,0,0,0,0);

-- Kil'rek 17229
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17229);

-- Lady Catriona Von'Indi 19872
DELETE FROM creature_onkill_reputation WHERE creature_id IN (19872);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(19872,967,0,7,0,15,0,0,0,0);

-- Lady Keira Berrybuck 17007
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17007);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(17007,967,0,7,0,15,0,0,0,0);

-- Lord Crispin Ference 19873
DELETE FROM creature_onkill_reputation WHERE creature_id IN (19873);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(19873,967,0,7,0,15,0,0,0,0);

-- Lord Robin Daris 19876
DELETE FROM creature_onkill_reputation WHERE creature_id IN (19876);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(19876,967,0,7,0,15,0,0,0,0);

-- Magical Horror 16529
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16529);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16529,967,0,7,0,15,0,0,0,0);

-- Mana Feeder 16491
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16491);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16491,967,0,7,0,3,0,0,0,0);

-- Mana Warp 16530
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16530);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16530,967,0,7,0,15,0,0,0,0);

-- Night Mistress 16460
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16460);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16460,967,0,7,0,15,0,0,0,0);

-- Phantom Attendant 16406
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16406);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16406,967,0,7,0,15,0,0,0,0);

-- Phantom Guardsman 16425
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16425);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16425,967,0,7,0,15,0,0,0,0);

-- Phantom Guest 16409
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16409);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16409,967,0,7,0,3,0,0,0,0);

-- Phantom Hound 17067
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17067);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(17067,967,0,5,0,15,0,0,0,0);

-- Phantom Stagehand 16472
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16472);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16472,967,0,7,0,15,0,0,0,0);

-- Phantom Valet 16408
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16408);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16408,967,0,7,0,15,0,0,0,0);

-- Phase Hound 16178
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16178);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16178,967,0,7,0,15,0,0,0,0);

-- Restless Skeleton 17261
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17261);

-- Shadow Pillager 16540
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16540);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16540,967,0,7,0,15,0,0,0,0);

-- Shadowbat 16173
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16173);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16173,967,0,7,0,15,0,0,0,0);

-- Shadowbeast 16176
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16176);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16176,967,0,7,0,15,0,0,0,0);

-- Skeletal Usher 16471
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16471);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16471,967,0,7,0,15,0,0,0,0);

-- Skeletal Waiter 16415
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16415);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16415,967,0,7,0,15,0,0,0,0);

-- Sorcerous Shade 16526
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16526);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16526,967,0,7,0,15,0,0,0,0);

-- Spectral Apprentice 16389
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16389);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16389,967,0,7,0,15,0,0,0,0);

-- Spectral Charger 15547
DELETE FROM creature_onkill_reputation WHERE creature_id IN (15547);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(15547,967,0,7,0,15,0,0,0,0);

-- Spectral Chef 16411
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16411);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16411,967,0,7,0,15,0,0,0,0);

-- Spectral Patron 16468
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16468);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16468,967,0,7,0,15,0,0,0,0);

-- Spectral Performer 16473
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16473);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16473,967,0,7,0,15,0,0,0,0);

-- Spectral Retainer 16410
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16410);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16410,967,0,7,0,15,0,0,0,0);

-- Spectral Sentry 16424
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16424);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16424,967,0,7,0,15,0,0,0,0);

-- Spectral Servant 16407
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16407);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16407,967,0,7,0,15,0,0,0,0);

-- Spectral Stable Hand 15551
DELETE FROM creature_onkill_reputation WHERE creature_id IN (15551);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(15551,967,0,7,0,15,0,0,0,0);

-- Spectral Stallion 15548
DELETE FROM creature_onkill_reputation WHERE creature_id IN (15548);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(15548,967,0,7,0,15,0,0,0,0);

-- Spell Shade 16525
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16525);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16525,967,0,7,0,15,0,0,0,0);

-- Syphoner 16492
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16492);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16492,967,0,7,0,1,0,0,0,0);

-- Trapped Soul 16482
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16482);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16482,967,0,7,0,15,0,0,0,0);

-- Vampiric Shadowbat 16175
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16175);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16175,967,0,7,0,15,0,0,0,0);

-- Wanton Hostess 16459
DELETE FROM creature_onkill_reputation WHERE creature_id IN (16459);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(16459,967,0,7,0,15,0,0,0,0);



-- ===================================
-- Gruul's Lair
-- ===================================
-- Gruul the Dragonkiller 19044
DELETE FROM creature_onkill_reputation WHERE creature_id IN (19044);

-- High King Maulgar 18831
DELETE FROM creature_onkill_reputation WHERE creature_id IN (18831);

-- Blindeye the Seer 18836
DELETE FROM creature_onkill_reputation WHERE creature_id IN (18836);

-- Gronn-Priest 21350
DELETE FROM creature_onkill_reputation WHERE creature_id IN (21350);

-- Kiggler the Crazed 18835
DELETE FROM creature_onkill_reputation WHERE creature_id IN (18835);

-- Krosh Firehand 18832
DELETE FROM creature_onkill_reputation WHERE creature_id IN (18832);

-- Lair Brute 19389
DELETE FROM creature_onkill_reputation WHERE creature_id IN (19389);

-- Olm the Summoner 18834
DELETE FROM creature_onkill_reputation WHERE creature_id IN (18834);

-- Wild Fel Stalker 18847
DELETE FROM creature_onkill_reputation WHERE creature_id IN (18847);



-- ===================================
-- Magtheridon's Lair
-- ===================================
-- Magtheridon 17257
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17257);

-- Burning Abyssal 17454
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17454);

-- Hellfire Channeler 17256
DELETE FROM creature_onkill_reputation WHERE creature_id IN (17256);

-- Hellfire Warder 18829
DELETE FROM creature_onkill_reputation WHERE creature_id IN (18829);










