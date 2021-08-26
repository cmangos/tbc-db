-- Naxxramas Immunities / Stats 2.0
-- Align Rank, MinLevel, MaxLevel, Resistances, DamageSchool, MechanicImmuneMask, SchoolImmuneMask

-- align with classic-db (using classic-db data)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|8388625 WHERE `entry`='16034'; -- Plague Beast (1)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|8388625 WHERE `entry`='16125'; -- Unrelenting Deathknight (8388624)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|8388625 WHERE `entry`='16126'; -- Unrelenting Rider (8388624)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|8388625 WHERE `entry`='16127'; -- Spectral Trainee (8388624)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|8388625 WHERE `entry`='16148'; -- Spectral Deathknight (8388624)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|8388625 WHERE `entry`='16149'; -- Spectral Horse (8388624)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|8388625 WHERE `entry`='16150'; -- Spectral Rider (8388624)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|8388625 WHERE `entry`='16375'; -- Sewage Slime (8388624)
UPDATE `creature_template` SET `Rank`='0', `MechanicImmuneMask`=`MechanicImmuneMask`|1 WHERE `entry`='16124'; -- Unrelenting Trainee (1, 0)
UPDATE `creature_template` SET `MinLevel`='1', `MaxLevel`='1' WHERE `entry`='16137'; -- Naxxramas Military Sub-Boss Trigger (60, 60)
UPDATE `creature_template` SET `MaxLevel`='61' WHERE `entry`='16165'; -- Necro Knight (62)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1 WHERE `entry`='16286'; -- Spore (0)
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16363'; -- Grobbulus Cloud (1, 1)
UPDATE `creature_template` SET `MinLevel`='62', `MaxLevel`='62' WHERE `entry`='16385'; -- Lightning Totem (1, 1)
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60' WHERE `entry`='16400'; -- Toxic Tunnel (61)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|12584976 WHERE `entry`='16474'; -- Blizzard (0)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1 WHERE `entry`='16486'; -- Web Wrap (0)

