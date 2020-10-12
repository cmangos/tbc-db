-- Add battleground heroic difficulty support for TBC - https://github.com/cmangos/mangos-tbc/commit/5b2720f565d40f8afe3199008aea38cef25dfc71
-- https://github.com/cmangos/wotlk-db/commit/e1a22770720ca19cbadbe429111f2355da63988b
-- ***  Alterac Valles updates ***

-- disable random movement for these creatures
-- UPDATE creature SET movementType=0, spawndist=0 WHERE id IN (12053,12050); -- integrated in instance file

-- spawn difficulty 3 data
-- UPDATE creature SET spawnMask = spawnMask|8 WHERE map=30; -- integrated in instance file
-- UPDATE gameobject SET spawnMask = spawnMask|8 WHERE map=30; -- integrated in instance file

-- missing gossips
-- Stormpike Herald
UPDATE `creature_template` SET `GossipMenuId`=4942 WHERE `Entry`=11997;
DELETE FROM `gossip_menu` WHERE `entry`=4942;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(4942, 8900);
DELETE FROM `npc_text` WHERE `ID`=8900;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(8900, 'Soldier! You are now in the middle of the battle for Alterac Valley. We don\'t have a lot of time, so let me give you the basics real quick.$B$BDrek\'thar is your main goal. He needs to die. But before you can get to him, you need to peel away the layers, as you would an onion.$B$BYou will want to hunt down the Captain, Galvangar they call him. He\'s a real tough lad, but he needs to fall. His presence bolsters the morale. When the Horde shall see his demise, our victory will surely be ripe for the taking.');

-- Frostwolf Herald
UPDATE `creature_template` SET `NpcFlags`=`NpcFlags`|1, `GossipMenuId`=4947 WHERE `Entry`=11998;
DELETE FROM `gossip_menu` WHERE `entry`=4947;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(4947, 8905);
DELETE FROM `npc_text` WHERE `ID`=8905;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(8905, 'Soldier! You are now in the middle of the battle for Alterac Valley. We don\'t have a lot of time, so let me give you the basics real quick.$B$BVanndar is your main goal. He needs to die. But before you can get to him, you need to peel away the layers, as you would an onion.$B$BYou will want to hunt down the Captain, Balinda they call her. She\'s a real tough gal, but she needs to fall. Her presencebolsters the morale. When the Horde shall see her head upon a pike, the victory will be ours.');

-- *** Fix broken creature templates

-- Grimtooth 603,22555
UPDATE creature_template SET HeroicEntry = 22555 WHERE entry = 603;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22555;

-- Zora Guthrek
UPDATE creature_template SET HeroicEntry = 22661 WHERE entry = 2225;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 2225;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22661;

-- Grelkor
UPDATE creature_template SET HeroicEntry = 22650 WHERE entry = 3343;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 3343;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22650;

-- Rarck
UPDATE creature_template SET HeroicEntry = 22654 WHERE entry = 3625;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 3625;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22654;

-- Brogus Thunderbrew
UPDATE creature_template SET HeroicEntry = 22646 WHERE entry = 4255;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 4255;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22646;

-- Lana Thunderbrew
UPDATE creature_template SET HeroicEntry = 22653 WHERE entry = 4257;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 4257;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22653;

-- Jonivera Farmountain
UPDATE creature_template SET HeroicEntry = 22651 WHERE entry = 5134;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 5134;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22651;

-- Svalbrad Farmountain
UPDATE creature_template SET HeroicEntry = 22659 WHERE entry = 5135;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 5135;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22659;

-- Kurdrum Barleybeard
UPDATE creature_template SET HeroicEntry = 22652 WHERE entry = 5139;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 5139;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22652;

-- Yaelika Farclaw
UPDATE creature_template SET HeroicEntry = 22660 WHERE entry = 10364;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 10364;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22660;

-- Shrye Ragefist
UPDATE creature_template SET HeroicEntry = 22655 WHERE entry = 10367;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 10367;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22655;

-- Frostwolf
UPDATE creature_template SET HeroicEntry = 22737 WHERE entry = 10981;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 61 WHERE entry = 22737;

