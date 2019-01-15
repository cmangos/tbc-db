-- diff classic-db for wrong tbc-db speed values and recheck with sniff
-- some of these might be left in open todocherrypicks, but some were just missed

-- checked with sniff and classic-db is right
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1000'; -- Watcher Blomberg
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1098'; -- Watcher Merant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1099'; -- Watcher Gelwin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1100'; -- Watcher Selkin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1101'; -- Watcher Thayer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1203'; -- Watcher Sarys
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1204'; -- Watcher Corwin
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1839'; -- Scarlet High Clerist
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1840'; -- Grand Inquisitor Isillien
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4856'; -- Stonevault Cave Hunter
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='6239'; -- Cyclonian
UPDATE `creature_template` SET `SpeedWalk`='1.5' WHERE `entry`='7172'; -- Lore Keeper of Norgannon
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE `entry`='8035'; -- Dark Iron Land Mine
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8611'; -- Idol Room Spawner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10383'; -- Broken Cadaver
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10439'; -- Ramstein the Gorger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10482'; -- Risen Lackey
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='10813'; -- Balnazzar
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11030'; -- Mindless Undead
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11058'; -- Fras Siabi
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11120'; -- Crimson Hammersmith
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11197'; -- Mindless Skeleton
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11284'; -- Dark Shade
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11878'; -- Nathanos Blightcaller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12208'; -- Conquered Soul of the Blightcaller
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14241'; -- Ironbark the Redeemed

-- not found, going with classic-db
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='1849'; -- Dreadwhisper
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3151'; -- Captain Obvious
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3152'; -- Cap'n Copyright
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3895'; -- Captain Noteo
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='3896'; -- Captain Hart
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4098'; -- Galak Pack Runner
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4476'; -- Screaming Haunt
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='4497'; -- Captain Quirk
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5348'; -- Dreamwatcher Forktongue
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5776'; -- Evolving Ectoplasm (Red)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5777'; -- Evolving Ectoplasm (Green)
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='5778'; -- Evolving Ectoplasm (Black)
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='7266'; -- Ember
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='0.857143' WHERE `entry`='7738'; -- Burning Servant
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='7898'; -- Pirate treasure trigger mob
UPDATE `creature_template` SET `SpeedRun`='1.92' WHERE `entry`='8280'; -- Shleipnarr
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='8924'; -- The Behemoth
UPDATE `creature_template` SET `SpeedRun`='2' WHERE `entry`='10268'; -- Gizrul the Slavener
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11143'; -- Postmaster Malown
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11179'; -- Crystal Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11439'; -- Illusion of Jandice Barov
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='11494'; -- Alzinn Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12126'; -- Lord Tirion Fordring
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12128'; -- Crimson Elite
UPDATE `creature_template` SET `SpeedWalk`='2.09', `SpeedRun`='1.14286' WHERE `entry`='12397'; -- Lord Kazzak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='12536'; -- Illusion: Black Dragonkin
UPDATE `creature_template` SET `SpeedWalk`='1.1' WHERE `entry`='12777'; -- Captain Dirgehammer
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='13477'; -- Noxxion Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14027'; -- Trigger Mulverick
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14028'; -- Trigger Jeztor
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14029'; -- Trigger Ichman
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14030'; -- Trigger Slidore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14031'; -- Trigger Vipore
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14262'; -- Green Drakonid
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14263'; -- Bronze Drakonid
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14370'; -- Cadaverous Worm
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14397'; -- Mana Burst
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14422'; -- BRD Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14453'; -- Orb of Domination
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14488'; -- Roloch
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14495'; -- Invisible Trigger One
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='14606'; -- Drakonid Corpse Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15221'; -- Frankal Invisible Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15222'; -- Rutgar Invisible Trigger
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.71429' WHERE `entry`='15630'; -- Spawn of Fankriss
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15717'; -- Ouro Trigger
UPDATE `creature_template` SET `SpeedWalk`='2.4', `SpeedRun`='1.42857' WHERE `entry`='15802'; -- Flesh Tentacle
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='15922'; -- Viscidus Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16073'; -- Spirit of Lord Valthalak
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16097'; -- Isalien
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16336'; -- Scourge Invasion Minion, spawner, Ghost/Skeleton
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16338'; -- Scourge Invasion Minion, spawner, Ghoul/Skeleton
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16387'; -- Atiesh
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16430'; -- Ashbringer Trigger
UPDATE `creature_template` SET `SpeedWalk`='1' WHERE `entry`='16775'; -- Spirit of Mograine
UPDATE `creature_template` SET `SpeedWalk`='0.8', `SpeedRun`='0.285714' WHERE `entry`='16783'; -- Plague Slime (Blue)
UPDATE `creature_template` SET `SpeedWalk`='0.8', `SpeedRun`='0.285714' WHERE `entry`='16784'; -- Plague Slime (Red)
UPDATE `creature_template` SET `SpeedWalk`='0.8', `SpeedRun`='0.285714' WHERE `entry`='16785'; -- Plague Slime (Green)

