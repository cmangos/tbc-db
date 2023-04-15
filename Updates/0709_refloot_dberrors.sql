-- refloot names DBErrors

-- not needed as most are duplicated or not needed in general.
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65003; -- NPC LOOT (Rare NPC Loot) - Gruff Swiftbite - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 100; -- down from 85 - https://web.archive.org/web/20080217052341/http://wow.allakhazam.com/db/mob.html?wmob=100
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65018; -- NPC LOOT (Rare NPC Loot) - Brainwashed Noble - Special Items (65278)
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65019; -- NPC LOOT (Rare NPC Loot) - Marisa du'Paige - Special Items (65279)
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65021; -- NPC LOOT (Rare NPC Loot) - Lost One Chieftain - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65024; -- NPC LOOT (Rare NPC Loot) - Dragonmaw Battlemaster - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65025; -- NPC LOOT (Rare NPC Loot) - Jade - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65026; -- NPC LOOT (Rare NPC Loot) - Lost One Cook - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65041; -- NPC LOOT (Rare NPC Loot) - Scarlet Judge - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65043; -- NPC LOOT (Rare NPC Loot) - Foulmane - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 1847; -- up from 2 - https://web.archive.org/web/20080217052341/http://wow.allakhazam.com/db/mob.html?wmob=1847
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65044; -- NPC LOOT (Rare NPC Loot) - Lord Maldazzar - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65045; -- NPC LOOT (Rare NPC Loot) - Dreadwhisper - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65046; -- NPC LOOT (Rare NPC Loot) - The Husk - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65048; -- NPC LOOT (Rare NPC Loot) - Muad - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 1910; -- down from 100 - https://web.archive.org/web/20080217052341/http://wow.allakhazam.com/db/mob.html?wmob=1910
UPDATE `creature_loot_template` SET `groupid` = 9 WHERE `entry` = 1910 AND `item` = 4302; -- Small Green Dagger
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65056; -- NPC LOOT (Rare NPC Loot) - Strider Clutchmother - Special Items
UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `entry` = 2172 AND `item` = 5469; -- Strider Meat
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65057; -- NPC LOOT (Rare NPC Loot) - Shadowclaw - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 2175; -- down from 100 - https://web.archive.org/web/20080216230333/http://wow.allakhazam.com/db/mob.html?wmob=2175
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65058; -- NPC LOOT (Rare NPC Loot) - Lady Moongazer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65059; -- NPC LOOT (Rare NPC Loot) - Carnivous the Breaker - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65060; -- NPC LOOT (Rare NPC Loot) - Licillin - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65061; -- NPC LOOT (Rare NPC Loot) - Firecaller Radison - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65062; -- NPC LOOT (Rare NPC Loot) - Stone Fury - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65070; -- NPC LOOT (Rare NPC Loot) - Molok the Crusher - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65071; -- NPC LOOT (Rare NPC Loot) - Zalas Witherbark - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65074; -- NPC LOOT (Rare NPC Loot) - Shadowforge Commander - Special Items
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2744, 4616, -15);
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65075; -- NPC LOOT (Rare NPC Loot) - War Golem - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65076; -- NPC LOOT (Rare NPC Loot) - Rumbler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65077; -- NPC LOOT (Rare NPC Loot) - Barnabus - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65079; -- NPC LOOT (Rare NPC Loot) - Broken Tooth - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65083; -- NPC LOOT (Rare NPC Loot) - Sludge Beast - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65086; -- NPC LOOT (Rare NPC Loot) - Sewer Beast - Special Items
DELETE FROM `creature_loot_template` WHERE `entry` = 3581 AND `item` != 770; -- Pointy Crocolisk Tooth
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65089; -- NPC LOOT (Rare NPC Loot) - Apothecary Falthis - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65090; -- NPC LOOT (Rare NPC Loot) - Akkrilus - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65093; -- NPC LOOT (Rare NPC Loot) - Vengeful Ancient - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65095; -- NPC LOOT (Rare NPC Loot) - Darkmist Widow - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65096; -- NPC LOOT (Rare NPC Loot) - Lady Szallah - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65097; -- NPC LOOT (Rare NPC Loot) - Diamond Head - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65098; -- NPC LOOT (Rare NPC Loot) - Bloodroar the Stalker - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65099; -- NPC LOOT (Rare NPC Loot) - Antilus the Soarer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65100; -- NPC LOOT (Rare NPC Loot) - Dreamwatcher Forktongue - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65101; -- NPC LOOT (Rare NPC Loot) - Arash-ethis - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65102; -- NPC LOOT (Rare NPC Loot) - Qirot - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65103; -- NPC LOOT (Rare NPC Loot) - Old Grizzlegut - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65104; -- NPC LOOT (Rare NPC Loot) - Gnarl Leafbrother - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65105; -- NPC LOOT (Rare NPC Loot) - Snarler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65106; -- NPC LOOT (Rare NPC Loot) - Veyzhak the Cannibal - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65107; -- NPC LOOT (Rare NPC Loot) - Zekkis - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65108; -- NPC LOOT (Rare NPC Loot) - Snagglespear - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 5786; -- up from 1 - https://web.archive.org/web/20080217052821/http://wow.allakhazam.com/db/mob.html?wmob=5786
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65109; -- NPC LOOT (Rare NPC Loot) - Enforcer Emilgund - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65111; -- NPC LOOT (Rare NPC Loot) - Warlord Kolkanis - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 5808; -- up from 1 - https://web.archive.org/web/20080217014456/http://wow.allakhazam.com/db/mob.html?wmob=5808
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65112; -- NPC LOOT (Rare NPC Loot) - Watch Commander Zalaphil - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 5809; -- up from 1 - https://web.archive.org/web/20080217014501/http://wow.allakhazam.com/db/mob.html?wmob=5809
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65113; -- NPC LOOT (Rare NPC Loot) - Death Flayer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65115; -- NPC LOOT (Rare NPC Loot) - Snort the Heckler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65116; -- NPC LOOT (Rare NPC Loot) - Thunderstomp - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65117; -- NPC LOOT (Rare NPC Loot) - Azzere the Skyblade - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65118; -- NPC LOOT (Rare NPC Loot) - Foreman Grills - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65119; -- NPC LOOT (Rare NPC Loot) - Engineer Whirleygig - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65123; -- NPC LOOT (Rare NPC Loot) - Malgin Barleybrew - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65126; -- NPC LOOT (Rare NPC Loot) - Dishu - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65127; -- NPC LOOT (Rare NPC Loot) - Achellios the Banished - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65128; -- NPC LOOT (Rare NPC Loot) - Varo'then's Ghost - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65129; -- NPC LOOT (Rare NPC Loot) - Ravasaur Matriarch - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65130; -- NPC LOOT (Rare NPC Loot) - Clutchmother Zavas - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65131; -- NPC LOOT (Rare NPC Loot) - Uhk'loc - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65132; -- NPC LOOT (Rare NPC Loot) - Magister Hawkhelm - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65133; -- NPC LOOT (Rare NPC Loot) - Antilos - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65134; -- NPC LOOT (Rare NPC Loot) - Lady Sesspira - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65136; -- NPC LOOT (Rare NPC Loot) - Gatekeeper Rageroar - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65137; -- NPC LOOT (Rare NPC Loot) - Master Feardred - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65138; -- NPC LOOT (Rare NPC Loot) - Flagglemurk the Cruel - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65140; -- NPC LOOT (Rare NPC Loot) - Lord Sinslayer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65141; -- NPC LOOT (Rare NPC Loot) - Ambassador Bloodrage - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65143; -- NPC LOOT (Rare NPC Loot) - Cyclok the Mad - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65144; -- NPC LOOT (Rare NPC Loot) - Kregg Keelhaul - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65145; -- NPC LOOT (Rare NPC Loot) - Soriid the Devourer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65146; -- NPC LOOT (Rare NPC Loot) - Haarka the Ravenous - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65147; -- NPC LOOT (Rare NPC Loot) - Greater Firebird - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65148; -- NPC LOOT (Rare NPC Loot) - Murderous Blisterpaw - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65149; -- NPC LOOT (Rare NPC Loot) - Razortalon - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65150; -- NPC LOOT (Rare NPC Loot) - Old Cliff Jumper - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65151; -- NPC LOOT (Rare NPC Loot) - The Reak - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65152; -- NPC LOOT (Rare NPC Loot) - Ironback - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65153; -- NPC LOOT (Rare NPC Loot) - Jalinde Summerdrake - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65154; -- NPC LOOT (Rare NPC Loot) - Retherokk the Berserker - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65155; -- NPC LOOT (Rare NPC Loot) - Witherheart the Stalker - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 8218; -- up from 2 - https://web.archive.org/web/20080216061047/http://wow.allakhazam.com/db/mob.html?wmob=8218
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65156; -- NPC LOOT (Rare NPC Loot) - Zul'arek Hatefowler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65157; -- NPC LOOT (Rare NPC Loot) - Rekk'tilac - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65158; -- NPC LOOT (Rare NPC Loot) - Smoldar - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65159; -- NPC LOOT (Rare NPC Loot) - Faulty War Golem - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65160; -- NPC LOOT (Rare NPC Loot) - Shleipnarr - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65161; -- NPC LOOT (Rare NPC Loot) - Scald - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65162; -- NPC LOOT (Rare NPC Loot) - Slave Master Blackheart - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65163; -- NPC LOOT (Rare NPC Loot) - Mojo the Twisted - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65164; -- NPC LOOT (Rare NPC Loot) - Magronos the Unyielding - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65165; -- NPC LOOT (Rare NPC Loot) - Akubar the Seer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65166; -- NPC LOOT (Rare NPC Loot) - Spiteflayer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65167; -- NPC LOOT (Rare NPC Loot) - Ravage - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65168; -- NPC LOOT (Rare NPC Loot) - Clack the Reaver - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65169; -- NPC LOOT (Rare NPC Loot) - Deatheye - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65170; -- NPC LOOT (Rare NPC Loot) - Grunter - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65171; -- NPC LOOT (Rare NPC Loot) - Dreadscorn - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65173; -- NPC LOOT (Rare NPC Loot) - The Evalcharr - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65175; -- NPC LOOT (Rare NPC Loot) - Thauris Balgarr - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65176; -- NPC LOOT (Rare NPC Loot) - Gruklash - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65177; -- NPC LOOT (Rare NPC Loot) - Malfunctioning Reaver - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65178; -- NPC LOOT (Rare NPC Loot) - Scarshield Quartermaster - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65179; -- NPC LOOT (Rare NPC Loot) - Hahk'Zor - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65180; -- NPC LOOT (Rare NPC Loot) - Gorgon'och - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65181; -- NPC LOOT (Rare NPC Loot) - Deathmaw - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65182; -- NPC LOOT (Rare NPC Loot) - Terrorspark - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65183; -- NPC LOOT (Rare NPC Loot) - Mezzir the Howler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65184; -- NPC LOOT (Rare NPC Loot) - Grizzle Snowpaw - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65185; -- NPC LOOT (Rare NPC Loot) - Rak'shiri - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65186; -- NPC LOOT (Rare NPC Loot) - Bayne - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65187; -- NPC LOOT (Rare NPC Loot) - Ressan the Needler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65188; -- NPC LOOT (Rare NPC Loot) - Fellicent's Shade - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65189; -- NPC LOOT (Rare NPC Loot) - Sri'skulk - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65190; -- NPC LOOT (Rare NPC Loot) - Lady Vespia - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65191; -- NPC LOOT (Rare NPC Loot) - Rorgish Jowl - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65192; -- NPC LOOT (Rare NPC Loot) - Oakpaw - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65193; -- NPC LOOT (Rare NPC Loot) - Branch Snapper - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65194; -- NPC LOOT (Rare NPC Loot) - Eck'alom - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65195; -- NPC LOOT (Rare NPC Loot) - Mugglefin - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65196; -- NPC LOOT (Rare NPC Loot) - Mist Howler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65197; -- NPC LOOT (Rare NPC Loot) - Prince Raze - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65198; -- NPC LOOT (Rare NPC Loot) - Duggan Wildhammer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65199; -- NPC LOOT (Rare NPC Loot) - Hed'mush the Rotting - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65200; -- NPC LOOT (Rare NPC Loot) - Warlord Thresh'jin - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65201; -- NPC LOOT (Rare NPC Loot) - Zul'Brin Warpbranch - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65202; -- NPC LOOT (Rare NPC Loot) - Ranger Lord Hawkspear - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65203; -- NPC LOOT (Rare NPC Loot) - Gish the Unmoving - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65205; -- NPC LOOT (Rare NPC Loot) - Deathspeaker Selendre - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65206; -- NPC LOOT (Rare NPC Loot) - Cursed Centaur - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65207; -- NPC LOOT (Rare NPC Loot) - Ursol'lok - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65208; -- NPC LOOT (Rare NPC Loot) - Gorefang - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65209; -- NPC LOOT (Rare NPC Loot) - Old Vicejaw - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65210; -- NPC LOOT (Rare NPC Loot) - Krethis Shadowspinner - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65211; -- NPC LOOT (Rare NPC Loot) - Gravis Slipknot - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65212; -- NPC LOOT (Rare NPC Loot) - Araga - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65213; -- NPC LOOT (Rare NPC Loot) - Cranky Benj - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65214; -- NPC LOOT (Rare NPC Loot) - 7:XT - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65215; -- NPC LOOT (Rare NPC Loot) - Prince Kellen - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65216; -- NPC LOOT (Rare NPC Loot) - Kaskk - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65217; -- NPC LOOT (Rare NPC Loot) - Hissperak - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65218; -- NPC LOOT (Rare NPC Loot) - Giggler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65219; -- NPC LOOT (Rare NPC Loot) - Accursed Slitherblade - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65220; -- NPC LOOT (Rare NPC Loot) - Burgle Eye - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65221; -- NPC LOOT (Rare NPC Loot) - Drogoth the Roamer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65222; -- NPC LOOT (Rare NPC Loot) - Dart - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65223; -- NPC LOOT (Rare NPC Loot) - Ripscale - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65224; -- NPC LOOT (Rare NPC Loot) - Hayoc - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65225; -- NPC LOOT (Rare NPC Loot) - The Rot - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65226; -- NPC LOOT (Rare NPC Loot) - Lord Angler - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65227; -- NPC LOOT (Rare NPC Loot) - Oozeworm - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65228; -- NPC LOOT (Rare NPC Loot) - Shanda the Spinner - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65229; -- NPC LOOT (Rare NPC Loot) - Lord Condar - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65230; -- NPC LOOT (Rare NPC Loot) - Seeker Aqualon - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65231; -- NPC LOOT (Rare NPC Loot) - Squiddic - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65232; -- NPC LOOT (Rare NPC Loot) - Ribchaser - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65233; -- NPC LOOT (Rare NPC Loot) - Snarlflare - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65234; -- NPC LOOT (Rare NPC Loot) - Boulderheart - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65235; -- NPC LOOT (Rare NPC Loot) - Scargil - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65236; -- NPC LOOT (Rare NPC Loot) - Lady Zephris - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65237; -- NPC LOOT (Rare NPC Loot) - Ro'Bark - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65238; -- NPC LOOT (Rare NPC Loot) - Creepthess - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65239; -- NPC LOOT (Rare NPC Loot) - Big Samras - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65240; -- NPC LOOT (Rare NPC Loot) - Jimmy the Bleeder - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65241; -- NPC LOOT (Rare NPC Loot) - Death Howl - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65242; -- NPC LOOT (Rare NPC Loot) - Alshirr Banebreath - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65243; -- NPC LOOT (Rare NPC Loot) - Ragepaw - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65244; -- NPC LOOT (Rare NPC Loot) - Olm the Wise - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65245; -- NPC LOOT (Rare NPC Loot) - Mongress - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65246; -- NPC LOOT (Rare NPC Loot) - The Ongar - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65247; -- NPC LOOT (Rare NPC Loot) - Mirelow - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65248; -- NPC LOOT (Rare NPC Loot) - Gnawbone - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65249; -- NPC LOOT (Rare NPC Loot) - Harb Foulmountain - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65250; -- NPC LOOT (Rare NPC Loot) - Gibblesnik - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65252; -- NPC LOOT (Rare NPC Loot) - Grimmaw - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 14429; -- up from 15 - https://web.archive.org/web/20080217052029/http://wow.allakhazam.com/db/mob.html?wmob=14429
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65253; -- NPC LOOT (Rare NPC Loot) - Duskstalker - Special Items
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `comments` LIKE '%Green World Drop%' AND `entry` = 14430; -- up from 1 - https://web.archive.org/web/20080217052034/http://wow.allakhazam.com/db/mob.html?wmob=14430
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65256; -- NPC LOOT (Rare NPC Loot) - Sludginn - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65257; -- NPC LOOT (Rare NPC Loot) - Fingat - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65258; -- NPC LOOT (Rare NPC Loot) - Gilmorian - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65259; -- NPC LOOT (Rare NPC Loot) - Molt Thorn - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65260; -- NPC LOOT (Rare NPC Loot) - Gretheer - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65261; -- NPC LOOT (Rare NPC Loot) - Krellack - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65262; -- NPC LOOT (Rare NPC Loot) - Grubthor - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65263; -- NPC LOOT (Rare NPC Loot) - Huricanian - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65264; -- NPC LOOT (Rare NPC Loot) - Twilight Lord Everun - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65265; -- NPC LOOT (Rare NPC Loot) - Gluggle - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65266; -- NPC LOOT (Rare NPC Loot) - Roloch - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65267; -- NPC LOOT (Rare NPC Loot) - Rippa - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65268; -- NPC LOOT (Rare NPC Loot) - Kurmokk - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65269; -- NPC LOOT (Rare NPC Loot) - Verifonix - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65270; -- NPC LOOT (Rare NPC Loot) - Lumbering Horror - Special Items (modify for classic -> tbc, wotlk is different with level 70 items 40k+ item entries)
UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 3, `ChanceOrQuestChance` = 100 WHERE `entry` = 14697 AND `item` = 22484; -- Necrotic Rune
UPDATE `creature_loot_template` SET `groupid` = 1, `ChanceOrQuestChance` = 0 WHERE `entry` = 14697 AND `item` IN (23090,23091,23092,23093); -- Bracers/Wristguards/Wristwraps of Undead Slaying/Cleansing
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65271; -- NPC LOOT (Rare NPC Loot) - Spirit of the Damned - Special Items
UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 3, `ChanceOrQuestChance` = 100 WHERE `entry` = 16379 AND `item` = 22484; -- Necrotic Rune
UPDATE `creature_loot_template` SET `groupid` = 1, `ChanceOrQuestChance` = 0 WHERE `entry` = 16379 AND `item` IN (23090,23091,23092,23093); -- Bracers/Wristguards/Wristwraps of Undead Slaying/Cleansing
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65272; -- NPC LOOT (Rare NPC Loot) - Bone Witch - Special Items
UPDATE `creature_loot_template` SET `mincountOrRef` = 2, `maxcount` = 3, `ChanceOrQuestChance` = 100 WHERE `entry` = 16380 AND `item` = 22484; -- Necrotic Rune
UPDATE `creature_loot_template` SET `groupid` = 1, `ChanceOrQuestChance` = 0 WHERE `entry` = 16380 AND `item` IN (23090,23091,23092,23093); -- Bracers/Wristguards/Wristwraps of Undead Slaying/Cleansing
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65273; -- NPC LOOT (Rare NPC Loot) - Eldinarcus - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65274; -- NPC LOOT (Rare NPC Loot) - Tregla - Special Items
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65275; -- NPC LOOT (Rare NPC Loot) - Crusty - Special Items