-- Whitewhisker Vermin
UPDATE creature_template SET HeroicEntry = 22782 WHERE entry = 10982;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 10982;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22782;

-- Snowblind Harpy
UPDATE creature_template SET HeroicEntry = 22762 WHERE entry = 10986;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 10986;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22762;

-- Irondeep Trogg
UPDATE creature_template SET HeroicEntry = 22750 WHERE entry = 10987;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 10987;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22750;

-- Alterac Ram
UPDATE creature_template SET HeroicEntry = 22727 WHERE entry = 10990;
UPDATE creature_template SET MinLevel = 50, MaxLevel = 51 WHERE entry = 10990; -- 50-51? - https://tbc.wowhead.com/npc=10990
UPDATE creature_template SET MinLevel = 60, MaxLevel = 61 WHERE entry = 22727; -- 60-61? - https://wowpedia.fandom.com/wiki/Alterac_Ram?oldid=2358430

-- Irondeep Shaman
UPDATE creature_template SET HeroicEntry = 22747 WHERE entry = 11600;
UPDATE creature_template SET MinLevel = 53, MaxLevel = 54 WHERE entry = 11600; -- https://tbc.wowhead.com/npc=11600
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22747;

-- Whitewhisker Digger
UPDATE creature_template SET HeroicEntry = 22778 WHERE entry = 11603;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 11603;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22778;

-- Whitewhisker Geomancer
UPDATE creature_template SET HeroicEntry = 22779 WHERE entry = 11604;
UPDATE creature_template SET MinLevel = 53, MaxLevel = 54 WHERE entry = 11604;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22779;

-- Morloch
UPDATE creature_template SET HeroicEntry = 22685 WHERE entry = 11657;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 11657;

-- Snowblind Windcaller
UPDATE creature_template SET HeroicEntry = 22763 WHERE entry = 11675;
UPDATE creature_template SET MinLevel = 53, MaxLevel = 54 WHERE entry = 11675;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22763;

-- Taskmaster Snivvle
UPDATE creature_template SET HeroicEntry = 22694 WHERE entry = 11677;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 11677;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22694;

-- Snowblind Ambusher
UPDATE creature_template SET HeroicEntry = 22761 WHERE entry = 11678;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 11678;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22761;

-- Wildpaw Brute
UPDATE creature_template SET HeroicEntry = 22784 WHERE entry = 11839;
UPDATE creature_template SET MinLevel = 56, MaxLevel = 57 WHERE entry = 11839;
UPDATE creature_template SET MinLevel = 66, MaxLevel = 67 WHERE entry = 22784;

-- Dreakthar
UPDATE creature_template SET HeroicEntry = 22641 WHERE entry = 11946;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62 WHERE entry = 11946;
UPDATE creature_template SET MinLevel = 72, MaxLevel = 72 WHERE entry = 22641; -- [20] (34) UNIT_FIELD_LEVEL: 72

-- Captain Galvangar
UPDATE creature_template SET HeroicEntry = 22606 WHERE entry = 11947;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61 WHERE entry = 11947;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22606;

-- Vanndar Stormpike
UPDATE creature_template SET HeroicEntry = 22644 WHERE entry = 11948;
UPDATE creature_template SET MinLevel = 72, MaxLevel = 72 WHERE entry = 22644; -- [28] (34) UNIT_FIELD_LEVEL: 72

-- Captain Balinda Stonehearth
UPDATE creature_template SET HeroicEntry = 22605 WHERE entry = 11949;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61 WHERE entry = 11949;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22605;

-- Stormpike Herald
UPDATE creature_template SET HeroicEntry = 22574 WHERE entry = 11997;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 11997;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22574;

-- Frostwolf Herald
UPDATE creature_template SET HeroicEntry = 22549 WHERE entry = 11998;
UPDATE creature_template SET faction = 1335, MinLevel = 60, MaxLevel = 60 WHERE entry = 11998;
UPDATE creature_template SET faction = 1335, MinLevel = 70, MaxLevel = 70, NpcFlags=NpcFlags|1 WHERE entry = 22549;

