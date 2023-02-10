-- Rare Mobs nonelite stats
-- if you dont want to corrupt maybe correct damagemultipliers, dont take over damagemultipliers yet as these have not all been recalculated! (but some are totally wrong having 5.x or 6.x +)
-- Kraator 18696
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5, `Detection` = 30 WHERE `entry` = 18696;
UPDATE `creature_model_info` SET `bounding_radius` = 3, `combat_reach` = 6 WHERE `modelid` = 20810;

-- longer rareelite starting patch 2.4
-- https://wowwiki-archive.fandom.com/wiki/Patch_2.4.0 - "Outland Rare Spawn"
-- Damage for a norm
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` IN (
18680, -- Marticar
18694, -- Collidus the Warp-Watcher
18696, -- Kraator
20932 -- Nuramoc
);

-- e.g Crippler confirmed 1.8 with 2000speed
UPDATE `creature_template` SET `DamageMultiplier` = 1.8 WHERE `entry` IN (
18680, -- Marticar (3.6) - prenerf 8
18678, -- Fulgorge (4) - prenerf 8
18690, -- Morcrush (3.7) - prenerf 8
18692, -- Hemathion (4) - prenerf 8
18694, -- Collidus the Warp-Watcher (4) - prenerf 8
20932 -- Nuramoc (4) - prenerf 8
);

-- SELECT * FROM creature_template where rank = 4 order by entry; -- might have missing npcs (elite, nonelite), classic check for eliterare (2) too as these might be totally wrong too.
-- bestiary checked ones are done

-- https://www.diffchecker.com/Tlwtu6WY
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1700, `DamageMultiplier` = 1 WHERE `entry` = 61; -- Thuros Lightfingers
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 79; -- Narg the Taskmaster
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 99; -- Morgaine the Sly
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1500, `DamageMultiplier` = 0.7 WHERE `entry` = 100; -- Gruff Swiftbite (1550 speed) (12-16 at 12, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 462; -- Vultros (1458 speed) (46-61 at 26, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 471; -- Mother Fang
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 472; -- Fedfennel
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 503; -- Lord Malathrom
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 506; -- Sergeant Brashclaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.2 WHERE `entry` = 507; -- Fenros (1341 speed) (39-51 at 32) min 1.25 max 1.15
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1600, `DamageMultiplier` = 1.25 WHERE `entry` = 519; -- Slark (1600 speed) (22-29 at 15)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2800, `DamageMultiplier` = 1 WHERE `entry` = 520; -- Brack
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 521; -- Lupos
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 534; -- Nefaru
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 572; -- Leprithus
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 573; -- Foe Reaper 4000
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 574; -- Naraxis
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2800, `DamageMultiplier` = 1.666 WHERE `entry` = 584; -- Kazon (2800 speed) (90-119 at level 27, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 596; -- Brainwashed Noble (same level, class as Marisa, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 599; -- Marisa du'Paige (23-33 at 18, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 616; -- Chatter
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 763; -- Lost One Chieftain
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 771; -- Commander Felstrom
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1500, `DamageMultiplier` = 1.4 WHERE `entry` = 947; -- Rohh the Silent
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1600, `DamageMultiplier` = 1.38 WHERE `entry` = 1037; -- Dragonmaw Battlemaster
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 1063; -- Jade
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1106; -- Lost One Cook
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 1112; -- Leech Widow
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2600, `DamageMultiplier` = 1.7 WHERE `entry` = 1119; -- Hammerspine
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.28 WHERE `entry` = 1130; -- Bjarn
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.3 WHERE `entry` = 1132; -- Timber
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.3 WHERE `entry` = 1137; -- Edan the Howler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1140; -- Razormaw Matriarch
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3000, `DamageMultiplier` = 1.94 WHERE `entry` = 1260; -- Great Father Arctikus
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1398; -- Boss Galgosh
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1399; -- Magosh
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1424; -- Master Digger
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.3 WHERE `entry` = 1425; -- Grizlak
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1531; -- Lost Soul
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 1533; -- Tormented Spirit
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1552; -- Scale Belly
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.7 WHERE `entry` = 1837; -- Scarlet Judge
UPDATE `creature_template` SET `DamageMultiplier`='4.5', `MeleeBaseAttackTime`='2000' WHERE `entry`='1838'; -- Scarlet Interrogator (1D) (1141 MeleeBaseAttackTime) (476-631 at 61, bestiary)
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000' WHERE `entry`='1841'; -- Scarlet Executioner (1D) (1150 MeleeBaseAttackTime) (177-234 at 60, bestiary)
UPDATE `creature_template` SET `DamageMultiplier`='4.5', `MeleeBaseAttackTime`='1500' WHERE `entry`='1843'; -- Foreman Jerris (1D) (1133 MeleeBaseAttackTime) (364-483 at 62, bestiary)
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='2400' WHERE `entry`='1844'; -- Foreman Marcrid (1.2D) (2000 MeleeBaseAttackTime) (120-159 at 58, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1847; -- Foulmane
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1848; -- Lord Maldazzar
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1849; -- Dreadwhisper (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 1851; -- The Husk (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 1885; -- Scarlet Smith
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1910; -- Muad
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1911; -- Deeb
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 1920; -- Dalaran Spellscribe
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1936; -- Farmer Solliden
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3200, `DamageMultiplier` = 1.7 WHERE `entry` = 1944; -- Rot Hide Bruiser
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 1948; -- Snarlmane
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2090; -- Ma'ruk Wyrmscale
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2108; -- Garneg Charskull
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2172; -- Strider Clutchmother
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1500, `DamageMultiplier` = 1.6 WHERE `entry` = 2175; -- Shadowclaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2184; -- Lady Moongazer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2186; -- Carnivous the Breaker
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 2191; -- Licillin
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 2192; -- Firecaller Radison
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 2258; -- Stone Fury
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 2283; -- Ravenclaw Regent
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2452; -- Skhowl
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.75 WHERE `entry` = 2453; -- Lo'Grosh
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2476; -- Large Loch Crocolisk
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.9 WHERE `entry` = 2541; -- Lord Sakrasis
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1000, `DamageMultiplier` = 1.2 WHERE `entry` = 2600; -- Singer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 2603; -- Kovork
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2700, `DamageMultiplier` = 1.8 WHERE `entry` = 2604; -- Molok the Crusher
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 2605; -- Zalas Witherbark
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 2606; -- Nimar the Slayer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2609; -- Geomancer Flintdagger
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 2744; -- Shadowforge Commander
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 2751; -- War Golem
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 2752; -- Rumbler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 2753; -- Barnabus
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 2779; -- Prince Nazjak
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1000, `DamageMultiplier` = 1.26 WHERE `entry` = 2850; -- Broken Tooth
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 3056; -- Ghost Howl
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 3068; -- Mazzranache
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 3253; -- Silithid Harvester
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.7 WHERE `entry` = 3295; -- Sludge Beast
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 3470; -- Rathorian
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 3535; -- Blackmoss the Fetid
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 3581; -- Sewer Beast
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 3652; -- Trigore the Lasher
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 3672; -- Boahn
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 3718; -- [UNUSED] Wrathtail Tide Princess (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 3735; -- Apothecary Falthis
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 3773; -- Akkrilus
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 3792; -- Terrowulf Packlord
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 3831; -- [UNUSED] Ancient Guardian (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 4015; -- Pridewing Patriarch
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 4030; -- Vengeful Ancient
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 4132; -- Silithid Ravager
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 4380; -- Darkmist Widow
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5343; -- Lady Szallah
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5345; -- Diamond Head
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5346; -- Bloodroar the Stalker
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 5347; -- Antilus the Soarer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5348; -- Dreamwatcher Forktongue (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5349; -- Arash-ethis
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5350; -- Qirot
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 5352; -- Old Grizzlegut
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 5354; -- Gnarl Leafbrother
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5356; -- Snarler
UPDATE `creature_template` SET `DamageMultiplier`='1.25', `MeleeBaseAttackTime`='2000' WHERE `entry`='5399'; -- Veyzhak the Cannibal (2D) (1250 MeleeBaseAttackTime) (101-134 at 48, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 5400; -- Zekkis
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3000, `DamageMultiplier` = 1.75 WHERE `entry` = 5786; -- Snagglespear
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3000, `DamageMultiplier` = 1.7 WHERE `entry` = 5787; -- Enforcer Emilgund
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000' WHERE `entry`='5799'; -- Hannah Bladeleaf (1D) (1433 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200, `DamageMultiplier` = 1 WHERE `entry` = 5807; -- The Rake
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5808; -- Warlord Kolkanis
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 5809; -- Watch Commander Zalaphil
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1600, `DamageMultiplier` = 1.2 WHERE `entry` = 5823; -- Death Flayer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5826; -- Geolord Mottle
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2700' WHERE `entry`='5827'; -- Brontus (1D) (1425 MeleeBaseAttackTime) (88-117 at 27, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5829; -- Snort the Heckler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5832; -- Thunderstomp
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 5834; -- Azzere the Skyblade
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1600, `DamageMultiplier` = 1.7 WHERE `entry` = 5835; -- Foreman Grills
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5836; -- Engineer Whirleygig
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3000, `DamageMultiplier` = 1.75 WHERE `entry` = 5837; -- Stonearm
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 5838; -- Brokespear
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5847; -- Heggin Stonewhisker
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 5848; -- Malgin Barleybrew
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5849; -- Digger Flameforge
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000' WHERE `entry`='5851'; -- Captain Gerogg Hammertoe (1D) (1425 MeleeBaseAttackTime) (65-87 at 27, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5863; -- Geopriest Gukk'rok
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1500, `DamageMultiplier` = 1 WHERE `entry` = 5865; -- Dishu
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000' WHERE `entry`='5916'; -- Sentinel Amarassan (1D) (1425 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 5933; -- Achellios the Banished
UPDATE `creature_template` SET `DamageMultiplier`='2.36', `MeleeBaseAttackTime`='2000' WHERE `entry`='5934'; -- Heartrazor (1D) (1383 MeleeBaseAttackTime) (105-140 at 32, bestiary)
UPDATE `creature_template` SET `DamageMultiplier`='1.75', `MeleeBaseAttackTime`='2000' WHERE `entry`='5935'; -- Ironeye the Invincible (1D) (1341 MeleeBaseAttackTime) (90-119 at 37, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 6118; -- Varo'then's Ghost
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000' WHERE `entry`='6490'; -- Azshir the Sleepless (1D) (1341 MeleeBaseAttackTime) (71-94 at 32, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 6581; -- Ravasaur Matriarch
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 6582; -- Clutchmother Zavas
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 6585; -- Uhk'loc
UPDATE `creature_template` SET `MinLevel`='53', `DamageMultiplier`='4', `MeleeBaseAttackTime`='2000' WHERE `entry`='6646'; -- Monnos the Elder (1D) (1191 MeleeBaseAttackTime) (360-489 at 53-54, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 6647; -- Magister Hawkhelm
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.2 WHERE `entry` = 6648; -- Antilos
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.7 WHERE `entry` = 6649; -- Lady Sesspira
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 6650; -- General Fangferror
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 6651; -- Gatekeeper Rageroar
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.7 WHERE `entry` = 6652; -- Master Feardred
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 7015; -- Flagglemurk the Cruel
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.36 WHERE `entry` = 7016; -- Lady Vespira
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 7017; -- Lord Sinslayer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 7895; -- Ambassador Bloodrage
UPDATE `creature_template` SET `DamageMultiplier`='4', `MeleeBaseAttackTime`='2000' WHERE `entry`='8200'; -- Jin'Zallah the Sandbringer (1D) (1266 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2600, `DamageMultiplier` = 1.7 WHERE `entry` = 8201; -- Omgorn the Lost
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.9 WHERE `entry` = 8202; -- Cyclok the Mad
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8203; -- Kregg Keelhaul
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8204; -- Soriid the Devourer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 8205; -- Haarka the Ravenous
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 8207; -- Greater Firebird
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.55 WHERE `entry` = 8208; -- Murderous Blisterpaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8210; -- Razortalon
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8211; -- Old Cliff Jumper
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8212; -- The Reak
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 8213; -- Ironback
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8214; -- Jalinde Summerdrake
UPDATE `creature_template` SET `DamageMultiplier`='6.3', `MeleeBaseAttackTime`='2600' WHERE `entry`='8215'; -- Grimungous (1D) (1233 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1500, `DamageMultiplier` = 1 WHERE `entry` = 8216; -- Retherokk the Berserker
UPDATE `creature_template` SET `DamageMultiplier`='5.4', `MeleeBaseAttackTime`='2000' WHERE `entry`='8217'; -- Mith'rethis the Enchanter (1D) (1183 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 8218; -- Witherheart the Stalker
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8219; -- Zul'arek Hatefowler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8277; -- Rekk'tilac
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8278; -- Smoldar
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8279; -- Faulty War Golem
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 8280; -- Shleipnarr
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8281; -- Scald
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8283; -- Slave Master Blackheart
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8296; -- Mojo the Twisted
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8297; -- Magronos the Unyielding
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8298; -- Akubar the Seer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200, `DamageMultiplier` = 1 WHERE `entry` = 8299; -- Spiteflayer
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1300, `DamageMultiplier` = 1 WHERE `entry` = 8300; -- Ravage
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.65 WHERE `entry` = 8301; -- Clack the Reaver
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 8302; -- Deatheye
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 8303; -- Grunter
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8304; -- Dreadscorn
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8503; -- Gibblewilt
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8660; -- The Evalcharr
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2800, `DamageMultiplier` = 1.25 WHERE `entry` = 8924; -- The Behemoth
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 8978; -- Thauris Balgarr
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2600, `DamageMultiplier` = 1 WHERE `entry` = 8979; -- Gruklash
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200, `DamageMultiplier` = 1 WHERE `entry` = 8981; -- Malfunctioning Reaver
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 9046; -- Scarshield Quartermaster (118-156 at 55, bestiary)
-- points towards tbcmangos missing more dmgnerf commmits from classicmangos! - apart from the 4 CLS commits still not ported.
UPDATE `creature_template` SET `DamageMultiplier`='5' WHERE `entry`='9218'; -- Spirestone Battle Lord (10D) (2000 MeleeBaseAttackTime)
UPDATE `creature_template` SET `DamageMultiplier`='1.0', `MeleeBaseAttackTime`='2000' WHERE `entry`='9596'; -- Bannok Grimaxe (1.25D) (2400 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 9602; -- Hahk'Zor
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 9604; -- Gorgon'och
UPDATE `creature_template` SET `DamageMultiplier`='3.9', `MeleeBaseAttackTime`='2000' WHERE `entry`='9718'; -- Ghok Bashguud (3.9D) (2000 MeleeBaseAttackTime)
UPDATE `creature_template` SET `DamageMultiplier`='5', `MeleeBaseAttackTime`='2000' WHERE `entry`='9736'; -- Quartermaster Zigris (5D) (2000 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200, `DamageMultiplier` = 1.35 WHERE `entry` = 10077; -- Deathmaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.7 WHERE `entry` = 10078; -- Terrorspark
UPDATE `creature_template` SET `DamageMultiplier`='2.5' WHERE `entry`='10081'; -- Dustwraith (0.6D) (2000 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10197; -- Mezzir the Howler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2800, `DamageMultiplier` = 1.68 WHERE `entry` = 10199; -- Grizzle Snowpaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1500, `DamageMultiplier` = 1 WHERE `entry` = 10200; -- Rak'shiri
UPDATE `creature_template` SET `DamageMultiplier`='8.5', `MeleeBaseAttackTime`='2000' WHERE `entry`='10201'; -- Lady Hederine (1D) (1141 MeleeBaseAttackTime) (838-1108 at 61, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10236; -- Wep (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10237; -- Yor <UNUSED> (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10238; -- Staggon (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.26 WHERE `entry` = 10356; -- Bayne
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10357; -- Ressan the Needler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10358; -- Fellicent's Shade
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10359; -- Sri'skulk
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='10393'; -- Skul (9D) (1166 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10559; -- Lady Vespia
UPDATE `creature_template` SET `DamageMultiplier`='6.66' WHERE `entry`='10584'; -- Urok Doomhowl (6.66D) (3200 MeleeBaseAttackTime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1200, `DamageMultiplier` = 1.26 WHERE `entry` = 10639; -- Rorgish Jowl
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10640; -- Oakpaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 10641; -- Branch Snapper
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.2 WHERE `entry` = 10642; -- Eck'alom
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.36 WHERE `entry` = 10643; -- Mugglefin
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1300, `DamageMultiplier` = 1.24 WHERE `entry` = 10644; -- Mist Howler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10647; -- Prince Raze
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 10817; -- Duggan Wildhammer (118-156 at 55, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10818; -- Death Knight Soulbearer (not confirmed attacktimer)
UPDATE `creature_template` SET `MinLevel`='59', `MaxLevel`='59', `DamageMultiplier`='1.25', `MeleeBaseAttackTime` = 2000 WHERE `entry`='10819'; -- Baron Bloodbane (1.25D) (2000 MeleeBaseAttackTime) (118-157 at 59, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 10820; -- Duke Ragereaver (not confirmed attacktimer) (align with classicmangos)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 10821; -- Hed'mush the Rotting (122-162 at 57, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 10822; -- Warlord Thresh'jin
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.2 WHERE `entry` = 10823; -- Zul'Brin Warpbranch
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 10824; -- Ranger Lord Hawkspear (130-172 at 60, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 10825; -- Gish the Unmoving
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 10826; -- Lord Darkscythe (122-162 at 57, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 10827; -- Deathspeaker Selendre
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 11580; -- Kelemis the Lifeless (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 11688; -- Cursed Centaur
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 12037; -- Ursol'lok
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 12431; -- Gorefang
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 12432; -- Old Vicejaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 12433; -- Krethis Shadowspinner
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14221; -- Gravis Slipknot
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1400, `DamageMultiplier` = 1 WHERE `entry` = 14222; -- Araga
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.46 WHERE `entry` = 14223; -- Cranky Benj
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.54 WHERE `entry` = 14224; -- 7:XT
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.46 WHERE `entry` = 14225; -- Prince Kellen
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14226; -- Kaskk
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 14227; -- Hissperak
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14228; -- Giggler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14229; -- Accursed Slitherblade
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14230; -- Burgle Eye
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14231; -- Drogoth the Roamer (51-68 at 37, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14232; -- Dart (53-70 at 38, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14233; -- Ripscale
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14234; -- Hayoc
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14235; -- The Rot
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.2 WHERE `entry` = 14236; -- Lord Angler (62-82 at 37, bestiary) - 44 in classic
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14237; -- Oozeworm (53-70 at 38, bestiary) - 42 in classic
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14266; -- Shanda the Spinner
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14268; -- Lord Condar
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 14269; -- Seeker Aqualon
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14270; -- Squiddic
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14271; -- Ribchaser
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 14272; -- Snarlflare
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14273; -- Boulderheart
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000' WHERE `entry`='14275'; -- Tamra Stormpike (1D) (1416 MeleeBaseAttackTime)  (63-83 at 28, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14276; -- Scargil
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 14277; -- Lady Zephris
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14278; -- Ro'Bark
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 14279; -- Creepthess
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14280; -- Big Samras
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.38 WHERE `entry` = 14281; -- Jimmy the Bleeder
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14339; -- Death Howl
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14340; -- Alshirr Banebreath
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14341; -- Felendor the Accuser (not confirmed attacktimer)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14342; -- Ragepaw (86-114 at 51, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14343; -- Olm the Wise
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14344; -- Mongress (85-112 at 50, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14345; -- The Ongar
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 14424; -- Mirelow (41-55 at 25, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.1 WHERE `entry` = 14425; -- Gnawbone
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 14426; -- Harb Foulmountain
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14427; -- Gibblesnik
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14428; -- Uruson
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.3 WHERE `entry` = 14429; -- Grimmaw
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1400, `DamageMultiplier` = 1.1 WHERE `entry` = 14430; -- Duskstalker
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14431; -- Fury Shelda
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14432; -- Threggil
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.4 WHERE `entry` = 14433; -- Sludginn
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14446; -- Fingat
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14447; -- Gilmorian
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2700, `DamageMultiplier` = 1 WHERE `entry` = 14448; -- Molt Thorn
UPDATE `creature_template` SET `DamageMultiplier`='7', `MeleeBaseAttackTime`='2000' WHERE `entry`='14471'; -- Setis (1D) (1141 MeleeBaseAttackTime) (741-982 at 61, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14472; -- Gretheer
UPDATE `creature_template` SET `DamageMultiplier`='3.7', `MeleeBaseAttackTime`='2000' WHERE `entry`='14475'; -- Rex Ashil (1D) (1175 MeleeBaseAttackTime) (362-480 at 57, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14476; -- Krellack
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14477; -- Grubthor
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14478; -- Huricanian
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14479; -- Twilight Lord Everun
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14487; -- Gluggle
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2800, `DamageMultiplier` = 1.3 WHERE `entry` = 14488; -- Roloch (96-127 at 38, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 900, `DamageMultiplier` = 1.49 WHERE `entry` = 14490; -- Rippa (48-64 at 44, bestiary) (variane mob?)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.25 WHERE `entry` = 14491; -- Kurmokk
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14492; -- Verifonix
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 14697; -- Lumbering Horror
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 16379; -- Spirit of the Damned (159-210 at 61, bestiary)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 16380; -- Bone Witch (159-210 at 61, bestiary)
-- TBC+
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.6 WHERE `entry` = 16854; -- Eldinarcus
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1 WHERE `entry` = 16855; -- Tregla
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 17144; -- Goretooth
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1800, `DamageMultiplier` = 1 WHERE `entry` = 18241; -- Crusty
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18677; -- Mekthorg the Wild
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 18678; -- Fulgorge
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18679; -- Vorakem Doomspeaker
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 1000, `DamageMultiplier` = 1.4 WHERE `entry` = 18680; -- Marticar (reduced due to low attacktime)
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18681; -- Coilfang Emissary
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18682; -- Bog Lurker
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18683; -- Voidhunter Yar
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18684; -- Bro'Gaz the Clanless
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3000, `DamageMultiplier` = 1.5 WHERE `entry` = 18685; -- Okrek
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 3000, `DamageMultiplier` = 1.5 WHERE `entry` = 18686; -- Doomsayer Jurim
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 18689; -- Crippler
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 18690; -- Morcrush
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 18692; -- Hemathion
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 18693; -- Speaker Mar'grom
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 18694; -- Collidus the Warp-Watcher
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18695; -- Ambassador Jerrikar
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18696; -- Kraator
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18697; -- Chief Engineer Lorthander
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.5 WHERE `entry` = 18698; -- Ever-Core the Punisher
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.8 WHERE `entry` = 20932; -- Nuramoc
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.15 WHERE `entry` = 22060; -- Fenissa the Assassin
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `DamageMultiplier` = 1.2 WHERE `entry` = 22062; -- Dr. Whitherlimb