-- differged by classic-db and tbc-db with sniff
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5) WHERE `entry` = 12900; -- Somnus
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5) WHERE `entry`='2478'; -- Haren Swifthoof
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5) WHERE `entry`='2477'; -- Gradok
UPDATE `creature_template` SET `SpeedWalk`= (1.94444 / 2.5), `SpeedRun`= (8 / 7) WHERE `entry`='2754'; -- Anathemus
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5) WHERE `entry`='7170'; -- Thragomm
UPDATE `creature_template` SET `SpeedWalk`= (4.16667 / 2.5) WHERE `entry`='7228'; -- Ironaya
UPDATE `creature_template` SET `SpeedWalk`= (2.77778 / 2.5), `SpeedRun`= (8 / 7) WHERE `entry`='8776'; -- Emerald Dragon Whelp
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5) WHERE `entry`='10204'; -- Misha
UPDATE `creature_template` SET `SpeedWalk`= (3 / 2.5), `SpeedRun`= (10 / 7) WHERE `entry`='10264'; -- Solakar Flamewreath
UPDATE `creature_template` SET `SpeedWalk`= (2.22222 / 2.5) WHERE `entry`='10394'; -- Black Guard Sentry
UPDATE `creature_template` SET `SpeedWalk`= (1.94444 / 2.5) WHERE `entry`='10808'; -- Timmy the Cruel
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5), `SpeedRun`= (8 / 7) WHERE `entry`='11076'; -- Cauldron Lord Razarch
UPDATE `creature_template` SET `SpeedWalk`= (2.77778 / 2.5) WHERE `entry`='11263'; -- Spectral Projection
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5), `SpeedRun`= (15 / 7) WHERE `entry`='11460'; -- Alzzin's Minion
UPDATE `creature_template` SET `SpeedWalk`= (2.22222 / 2.5), `SpeedRun`= (8 / 7) WHERE `entry`='11598'; -- Risen Guardian
UPDATE `creature_template` SET `SpeedWalk`= (2.77778 / 2.5), `SpeedRun`= (8 / 7) WHERE `entry`='13716'; -- Celebras the Redeemed
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5), `SpeedRun`= (13 / 7) WHERE `entry`='14350'; -- Hydroling
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5), `SpeedRun`= (9.7 / 7) WHERE `entry`='14566'; -- Ancient Equine Spirit
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5), `SpeedRun`= (15 / 7) WHERE `entry`='14988'; -- Ohgan
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5) WHERE `entry`='15730'; -- Pat's Snowcloud Guy
UPDATE `creature_template` SET `SpeedWalk`= (0.01 / 2.5), `SpeedRun`= (0.01 / 7) WHERE `entry`='16363'; -- Grobbulus Cloud
UPDATE `creature_template` SET `SpeedWalk`= (2.5 / 2.5), `SpeedRun`= (15 / 7) WHERE `entry`='17055'; -- Maexxna Spiderling