-- Stormpike Defender
UPDATE creature_template SET HeroicEntry = 22690 WHERE entry = 12050;

-- Frostwolf Legionnaire
UPDATE creature_template SET HeroicEntry = 22665 WHERE entry = 12051;

-- Frostwolf Guardian
UPDATE creature_template SET HeroicEntry = 22674 WHERE entry = 12053;

-- Stormpike Quartermaster
UPDATE creature_template SET HeroicEntry = 22658 WHERE entry = 12096;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 12096;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22658;

-- Frostwolf Quartermaster
UPDATE creature_template SET HeroicEntry = 22648 WHERE entry = 12097;
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55 WHERE entry = 12097;
UPDATE creature_template SET MinLevel = 65, MaxLevel = 65 WHERE entry = 22648;

-- Drakan
UPDATE creature_template SET HeroicEntry = 22540 WHERE entry = 12121;

-- Duros
UPDATE creature_template SET HeroicEntry = 22546 WHERE entry = 12122;

-- Stormpike Guardsman
UPDATE creature_template SET HeroicEntry = 22666 WHERE entry = 12127;

-- Umi Thorson
UPDATE creature_template SET HeroicEntry = 22696 WHERE entry = 13078;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13078;

-- Keetar
UPDATE creature_template SET HeroicEntry = 22683 WHERE entry = 13079;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13079;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22683;

-- Irondeep Guard
UPDATE creature_template SET HeroicEntry = 22743 WHERE entry = 13080;
UPDATE creature_template SET MinLevel = 54, MaxLevel = 55 WHERE entry = 13080;
UPDATE creature_template SET MinLevel = 64, MaxLevel = 65 WHERE entry = 22743;

-- Aggi Rumblestomp
UPDATE creature_template SET HeroicEntry = 22670 WHERE entry = 13086;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13086;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22670;

-- Masha Swiftcut
UPDATE creature_template SET HeroicEntry = 22684 WHERE entry = 13088;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13088;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22684;

-- Coldmine Explorer
UPDATE creature_template SET HeroicEntry = 22729 WHERE entry = 13096;
UPDATE creature_template SET MinLevel = 54, MaxLevel = 55 WHERE entry = 13096;
UPDATE creature_template SET MinLevel = 64, MaxLevel = 65 WHERE entry = 22729;

-- Coldmine Surveyor
UPDATE creature_template SET HeroicEntry = 22734 WHERE entry = 13097;
UPDATE creature_template SET MinLevel = 54, MaxLevel = 55 WHERE entry = 13097;
UPDATE creature_template SET MinLevel = 64, MaxLevel = 65 WHERE entry = 22734;

-- Irondeep Explorer
UPDATE creature_template SET HeroicEntry = 22741 WHERE entry = 13099;
UPDATE creature_template SET MinLevel = 54, MaxLevel = 55 WHERE entry = 13099;
UPDATE creature_template SET MinLevel = 64, MaxLevel = 65 WHERE entry = 22741;

-- Alliance Spirit Guide
UPDATE creature_template SET HeroicEntry = 22526 WHERE entry = 13116;

-- Horde Spirit Guide
UPDATE creature_template SET HeroicEntry = 22558 WHERE entry = 13117;

-- Smith Regzar
UPDATE creature_template SET HeroicEntry = 22571 WHERE entry = 13176;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13176;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22571;

-- Wing Commander Guse
UPDATE creature_template SET HeroicEntry = 22721 WHERE entry = 13179;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 13179;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22721;

-- Wing Commander Jeztor
UPDATE creature_template SET HeroicEntry = 22697 WHERE entry = 13180;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13180;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22697;

-- Gaelden Hammersmith
UPDATE creature_template SET HeroicEntry = 22680 WHERE entry = 13216;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13216;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22680;

-- Grunnda Wolfheart
UPDATE creature_template SET HeroicEntry = 22681 WHERE entry = 13218;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13218;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22681;

-- Primalist Thurloga
UPDATE creature_template SET HeroicEntry = 22568 WHERE entry = 13236;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13236;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22568;

