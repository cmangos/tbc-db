-- TBC only: Correct some classic npcs which got expansion = 1 in tbcc, correct their stats
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828 WHERE `entry`='68'; -- Stormwind City Guard
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828 WHERE `entry`='3084'; -- Bluffwatcher
UPDATE `creature_template` SET `Expansion`='1', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828 WHERE `entry`='3571'; -- Teldrassil Sentinel
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828 WHERE `entry`='4262'; -- Darnassus Sentinel
UPDATE `creature_template` SET `HealthMultiplier`='1.3', `MinLevelHealth` = 7688, `MaxLevelHealth` = 7688 WHERE `entry`='5546'; -- Grunt Zuul
UPDATE `creature_template` SET `HealthMultiplier`='1.3', `MinLevelHealth` = 7688, `MaxLevelHealth` = 7688 WHERE `entry`='5547'; -- Grunt Tharlak
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828 WHERE `entry`='5595'; -- Ironforge Guard
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828 WHERE `entry`='5624'; -- Undercity Guardian
UPDATE `creature_template` SET `Expansion`='1', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828, `Faction` = 877 WHERE `entry`='8017'; -- Sen'jin Guardian
UPDATE `creature_template` SET `Expansion`='1', `MinLevelHealth` = 5228, `MaxLevelHealth` = 5228 WHERE `entry`='11099'; -- Argent Guard
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828 WHERE `entry`='15137'; -- Menethil Elite
UPDATE `creature_template` SET `HealthMultiplier`='2', `MinLevelHealth` = 11828, `MaxLevelHealth` = 11828 WHERE `entry`='15138'; -- Silverpine Elite
UPDATE `creature_template` SET `HealthMultiplier`='329.505', `MinLevelHealth` = 1750001, `MaxLevelHealth` = 1750001 WHERE `entry`='4968'; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `HealthMultiplier`='0.14059', `MinLevelHealth` = 700, `MaxLevelHealth` = 700 WHERE `entry`='12473'; -- Arcanite Dragonling

-- TBC+
-- Sen'jin Guards Mobs - needs additon in s.43783 switchcase
-- Add Civilian Status for Faction Darkspear Trolls 126 + Civilian Flag in TBCC
-- CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT, CREATURE_EXTRA_FLAG_CIVILIAN
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2|65536 WHERE `entry` IN (
5880, -- Un'Thuwa
5884, -- Mai'ah
5887, -- Canaga Earthcaller
5892, -- Searn Firewarder
5941, -- Lau'Tiki
5942, -- Zansoa
6408, -- Ula'elek
6868, -- Jarkal Mossmeld
7010, -- Zilzibin Drumlore
7311, -- Uthel'nay
7952, -- Zjolnir
7953, -- Xar'Ti
9987, -- Shoja'my
10369, -- Trayexir
11814, -- Kali Remik
11818, -- Orik'ando
12027, -- Tukk
12028, -- Lah'Mawhani
12030, -- Malux
12031, -- Mai'Lahii
12032, -- Lui'Mala
12033, -- Wulan
12045, -- Hae'Wilani
12719, -- Marukai
12720, -- Framnali
12721, -- Mitsuwa
12736, -- Je'neu Sancrea
12961, -- Kil'Hiwana
12962, -- Wik'Tar
14727, -- Vehena
15469, -- Senior Sergeant T'kelah
15515, -- Skinner Jamani
15534, -- Fisherman Lin'do
15761, -- Officer Vu'Shalay
18011, -- Zurai
18012, -- Reavij
18013, -- Shadow Hunter Denjai
18014, -- Witch Doctor Tor'gash
18015, -- Gambarinka
18016, -- Magasha
18017, -- Seer Janidi
18018, -- Zurjaya
2497, -- Nimboya
2519, -- Kin'weelay
2703, -- Zengu
2706, -- Tor'gan
3140, -- Lar Prowltusk
3154, -- Jen'shan
3184, -- Miao'zan
3185, -- Mishiki
3186, -- K'waii
3187, -- Tai'tasi
3188, -- Master Gadrin
3189, -- Kor'ghan
3190, -- Rhinag
3194, -- Vel'rin Fang
3287, -- Hana'zua
3304, -- Master Vornal
3399, -- Zamja
3400, -- Xen'to
3401, -- Shenthul
3402, -- Zando'zan
3404, -- Jandi
3405, -- Zeal'aya
3411, -- Denni'ka
3428, -- Korran
3431, -- Grenthar
3482, -- Tari'qa
3484, -- Kil'hala
3487, -- Kalyimah Stormcloud
3490, -- Hula'mahi
3706, -- Tai'jin
3707, -- Ken'jai
3933, -- Hai'zan
4197, -- Ken'zigla
5613, -- Doyo'da
18035, -- Scout Jyoba
18188, -- Tatai
18243, -- Lorti
18244, -- Khalan
18245, -- Merajit
18246, -- Tayemba
18247, -- Farbosi
18791, -- Du'ga
20762 -- Gur'zil
);

-- summoned by s.43783 which can trigger chain reactions
-- Add CREATURE_EXTRA_FLAG_NO_CALL_ASSIST for Guard Npcs to prevent them from chain pulling more civilans, summoning even more guards
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2048 WHERE `entry` IN (
68, -- Stormwind City Guard
727, -- Ironforge Mountaineer
853, -- Coldridge Mountaineer
1423, -- Stormwind Guard
1642, -- Northshire Guard
2386, -- Southshore Guard
2405, -- Tarren Mill Deathguard
2621, -- Hammerfall Guardian
3084, -- Bluffwatcher
3210, -- Brave Proudsnout
3211, -- Brave Lightninghorn
3213, -- Brave Running Wolf
3214, -- Brave Greathoof
3296, -- Orgrimmar Grunt
3501, -- Horde Guard
3571, -- Teldrassil Sentinel
4262, -- Darnassus Sentinel
4844, -- Shadowforge Surveyor
4979, -- Theramore Guard
5595, -- Ironforge Guard
5624, -- Undercity Guardian
5952, -- Den Grunt
5953, -- Razor Hill Grunt
6086, -- Auberdine Sentinel
6087, -- Astranaar Sentinel
7489, -- Silverpine Deathguard
7730, -- Stonetalon Grunt
7939, -- Feathermoon Sentinel
7980, -- Deathguard Elite
8017, -- Sen'jin Guardian
8055, -- Thelsamar Mountaineer
8096, -- Protector of the People
8147, -- Camp Mojache Brave
8151, -- Nijel's Point Guard
8154, -- Ghost Walker Brave
8155, -- Kargath Grunt
9525, -- Freewind Brave
10037, -- Lakeshire Guard
10038, -- Night Watch Guard
10696, -- Refuge Pointe Defender
12338, -- Shadowprey Guardian
12903, -- Splintertree Guard
16222, -- Silvermoon City Guardian
16733, -- Exodar Peacekeeper
16921, -- Ammen Vale Guardian
17549, -- Blood Watch Peacekeeper
18038 -- Azuremyst Peacekeeper
);