-- classic-db bosses also miss interrupt immunity (650854235 tbc-db vs 617299803) - Add guessed Disarm Immunity
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15956'; -- Anub'Rekhan (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='15953'; -- Grand Widow Faerlina (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15952'; -- Maexxna (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15954'; -- Noth the Plaguebringer (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='15936'; -- Heigan the Unclean (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='16011'; -- Loatheb (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16061'; --  Instructor Razuvious (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='16060'; --  Gothik the Harvester (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16062'; -- Highlord Mograine (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16064'; -- Thane Korth'azz (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16065'; -- Lady Blaumeux (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16063'; -- Sir Zeliek (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16775'; -- Spirit of Mograine (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16776'; -- Spirit of Blaumeux (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16777'; -- Spirit of Zeliek (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|4|33554432 WHERE `entry`='16778'; -- Spirit of Korth'azz (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='16028'; -- Patchwerk (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15931'; -- Grobbulus (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15932'; -- Gluth (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15928'; -- Thaddius (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15929'; -- Stalagg (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15930'; -- Feugen (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|33554432 WHERE `entry`='15989'; -- Sapphiron (617299803)
UPDATE `creature_template` SET `MechanicImmuneMask`=650854235 WHERE `entry`='15990'; -- Kel'Thuzad (fumble (32) and disarm (4), can not be disarmed as he doesnt wield a weapon, fumble is generally considered working on bosses) (650854271)

-- https://classic.wowhead.com/npc=16060/gothik-the-harvester#comments:id=2920155:reply=1240589
-- https://classic.wowhead.com/guides/gothik-the-harvester-naxxramas-raid-strategy
-- "This is great because most mobs on the undead side are immune to most schools of magic, meaning the majority of the raid's melee will be on the undead side anyway!"
-- Spectral Mobs in general have a tendency to have this immunity mask
UPDATE `creature_template` SET `SchoolImmuneMask`='124' WHERE `entry`='16127'; -- Spectral Trainee
UPDATE `creature_template` SET `SchoolImmuneMask`='124' WHERE `entry`='16148'; -- Spectral Deathknight
UPDATE `creature_template` SET `SchoolImmuneMask`='124' WHERE `entry`='16149'; -- Spectral Horse
UPDATE `creature_template` SET `SchoolImmuneMask`='124' WHERE `entry`='16150'; -- Spectral Rider

-- Add "classic" SPELL_AURA_HASTE_SPELLS Immunity from vmangos
REPLACE INTO `creature_immunities` (`entry`, `Type`, `Value`) SELECT `entry` AS `entry`, 1, 216 FROM `creature_template` WHERE `entry` IN (
1284, -- Archbishop Benedictus
1748, -- Highlord Bolvar Fordragon
2425, -- Varimathras
2784, -- King Magni Bronzebeard
3057, -- Cairne Bloodhoof
3516, -- Arch Druid Fandral Staghelm
4949, -- Thrall
4968, -- Lady Jaina Proudmoore
5764, -- Guardian of Blizzard
6109, -- Azuregos
7846, -- Teremus the Devourer
7937, -- High Tinker Mekkatorque
7999, -- Tyrande Whisperwind
8017, -- Sen'jin Guardian
8680, -- Massive Infernal
9236, -- Shadow Hunter Vosh'gajin
9568, -- Overlord Wyrmthalak
9816, -- Pyroguard Emberseer
10162, -- Lord Victor Nefarius
10181, -- Lady Sylvanas Windrunner
10184, -- Onyxia
10339, -- Gyth
10363, -- General Drakkisath
10429, -- Warchief Rend Blackhand
10430, -- The Beast
10540, -- Vol'jin
11380, -- Jin'do the Hexxer
11382, -- Bloodlord Mandokir
11502, -- Ragnaros
11583, -- Nefarian
11662, -- Flamewaker Priest (classic-db and tbc-db have this one)
11981, -- Flamegor
11982, -- Magmadar
11983, -- Firemaw
11988, -- Golemagg the Incinerator
12017, -- Broodlord Lashlayer
12018, -- Majordomo Executus
12056, -- Baron Geddon
12057, -- Garr
12098, -- Sulfuron Harbinger
12118, -- Lucifron
12159, -- Korrak the Bloodrager
12259, -- Gehennas
12264, -- Shazzrah
12397, -- Lord Kazzak
12435, -- Razorgore the Untamed
12756, -- Lady Onyxia
13020, -- Vaelastrasz the Corrupt
14020, -- Chromaggus
14435, -- Prince Thunderaan
14507, -- High Priest Venoxis
14509, -- High Priest Thekal
14510, -- High Priestess Mar'li
14515, -- High Priestess Arlokk
14517, -- High Priestess Jeklik
14601, -- Ebonroc
14834, -- Hakkar
14862, -- Emissary Roman'khan
14884, -- Parasitic Serpent
14887, -- Ysondre
14888, -- Lethon
14889, -- Emeriss
14890, -- Taerar
14941, -- High Priestess Jeklik Transform Visual
14988, -- Ohgan
15047, -- Gurubashi
15082, -- Gri'lek
15083, -- Hazza'rah
15085, -- Wushoolay
15114, -- Gahz'ranka
15192, -- Anachronos
15203, -- Prince Skaldrenox
15204, -- High Marshal Whirlaxis
15205, -- Baron Kazum
15275, -- Emperor Vek'nilash
15276, -- Emperor Vek'lor
15299, -- Viscidus
15305, -- Lord Skwol
15339, -- Ossirian the Unscarred
15340, -- Moam
15341, -- General Rajaxx
15348, -- Kurinnaxx
15362, -- Malfurion Stormrage
15369, -- Ayamiss the Hunter
15370, -- Buru the Gorger
15378, -- Merithra of the Dream
15379, -- Caelestrasz
15380, -- Arygos
15381, -- Anachronos the Ancient
15382, -- Fandral Staghelm
15410, -- Anachronos Dragon Form
15411, -- Arygos Dragon Form
15412, -- Caelestrasz Dragon Form
15413, -- Merithra Dragon Form
15427, -- Merithra's Wake
15467, -- Omen
15481, -- Spirit of Azuregos
15491, -- Eranikus, Tyrant of the Dream
15507, -- Buru the Gorger Transform Visual
15509, -- Princess Huhuran
15510, -- Fankriss the Unyielding
15511, -- Lord Kri
15516, -- Battleguard Sartura
15517, -- Ouro
15543, -- Princess Yauj
15544, -- Vem
15571, -- Maws
15589, -- Eye of C'Thun
15625, -- Twilight Corrupter
15628, -- Eranikus the Redeemed
15633, -- Tyrande
15726, -- Eye Tentacle
15727, -- C'Thun
15740, -- Colossus of Zora
15741, -- Colossus of Regal
15742, -- Colossus of Ashi
15818, -- Lieutenant General Nokhor
15928, -- Thaddius
15929, -- Stalagg
15930, -- Feugen
15931, -- Grobbulus
15932, -- Gluth
15936, -- Heigan the Unclean
15952, -- Maexxna
15953, -- Grand Widow Faerlina
15954, -- Noth the Plaguebringer
15956, -- Anub'Rekhan
15963, -- The Master's Eye
15989, -- Sapphiron
15990, -- Kel'Thuzad
16011, -- Loatheb
16028, -- Patchwerk
16042, -- Lord Valthalak
16060, -- Gothik the Harvester
16061, -- Instructor Razuvious
16062, -- Highlord Mograine
16063, -- Sir Zeliek
16064, -- Thane Korth'azz
16065, -- Lady Blaumeux
16387, -- Atiesh
16775, -- Spirit of Mograine
16776, -- Spirit of Blaumeux
16777, -- Spirit of Zeliek
16778 -- Spirit of Korth'azz
);

-- WIP for another time
-- mechanic_immune_mask diff for "Naxxramas Trash Mobs" - there is too much wrong/unknown here to be sure to be able to port this
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015226896 WHERE `entry`='16427'; -- Soldier of the Frozen Wastes (8388624)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015226896 WHERE `entry`='16244'; -- Infectious Ghoul (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015226896 WHERE `entry`='16360'; -- Zombie Chow (8388624)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952754 WHERE `entry`='16428'; -- Unstoppable Abomination (8388624)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952754 WHERE `entry`='16429'; -- Soul Weaver (8388624)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1006764032 WHERE `entry`='16124'; -- Unrelenting Trainee (1)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1006764032 WHERE `entry`='16148'; -- Spectral Deathknight (8388624)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023391482 WHERE `entry`='15974'; -- Dread Creeper (1)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023391482 WHERE `entry`='15975'; -- Carrion Spinner (1)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023391482 WHERE `entry`='15977'; -- Infectious Skitterer (1)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023391482 WHERE `entry`='16573'; -- Crypt Guard (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023393531 WHERE `entry`='15976'; -- Venom Stalker (1)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023393531 WHERE `entry`='15978'; -- Crypt Reaver (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023393531 WHERE `entry`='15979'; -- Tomb Horror (8388624)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023393531 WHERE `entry`='16142'; -- Bile Sludge (0)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023393531 WHERE `entry`='16453'; -- Necro Stalker (1)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952723 WHERE `entry`='16021'; -- Living Monstrosity (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952723 WHERE `entry`='16146'; -- Deathknight (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952723 WHERE `entry`='16163'; -- Deathknight Cavalier (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952723 WHERE `entry`='16165'; -- Necro Knight (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952723 WHERE `entry`='16216'; -- Unholy Swords (8388624)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952723 WHERE `entry`='16451'; -- Deathknight Vindicator (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952723 WHERE `entry`='16452'; -- Necro Knight Guardian (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952723 WHERE `entry`='16861'; -- Death Lord (8388624)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023391483 WHERE `entry`='15980'; -- Naxxramas Cultist (1)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023391483 WHERE `entry`='15981'; -- Naxxramas Acolyte (1)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022066674 WHERE `entry`='16017'; -- Patchwork Golem (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022066674 WHERE `entry`='16018'; -- Bile Retcher (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022066674 WHERE `entry`='16025'; -- Stitched Spewer (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022066674 WHERE `entry`='16029'; -- Sludge Belcher (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015758352 WHERE `entry`='16020'; -- Mad Scientist (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015751184 WHERE `entry`='16022'; -- Surgical Assistant (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015758354 WHERE `entry`='16024'; -- Embalming Slime (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015751186 WHERE `entry`='16027'; -- Living Poison (8388624)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015751186 WHERE `entry`='16164'; -- Shade of Naxxramas (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015751186 WHERE `entry`='16449'; -- Spirit of Naxxramas (8388624)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022049811 WHERE `entry`='16034'; -- Plague Beast (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022049811 WHERE `entry`='16243'; -- Plague Slime (1) (spellschool immunity based on displayid, same as blobs in wailing caverns)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022042641 WHERE `entry`='16036'; -- Frenzied Bat (0)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022042641 WHERE `entry`='16236'; -- Eye Stalk (1)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022042641 WHERE `entry`='16297'; -- Mutated Grub (1)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022042643 WHERE `entry`='16037'; -- Plagued Bat (1)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019945555 WHERE `entry`='16067'; -- Skeletal Steed (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1006764050 WHERE `entry`='16125'; -- Unrelenting Deathknight (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1006764050 WHERE `entry`='16149'; -- Spectral Horse (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1006632960 WHERE `entry`='16127'; -- Spectral Trainee (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015693311 WHERE `entry`='16150'; -- Spectral Rider (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1023033343 WHERE `entry`='16126'; -- Unrelenting Rider (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1019952727 WHERE `entry`='16145'; -- Deathknight Captain (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015756368 WHERE `entry`='16167'; -- Bony Construct (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1073725439 WHERE `entry`='16168'; -- Stoneskin Gargoyle (8388625)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1073725439 WHERE `entry`='16446'; -- Plagued Gargoyle (8388624)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|646016863 WHERE `entry`='16193'; -- Skeletal Smith (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022049875 WHERE `entry`='16368'; -- Necropolis Acolyte (1)
-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1022049875 WHERE `entry`='16448'; -- Plagued Deathhound (0)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1015758450 WHERE `entry`='16375'; -- Sewage Slime (8388625)

-- UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`|1021518352 WHERE `entry`='16447'; -- Plagued Ghoul (8388625)