-- Murgot Deepforge
UPDATE creature_template SET HeroicEntry = 22567 WHERE entry = 13257;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13257;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22567;

-- Frostwolf Shaman
UPDATE creature_template SET HeroicEntry = 22678 WHERE entry = 13284;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13284;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22678;

-- Coldmine Peon
UPDATE creature_template SET HeroicEntry = 22733 WHERE entry = 13316;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 13316;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22733;

-- Coldmine Miner
UPDATE creature_template SET HeroicEntry = 22732 WHERE entry = 13317;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 13317;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22732;

-- Seasoned Defender
UPDATE creature_template SET HeroicEntry = 22714 WHERE entry = 13326;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 13326;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22714;

-- Seasoned Guardian
UPDATE creature_template SET HeroicEntry = 22715 WHERE entry = 13328;
UPDATE creature_template SET faction = 1214, MinLevel = 59, MaxLevel = 59 WHERE entry = 13328;
UPDATE creature_template SET faction = 1214, MinLevel = 69, MaxLevel = 69 WHERE entry = 22715;

-- Veteran Defender
UPDATE creature_template SET HeroicEntry = 22588 WHERE entry = 13331;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13331;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22588;

-- Veteran Guardian
UPDATE creature_template SET HeroicEntry = 22589 WHERE entry = 13332;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13332;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22589;

-- Stormpike Bowman
UPDATE creature_template SET HeroicEntry = 22766 WHERE entry = 13358;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 60 WHERE entry = 13358;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 70 WHERE entry = 22766;

-- Frostwolf Bowman
UPDATE creature_template SET HeroicEntry = 22739 WHERE entry = 13359;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 60 WHERE entry = 13359;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 70 WHERE entry = 22739;

-- Irondeep Miner
UPDATE creature_template SET HeroicEntry = 22744 WHERE entry = 13396;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 13396;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22744;

-- Irondeep Peon
UPDATE creature_template SET HeroicEntry = 22745 WHERE entry = 13397;
UPDATE creature_template SET MinLevel = 52, MaxLevel = 53 WHERE entry = 13397;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 63 WHERE entry = 22745;

-- Champion Guardian
UPDATE creature_template SET HeroicEntry = 22609 WHERE entry = 13421;
UPDATE creature_template SET faction = 1214, MinLevel = 61, MaxLevel = 61 WHERE entry = 13421;
UPDATE creature_template SET faction = 1214, MinLevel = 71, MaxLevel = 71 WHERE entry = 22609;

-- Champion Defender
UPDATE creature_template SET HeroicEntry = 22608 WHERE entry = 13422;
UPDATE creature_template SET faction = 1216, MinLevel = 61, MaxLevel = 61 WHERE entry = 13422;
UPDATE creature_template SET faction = 1216, MinLevel = 71, MaxLevel = 71 WHERE entry = 22608;

-- Wing Commander Ichman
UPDATE creature_template SET HeroicEntry = 22597 WHERE entry = 13437;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13437;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22597;

-- Wing Commander Slidore
UPDATE creature_template SET HeroicEntry = 22698 WHERE entry = 13438;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 58 WHERE entry = 13438;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 68 WHERE entry = 22698;

-- Wing Commander Vipore
UPDATE creature_template SET HeroicEntry = 22722 WHERE entry = 13439;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 13439;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22722;

-- Frostwolf Wolf Rider Commander
UPDATE creature_template SET HeroicEntry = 22552 WHERE entry = 13441; -- missing mount, take from vmangos
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 13441;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22552;

-- Arch Druid Renferal
UPDATE creature_template SET HeroicEntry = 22527 WHERE entry = 13442;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13442;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22527;

-- Druid of the Grove
UPDATE creature_template SET HeroicEntry = 22541 WHERE entry = 13443;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13443;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22541;

-- Corporal Noreg Stormpike
UPDATE creature_template SET HeroicEntry = 22735 WHERE entry = 13447;
UPDATE creature_template SET MinLevel = 58, MaxLevel = 59 WHERE entry = 13447;
UPDATE creature_template SET MinLevel = 68, MaxLevel = 69 WHERE entry = 22735;

-- Sergeant Yazra Bloodsnarl
UPDATE creature_template SET HeroicEntry = 22760 WHERE entry = 13448;
UPDATE creature_template SET MinLevel = 56, MaxLevel = 57 WHERE entry = 13448;
UPDATE creature_template SET MinLevel = 66, MaxLevel = 67 WHERE entry = 22760;

-- Stormpike Ram Rider Commander
UPDATE creature_template SET HeroicEntry = 22575 WHERE entry = 13577;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13577;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22575;

-- Frostwolf Stable Master
UPDATE creature_template SET HeroicEntry = 22551 WHERE entry = 13616;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13616;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22551;

-- Stormpike Stable Master
UPDATE creature_template SET HeroicEntry = 22577 WHERE entry = 13617;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 13617;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22577;

-- Mountaineer Boombellow
UPDATE creature_template SET HeroicEntry = 22724 WHERE entry = 13797;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 61 WHERE entry = 13797;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 71 WHERE entry = 22724;

-- Jotek
UPDATE creature_template SET HeroicEntry = 22723 WHERE entry = 13798;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 61 WHERE entry = 13798;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 71 WHERE entry = 22723;

-- Prospector Stonehewer
UPDATE creature_template SET HeroicEntry = 22630 WHERE entry = 13816;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61 WHERE entry = 13816;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22630;

-- Najak Hexxen
UPDATE creature_template SET HeroicEntry = 22712 WHERE entry = 14185;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 14185;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22712;

-- Ravak Grimtotem
UPDATE creature_template SET HeroicEntry = 22569 WHERE entry = 14186;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14186;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22569;

-- Athramanis
UPDATE creature_template SET HeroicEntry = 22528 WHERE entry = 14187;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14187;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22528;

-- Dirk Swindle
UPDATE creature_template SET HeroicEntry = 22699 WHERE entry = 14188;
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59 WHERE entry = 14188;
UPDATE creature_template SET MinLevel = 69, MaxLevel = 69 WHERE entry = 22699;

-- Frostwolf Bloodhound
UPDATE creature_template SET HeroicEntry = 22738 WHERE entry = 14282;
UPDATE creature_template SET MinLevel = 53, MaxLevel = 54 WHERE entry = 14282;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22738;

-- Stormpike Owl
UPDATE creature_template SET HeroicEntry = 22767 WHERE entry = 14283;
UPDATE creature_template SET MinLevel = 53, MaxLevel = 54 WHERE entry = 14283;
UPDATE creature_template SET MinLevel = 63, MaxLevel = 64 WHERE entry = 22767;

-- Stormpike Battleguard
UPDATE creature_template SET HeroicEntry = 22633 WHERE entry = 14284;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61 WHERE entry = 14284;
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71 WHERE entry = 22633;

-- Dun Baldar North Marshal
UPDATE creature_template SET HeroicEntry = 22542 WHERE entry = 14762;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14762;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22542;

-- Dun Baldar South Marshal
UPDATE creature_template SET HeroicEntry = 22544 WHERE entry = 14763;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14763;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22544;

-- Icewing Marshal
UPDATE creature_template SET HeroicEntry = 22561 WHERE entry = 14764;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14764;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22561;

-- Stonehearth Marshal
UPDATE creature_template SET HeroicEntry = 22572 WHERE entry = 14765;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14765;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22572;

-- East Frostwolf Warmaster
UPDATE creature_template SET HeroicEntry = 22548 WHERE entry = 14772;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14772;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22548;

-- Iceblood Warmaster
UPDATE creature_template SET HeroicEntry = 22560 WHERE entry = 14773;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14773;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22560;

-- Tower Point Warmaster
UPDATE creature_template SET HeroicEntry = 22580 WHERE entry = 14776;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14776;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22580;

-- West Frostwolf Warmaster
UPDATE creature_template SET HeroicEntry = 22596 WHERE entry = 14777;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60 WHERE entry = 14777;
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70 WHERE entry = 22596;

