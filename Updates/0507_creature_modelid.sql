-- Bring Diversity to tbc-db by removing static modelid from most npcs
UPDATE `creature` SET `modelid` = 0;
-- Spawns that seemingly need modelid != 0
UPDATE `creature` SET `modelid` = 20577 WHERE `id` = 21419; -- Infernal Attacker
UPDATE `creature` SET `modelid` = 14515 WHERE `id` = 21060; -- Enraged Air Spirit
UPDATE `creature` SET `modelid` = 17188 WHERE `id` = 22332; -- Brood of Neltharaku
UPDATE `creature` SET `modelid` = 16387 WHERE `id` = 16842 AND `guid` IN (72636,72637); -- Honor Hold Defender (RP old man have old man speech)
UPDATE `creature` SET `modelid` = 16502 WHERE `id` = 19937; -- Commander Hogarth
UPDATE `creature` SET `modelid` = 16861 WHERE `id` = 17432; -- Stillpine Hunter
UPDATE `creature` SET `modelid` = 11363 WHERE `id` = 17439; -- Stillpine Hunter

-- correct some inconsistencies
UPDATE `creature_template` SET `modelid2`='7108' WHERE `entry`='638'; -- Goblin Mercenary
UPDATE `creature_template` SET `modelid3`='6923', `modelid4`='6924' WHERE `entry`='1211'; -- Leper Gnome
UPDATE `creature_template` SET `modelid1`='10346', `modelid2`='10347', `modelid3`='10348', `modelid4`='10349' WHERE `entry`='1885'; -- Scarlet Smith
UPDATE `creature_template` SET `modelid1`='5015', `modelid2`='5016', `modelid3`='5017', `modelid4`='5018' WHERE `entry`='1949'; -- Servant of Azora
UPDATE `creature_template` SET `modelid2`='3634' WHERE `entry`='2434'; -- Shadowy Assassin
UPDATE `creature_template` SET `modelid1`='1038' WHERE `entry`='2635'; -- Elder Saltwater Crocolisk
UPDATE `creature_template` SET `modelid1`='1167' WHERE `entry`='2809'; -- Boar
UPDATE `creature_template` SET `modelid1`='1206', `modelid2`='6303', `modelid3`='2957', `modelid4`='2958' WHERE `entry`='2914'; -- Snake
UPDATE `creature_template` SET `modelid1`='3912', `modelid3`='7237', `modelid4`='0' WHERE `entry`='3282'; -- Venture Co. Mercenary
UPDATE `creature_template` SET `modelid1`='21014', `modelid2`='5577', `modelid3`='4225', `modelid4`='4226' WHERE `entry`='3727'; -- Dark Strand Enforcer
UPDATE `creature_template` SET `modelid1`='4211', `modelid2`='4232', `modelid3`='4233', `modelid4`='4234' WHERE `entry`='3840'; -- Druid of the Fang
UPDATE `creature_template` SET `modelid2`='3228' WHERE `entry`='3876'; -- Traumatized Spirit
UPDATE `creature_template` SET `modelid2`='4158' WHERE `entry`='3893'; -- Forsaken Scout
UPDATE `creature_template` SET `modelid2`='3920', `modelid3`='1122', `modelid4`='3921' WHERE `entry`='3990'; -- Venture Co. Cutter
UPDATE `creature_template` SET `modelid2`='3937', `modelid3`='3938' WHERE `entry`='3997'; -- Venture Co. Overboss
UPDATE `creature_template` SET `modelid2`='4101', `modelid3`='4102', `modelid4`='4103' WHERE `entry`='4069'; -- Venture Co. Planner
UPDATE `creature_template` SET `modelid2`='3926', `modelid3`='1122', `modelid4`='3927' WHERE `entry`='4071'; -- Venture Co. Grinder
UPDATE `creature_template` SET `modelid1`='1141', `modelid2`='1418', `modelid3`='2176' WHERE `entry`='4075'; -- Rat
UPDATE `creature_template` SET `modelid2`='2608' WHERE `entry`='4306'; -- Scarlet Torturer
UPDATE `creature_template` SET `modelid1`='4699', `modelid2`='4700', `modelid3`='11299', `modelid4`='11300' WHERE `entry`='4663'; -- Burning Blade Augur
UPDATE `creature_template` SET `modelid1`='4705', `modelid2`='4706', `modelid3`='11307', `modelid4`='11308' WHERE `entry`='4667'; -- Burning Blade Shadowmage
UPDATE `creature_template` SET `modelid1`='1308', `modelid2`='1232', `modelid3`='10914', `modelid4`='0' WHERE `entry`='4700'; -- Aged Kodo
UPDATE `creature_template` SET `modelid1`='2767', `modelid2`='2768', `modelid3`='10915', `modelid4`='0' WHERE `entry`='4702'; -- Ancient Kodo
UPDATE `creature_template` SET `modelid1`='4707', `modelid2`='4708', `modelid3`='11303', `modelid4`='11304' WHERE `entry`='4705'; -- Burning Blade Invoker
UPDATE `creature_template` SET `modelid2`='4840' WHERE `entry`='4947'; -- Theramore Lieutenant
UPDATE `creature_template` SET `modelid2`='4284' WHERE `entry`='4970'; -- Defias Agent
UPDATE `creature_template` SET `modelid2`='2145', `modelid3`='2146', `modelid4`='2147' WHERE `entry`='5043'; -- Defias Rioter
UPDATE `creature_template` SET `modelid2`='4672', `modelid3`='4673', `modelid4`='4674' WHERE `entry`='5044'; -- Theramore Skirmisher
UPDATE `creature_template` SET `modelid2`='7671', `modelid3`='7672' WHERE `entry`='5226'; -- Murk Worm
UPDATE `creature_template` SET `modelid2`='6671' WHERE `entry`='5259'; -- Atal'ai Witch Doctor
UPDATE `creature_template` SET `modelid2`='4772' WHERE `entry`='5267'; -- Unliving Atal'ai
UPDATE `creature_template` SET `modelid2`='6676' WHERE `entry`='5270'; -- Atal'ai Corpse Eater
UPDATE `creature_template` SET `modelid2`='4774' WHERE `entry`='5271'; -- Atal'ai Deathwalker
UPDATE `creature_template` SET `modelid2`='6677' WHERE `entry`='5273'; -- Atal'ai High Priest
UPDATE `creature_template` SET `modelid2`='5166' WHERE `entry`='5524'; -- Caravan Watcher
UPDATE `creature_template` SET `modelid2`='14551', `modelid3`='14549' WHERE `entry`='5525'; -- Caravan Packhorse
UPDATE `creature_template` SET `modelid2`='802', `modelid3`='707', `modelid4`='749' WHERE `entry`='5554'; -- [PH] PVP Wildlife
UPDATE `creature_template` SET `modelid1`='6926', `modelid2`='6927', `modelid3`='6928', `modelid4`='6929' WHERE `entry`='5568'; -- Captured Leper Gnome
UPDATE `creature_template` SET `modelid1`='3524', `modelid2`='3525', `modelid3`='3526', `modelid4`='3527' WHERE `entry`='5595'; -- Ironforge Guard
UPDATE `creature_template` SET `modelid1`='3980', `modelid2`='3979', `modelid3`='3978', `modelid4`='3977' WHERE `entry`='5735'; -- Caged Human Female
UPDATE `creature_template` SET `modelid1`='3976', `modelid2`='3975', `modelid3`='3974', `modelid4`='3973' WHERE `entry`='5736'; -- Caged Human Male
UPDATE `creature_template` SET `modelid2`='4113', `modelid3`='4114', `modelid4`='4115' WHERE `entry`='5737'; -- Caged Dwarf Female
UPDATE `creature_template` SET `modelid2`='360', `modelid3`='2028', `modelid4`='358' WHERE `entry`='5763'; -- Nightmare Ectoplasm
UPDATE `creature_template` SET `modelid2`='2176', `modelid3`='1825', `modelid4`='2955' WHERE `entry`='5764'; -- Guardian of Blizzard
UPDATE `creature_template` SET `modelid2`='1127', `modelid3`='549' WHERE `entry`='5889'; -- Mesa Earth Spirit
UPDATE `creature_template` SET `modelid2`='1127', `modelid3`='549' WHERE `entry`='5890'; -- Redrock Earth Spirit
UPDATE `creature_template` SET `modelid2`='1405', `modelid3`='2172' WHERE `entry`='5896'; -- Fire Spirit
UPDATE `creature_template` SET `modelid2`='1747', `modelid3`='4317', `modelid4`='3005' WHERE `entry`='5914'; -- Deviate Nightmare
UPDATE `creature_template` SET `modelid2`='6716', `modelid3`='6717', `modelid4`='6718' WHERE `entry`='5995'; -- Nethergarde Worker
UPDATE `creature_template` SET `modelid2`='6925' WHERE `entry`='6221'; -- Addled Leper
UPDATE `creature_template` SET `modelid1`='6932', `modelid2`='6933', `modelid3`='6934', `modelid4`='6935' WHERE `entry`='6222'; -- Leprous Technician
UPDATE `creature_template` SET `modelid2`='4971', `modelid3`='4969', `modelid4`='4970' WHERE `entry`='6240'; -- Affray Challenger
UPDATE `creature_template` SET `modelid2`='2478' WHERE `entry`='6575'; -- Scarlet Trainee
UPDATE `creature_template` SET `modelid2`='5561', `modelid3`='4606' WHERE `entry`='6748'; -- Water Spirit
UPDATE `creature_template` SET `modelid1`='5557', `modelid2`='5558', `modelid3`='5559', `modelid4`='5560' WHERE `entry`='6827'; -- Crab
UPDATE `creature_template` SET `modelid2`='2341' WHERE `entry`='6866'; -- Defias Bodyguard
UPDATE `creature_template` SET `modelid2`='6396', `modelid3`='11284', `modelid4`='11285' WHERE `entry`='7116'; -- Jaedenar Dreadweaver
UPDATE `creature_template` SET `modelid2`='6404', `modelid3`='11286', `modelid4`='11287' WHERE `entry`='7117'; -- Jaedenar Instigator
UPDATE `creature_template` SET `modelid2`='6402', `modelid3`='11289', `modelid4`='11290' WHERE `entry`='7119'; -- Jaedenar Summoner
UPDATE `creature_template` SET `modelid2`='6408' WHERE `entry`='7122'; -- Shadow Council Champion
UPDATE `creature_template` SET `modelid2`='6430' WHERE `entry`='7270'; -- Sandfury Zombie
UPDATE `creature_template` SET `modelid2`='6437' WHERE `entry`='7276'; -- Zul'Farrak Dead Hero
UPDATE `creature_template` SET `modelid2`='6418' WHERE `entry`='7286'; -- Zul'Farrak Zombie
UPDATE `creature_template` SET `modelid2`='6128' WHERE `entry`='7360'; -- Dun Garok Soldier
UPDATE `creature_template` SET `modelid2`='11652', `modelid3`='11651' WHERE `entry`='7401'; -- Draenei Refugee
UPDATE `creature_template` SET `modelid2`='4842', `modelid3`='4843', `modelid4`='4844' WHERE `entry`='7663'; -- Ashenvale Warrior
UPDATE `creature_template` SET `modelid2`='5574' WHERE `entry`='7805'; -- Wastewander Scofflaw
UPDATE `creature_template` SET `modelid2`='6956' WHERE `entry`='7896'; -- Southsea Buccaneer
UPDATE `creature_template` SET `modelid2`='4626' WHERE `entry`='7898'; -- Pirate treasure trigger mob
UPDATE `creature_template` SET `modelid2`='6960', `modelid3`='6961', `modelid4`='6962' WHERE `entry`='7899'; -- Treasure Hunting Pirate
UPDATE `creature_template` SET `modelid2`='6964', `modelid3`='6965', `modelid4`='6966' WHERE `entry`='7901'; -- Treasure Hunting Swashbuckler
UPDATE `creature_template` SET `modelid2`='6958' WHERE `entry`='7902'; -- Treasure Hunting Buccaneer
UPDATE `creature_template` SET `modelid2`='3257' WHERE `entry`='7906'; -- Goldshire Guard
UPDATE `creature_template` SET `modelid1`='7012', `modelid2`='7013', `modelid3`='7014', `modelid4`='7015' WHERE `entry`='7939'; -- Feathermoon Sentinel
UPDATE `creature_template` SET `modelid2`='4084' WHERE `entry`='8017'; -- Sen'jin Guardian
UPDATE `creature_template` SET `modelid2`='1608' WHERE `entry`='8055'; -- Thelsamar Mountaineer
UPDATE `creature_template` SET `modelid1`='7308', `modelid2`='7309', `modelid3`='7310', `modelid4`='7311' WHERE `entry`='8096'; -- Protector of the People
UPDATE `creature_template` SET `modelid2`='7766' WHERE `entry`='8338'; -- Dark Iron Marksman
UPDATE `creature_template` SET `modelid2`='7610', `modelid3`='7611', `modelid4`='7612' WHERE `entry`='8389'; -- Horizon Scout Engineer
UPDATE `creature_template` SET `modelid2`='7815' WHERE `entry`='8504'; -- Dark Iron Sentry
UPDATE `creature_template` SET `modelid2`='10384', `modelid3`='10385', `modelid4`='10386' WHERE `entry`='8552'; -- Necrolyte
UPDATE `creature_template` SET `modelid2`='6544' WHERE `entry`='8880'; -- Mechastrider
UPDATE `creature_template` SET `modelid1`='6448', `modelid2`='6079', `modelid3`='9952', `modelid4`='6080' WHERE `entry`='8882'; -- Riding Tiger
UPDATE `creature_template` SET `modelid1`='2402', `modelid2`='2405', `modelid3`='2408', `modelid4`='2410' WHERE `entry`='8883'; -- Riding Horse
UPDATE `creature_template` SET `modelid1`='8894', `modelid2`='8895', `modelid3`='8896', `modelid4`='8897' WHERE `entry`='8920'; -- Weapon Technician
UPDATE `creature_template` SET `modelid1`='8899', `modelid2`='9599', `modelid3`='9855', `modelid4`='9856' WHERE `entry`='9043'; -- Scarshield Grunt
UPDATE `creature_template` SET `modelid1`='8901', `modelid2`='9606', `modelid3`='9861', `modelid4`='9862' WHERE `entry`='9044'; -- Scarshield Sentry
UPDATE `creature_template` SET `modelid1`='8898', `modelid2`='9596', `modelid3`='9853', `modelid4`='9854' WHERE `entry`='9045'; -- Scarshield Acolyte
UPDATE `creature_template` SET `modelid1`='9629', `modelid2`='9630', `modelid3`='9857', `modelid4`='9858' WHERE `entry`='9097'; -- Scarshield Legionnaire
UPDATE `creature_template` SET `modelid1`='9618', `modelid2`='9620', `modelid3`='9863', `modelid4`='9864' WHERE `entry`='9098'; -- Scarshield Spellbinder
UPDATE `creature_template` SET `modelid2`='9729', `modelid3`='9730', `modelid4`='9731' WHERE `entry`='9240'; -- Smolderthorn Shadow Priest
UPDATE `creature_template` SET `modelid2`='9610', `modelid3`='9865', `modelid4`='9866' WHERE `entry`='9257'; -- Scarshield Warlock
UPDATE `creature_template` SET `modelid1`='9637', `modelid2`='9638', `modelid3`='9859', `modelid4`='9860' WHERE `entry`='9258'; -- Scarshield Raider
UPDATE `creature_template` SET `modelid1`='9664', `modelid2`='9665', `modelid3`='9871', `modelid4`='9872' WHERE `entry`='9259'; -- Firebrand Grunt
UPDATE `creature_template` SET `modelid1`='9660', `modelid2`='9661', `modelid3`='9884', `modelid4`='9885' WHERE `entry`='9260'; -- Firebrand Legionnaire
UPDATE `creature_template` SET `modelid1`='9644', `modelid2`='9645', `modelid3`='9867', `modelid4`='9868' WHERE `entry`='9261'; -- Firebrand Darkweaver
UPDATE `creature_template` SET `modelid1`='9648', `modelid2`='9649', `modelid3`='9877', `modelid4`='9878' WHERE `entry`='9262'; -- Firebrand Invoker
UPDATE `creature_template` SET `modelid1`='9652', `modelid2`='9653', `modelid3`='9869', `modelid4`='9870' WHERE `entry`='9263'; -- Firebrand Dreadweaver
UPDATE `creature_template` SET `modelid1`='9656', `modelid2`='9657', `modelid3`='9888', `modelid4`='9889' WHERE `entry`='9264'; -- Firebrand Pyromancer
UPDATE `creature_template` SET `modelid2`='9725', `modelid3`='9726', `modelid4`='9727' WHERE `entry`='9265'; -- Smolderthorn Shadow Hunter
UPDATE `creature_template` SET `modelid2`='9675', `modelid3`='9676', `modelid4`='9677' WHERE `entry`='9267'; -- Smolderthorn Axe Thrower
UPDATE `creature_template` SET `modelid2`='9716', `modelid3`='9717', `modelid4`='9718' WHERE `entry`='9269'; -- Smolderthorn Seer
UPDATE `creature_template` SET `modelid2`='9575', `modelid3`='9576', `modelid4`='9577' WHERE `entry`='9457'; -- Horde Defender
UPDATE `creature_template` SET `modelid2`='8653', `modelid3`='9579', `modelid4`='9580' WHERE `entry`='9458'; -- Horde Axe Thrower
UPDATE `creature_template` SET `modelid2`='8700', `modelid3`='8701', `modelid4`='8702' WHERE `entry`='9522'; -- Blackrock Ambusher
UPDATE `creature_template` SET `modelid2`='8662', `modelid3`='8663' WHERE `entry`='9541'; -- Blackbreath Crony
UPDATE `creature_template` SET `modelid1`='9633', `modelid2`='9634', `modelid3`='9881', `modelid4`='9882' WHERE `entry`='9583'; -- Bloodaxe Veteran
UPDATE `creature_template` SET `modelid1`='9602', `modelid2`='9603', `modelid3`='9875', `modelid4`='9876' WHERE `entry`='9692'; -- Bloodaxe Raider
UPDATE `creature_template` SET `modelid1`='9625', `modelid2`='9626', `modelid3`='9873', `modelid4`='9874' WHERE `entry`='9693'; -- Bloodaxe Evoker
UPDATE `creature_template` SET `modelid2`='741' WHERE `entry`='9696'; -- Bloodaxe Worg
UPDATE `creature_template` SET `modelid1`='9617', `modelid2`='9619', `modelid3`='9883', `modelid4`='9886' WHERE `entry`='9716'; -- Bloodaxe Warmonger
UPDATE `creature_template` SET `modelid1`='9613', `modelid2`='9614', `modelid3`='9879', `modelid4`='9880' WHERE `entry`='9717'; -- Bloodaxe Summoner
UPDATE `creature_template` SET `modelid2`='9887' WHERE `entry`='10318'; -- Blackhand Assassin
UPDATE `creature_template` SET `modelid2`='10255', `modelid3`='5432' WHERE `entry`='10381'; -- Ravaged Cadaver
UPDATE `creature_template` SET `modelid2`='10484', `modelid3`='10485', `modelid4`='10486' WHERE `entry`='10384'; -- Spectral Citizen
UPDATE `creature_template` SET `modelid2`='10480', `modelid3`='10479', `modelid4`='10481' WHERE `entry`='10385'; -- Ghostly Citizen
UPDATE `creature_template` SET `modelid2`='9785', `modelid3`='7555', `modelid4`='9790' WHERE `entry`='10390'; -- Skeletal Guardian
UPDATE `creature_template` SET `modelid2`='9787', `modelid3`='9786', `modelid4`='9788' WHERE `entry`='10391'; -- Skeletal Berserker
UPDATE `creature_template` SET `modelid2`='1418', `modelid3`='2176' WHERE `entry`='10441'; -- Plagued Rat
UPDATE `creature_template` SET `modelid2`='2177', `modelid3`='9829' WHERE `entry`='10461'; -- Plagued Insect
UPDATE `creature_template` SET `modelid2`='11128', `modelid3`='11129', `modelid4`='11177' WHERE `entry`='10473'; -- Scholomance Shadowcaster
UPDATE `creature_template` SET `modelid2`='5265' WHERE `entry`='10479'; -- Skulking Corpse
UPDATE `creature_template` SET `modelid2`='7550' WHERE `entry`='10482'; -- Risen Lackey
UPDATE `creature_template` SET `modelid2`='7550' WHERE `entry`='10483'; -- Risen Flayer
UPDATE `creature_template` SET `modelid2`='7550' WHERE `entry`='10484'; -- Risen Terror
UPDATE `creature_template` SET `modelid2`='9904', `modelid3`='9905', `modelid4`='9906' WHERE `entry`='10536'; -- Plagued Maggot
UPDATE `creature_template` SET `modelid2`='9941', `modelid3`='9940', `modelid4`='9942' WHERE `entry`='10603'; -- Hallucination
UPDATE `creature_template` SET `modelid2`='10219', `modelid3`='10220', `modelid4`='10221' WHERE `entry`='10898'; -- Blackhand Armorsmith
UPDATE `creature_template` SET `modelid1`='10249', `modelid2`='10250', `modelid3`='10251', `modelid4`='10252' WHERE `entry`='10919'; -- Shatterspear Troll
UPDATE `creature_template` SET `modelid2`='10364', `modelid3`='10363', `modelid4`='10365' WHERE `entry`='10947'; -- Darrowshire Betrayer
UPDATE `creature_template` SET `modelid2`='10367', `modelid3`='10368', `modelid4`='10369' WHERE `entry`='10948'; -- Darrowshire Defender
UPDATE `creature_template` SET `modelid2`='10372', `modelid3`='10371', `modelid4`='10373' WHERE `entry`='10949'; -- Silver Hand Disciple
UPDATE `creature_template` SET `modelid2`='10360', `modelid3`='10359', `modelid4`='10361' WHERE `entry`='10950'; -- Redpath Militia
UPDATE `creature_template` SET `modelid2`='11472' WHERE `entry`='10951'; -- Marauding Corpse
UPDATE `creature_template` SET `modelid2`='10450', `modelid3`='10449', `modelid4`='10451' WHERE `entry`='10954'; -- Bloodletter
UPDATE `creature_template` SET `modelid1`='14013', `modelid2`='14015', `modelid3`='14014', `modelid4`='14016' WHERE `entry`='10983'; -- Winterax Troll
UPDATE `creature_template` SET `modelid2`='10284', `modelid3`='10919' WHERE `entry`='10988'; -- Kodo Spirit
UPDATE `creature_template` SET `modelid2`='1200', `modelid3`='646' WHERE `entry`='11030'; -- Mindless Undead
UPDATE `creature_template` SET `modelid2`='10822', `modelid3`='10821', `modelid4`='10823' WHERE `entry`='11054'; -- Crimson Rifleman
UPDATE `creature_template` SET `modelid1`='10907', `modelid2`='10909', `modelid3`='10908', `modelid4`='10910' WHERE `entry`='11064'; -- Darrowshire Spirit
UPDATE `creature_template` SET `modelid2`='10558', `modelid3`='10559', `modelid4`='10557' WHERE `entry`='11099'; -- Argent Guard
UPDATE `creature_template` SET `modelid2`='10638', `modelid3`='10639', `modelid4`='10640' WHERE `entry`='11120'; -- Crimson Hammersmith
UPDATE `creature_template` SET `modelid1`='10734', `modelid2`='10735', `modelid3`='10737', `modelid4`='10736' WHERE `entry`='11180'; -- Bloodvenom Post Brave
UPDATE `creature_template` SET `modelid2`='7550', `modelid3`='7555' WHERE `entry`='11197'; -- Mindless Skeleton
UPDATE `creature_template` SET `modelid2`='11015', `modelid3`='11014', `modelid4`='11016' WHERE `entry`='11277'; -- Caer Darrow Citizen
UPDATE `creature_template` SET `modelid2`='11023', `modelid3`='11022', `modelid4`='11024' WHERE `entry`='11279'; -- Caer Darrow Guardsman
UPDATE `creature_template` SET `modelid2`='11018', `modelid3`='11019', `modelid4`='11020' WHERE `entry`='11280'; -- Caer Darrow Cannoneer
UPDATE `creature_template` SET `modelid2`='11026' WHERE `entry`='11281'; -- Caer Darrow Horseman
UPDATE `creature_template` SET `modelid2`='11436', `modelid3`='11435', `modelid4`='11437' WHERE `entry`='11322'; -- Searing Blade Cultist
UPDATE `creature_template` SET `modelid2`='11432', `modelid3`='11431', `modelid4`='11433' WHERE `entry`='11323'; -- Searing Blade Enforcer
UPDATE `creature_template` SET `modelid2`='11440', `modelid3`='11439', `modelid4`='11441' WHERE `entry`='11324'; -- Searing Blade Warlock
UPDATE `creature_template` SET `modelid1`='11182', `modelid2`='11184', `modelid3`='11183', `modelid4`='11185' WHERE `entry`='11337'; -- [UNUSED] Hakkar Axe Thrower
UPDATE `creature_template` SET `modelid1`='11237', `modelid2`='11239', `modelid3`='11238', `modelid4`='11240' WHERE `entry`='11342'; -- [UNUSED] Hakkar Warrior
UPDATE `creature_template` SET `modelid1`='11233', `modelid2`='11235', `modelid3`='11234', `modelid4`='11236' WHERE `entry`='11343'; -- [UNUSED] Hakkar Warlord
UPDATE `creature_template` SET `modelid1`='11193', `modelid2`='11195', `modelid3`='11194', `modelid4`='11196' WHERE `entry`='11344'; -- [UNUSED] Hakkar Blood Drinker
UPDATE `creature_template` SET `modelid1`='11201', `modelid2`='11203', `modelid3`='11202', `modelid4`='11204' WHERE `entry`='11345'; -- [UNUSED] Hakkar Headhunter
UPDATE `creature_template` SET `modelid1`='11113', `modelid2`='11115', `modelid3`='11114', `modelid4`='11116' WHERE `entry`='11349'; -- [UNUSED] Gurubashi Hideskinner
UPDATE `creature_template` SET `modelid1`='11245', `modelid2`='11247', `modelid3`='11246', `modelid4`='11236' WHERE `entry`='11354'; -- [UNUSED] Gurubashi Warlord
UPDATE `creature_template` SET `modelid2`='11208', `modelid3`='11209', `modelid4`='11210' WHERE `entry`='11466'; -- Highborne Summoner
UPDATE `creature_template` SET `modelid1`='11241', `modelid2`='11242', `modelid3`='11243', `modelid4`='11244' WHERE `entry`='11468'; -- [UNUSED] Eldreth Lichling
UPDATE `creature_template` SET `modelid2`='11214', `modelid3`='11215', `modelid4`='11216' WHERE `entry`='11469'; -- Eldreth Seether
UPDATE `creature_template` SET `modelid2`='11206', `modelid3`='11211', `modelid4`='11212' WHERE `entry`='11470'; -- Eldreth Sorcerer
UPDATE `creature_template` SET `modelid2`='10284', `modelid3`='10919' WHERE `entry`='11521'; -- Kodo Apparition
UPDATE `creature_template` SET `modelid2`='11392', `modelid3`='11391', `modelid4`='11393' WHERE `entry`='11581'; -- Scarlet Assassin
UPDATE `creature_template` SET `modelid2`='5432', `modelid3`='533', `modelid4`='10975' WHERE `entry`='11598'; -- Risen Guardian
UPDATE `creature_template` SET `modelid2`='4631' WHERE `entry`='11628'; -- Decaying Corpse
UPDATE `creature_template` SET `modelid2`='11590', `modelid3`='11593', `modelid4`='11595' WHERE `entry`='11637'; -- Servant of Alexi Barov
UPDATE `creature_template` SET `modelid2`='14036', `modelid3`='14035', `modelid4`='14037' WHERE `entry`='11679'; -- Winterax Witch Doctor
UPDATE `creature_template` SET `modelid2`='11832', `modelid3`='11833', `modelid4`='11834' WHERE `entry`='11887'; -- Crypt Robber
UPDATE `creature_template` SET `modelid1`='12065', `modelid2`='12066', `modelid3`='12067', `modelid4`='12068' WHERE `entry`='12047'; -- Stormpike Mountaineer
UPDATE `creature_template` SET `modelid2`='12070', `modelid3`='12071', `modelid4`='12072' WHERE `entry`='12048'; -- Alliance Sentinel
UPDATE `creature_template` SET `modelid2`='12082', `modelid3`='12083', `modelid4`='12084' WHERE `entry`='12052'; -- Frostwolf Warrior
UPDATE `creature_template` SET `modelid2`='12204', `modelid3`='12205', `modelid4`='12206' WHERE `entry`='12124'; -- Great Shark
UPDATE `creature_template` SET `modelid2`='12208', `modelid3`='12209', `modelid4`='12210' WHERE `entry`='12125'; -- Mammoth Shark
UPDATE `creature_template` SET `modelid2`='10513', `modelid3`='10514', `modelid4`='10515' WHERE `entry`='12128'; -- Crimson Elite
UPDATE `creature_template` SET `modelid2`='14019', `modelid3`='14018', `modelid4`='14020' WHERE `entry`='12156'; -- Winterax Axe Thrower
UPDATE `creature_template` SET `modelid2`='14061', `modelid3`='14062', `modelid4`='14063' WHERE `entry`='12157'; -- Winterax Shadow Hunter
UPDATE `creature_template` SET `modelid2`='14023', `modelid3`='14022', `modelid4`='14024' WHERE `entry`='12158'; -- Winterax Hunter
UPDATE `creature_template` SET `modelid2`='12245', `modelid3`='12242' WHERE `entry`='12176'; -- Tame Kodo
UPDATE `creature_template` SET `modelid2`='4197' WHERE `entry`='12319'; -- Burning Blade Toxicologist
UPDATE `creature_template` SET `modelid2`='4199' WHERE `entry`='12320'; -- Burning Blade Crusher
UPDATE `creature_template` SET `modelid2`='12025', `modelid3`='12021', `modelid4`='12022' WHERE `entry`='12416'; -- Blackwing Legionnaire
UPDATE `creature_template` SET `modelid2`='11981', `modelid3`='11978', `modelid4`='11980' WHERE `entry`='12420'; -- Blackwing Mage
UPDATE `creature_template` SET `modelid1`='11994', `modelid2`='11995', `modelid3`='11992', `modelid4`='11993' WHERE `entry`='12421'; -- [NOT USED] Blackwing Assassin
UPDATE `creature_template` SET `modelid2`='11969', `modelid3`='14300', `modelid4`='14301' WHERE `entry`='12458'; -- Blackwing Taskmaster
UPDATE `creature_template` SET `modelid2`='14293', `modelid3`='14294', `modelid4`='14295' WHERE `entry`='12459'; -- Blackwing Warlock
UPDATE `creature_template` SET `modelid1`='11984', `modelid2`='11987', `modelid3`='14298', `modelid4`='14299' WHERE `entry`='12462'; -- [NOT USED] Blackwing Warlord
UPDATE `creature_template` SET `modelid1`='11994', `modelid2`='11995', `modelid3`='11992', `modelid4`='11993' WHERE `entry`='12470'; -- [NOT USED] Death Talon Firetongue
UPDATE `creature_template` SET `modelid2`='715', `modelid3`='9586', `modelid4`='12530' WHERE `entry`='12536'; -- Illusion: Black Dragonkin
UPDATE `creature_template` SET `modelid1`='12940', `modelid2`='12942', `modelid3`='12941', `modelid4`='12944' WHERE `entry`='13000'; -- Gnome Engineer
UPDATE `creature_template` SET `modelid1`='4707', `modelid2`='4708', `modelid3`='11303', `modelid4`='11304' WHERE `entry`='13019'; -- Burning Blade Seer
UPDATE `creature_template` SET `modelid2`='13328', `modelid3`='13630', `modelid4`='13631' WHERE `entry`='13087'; -- Coldmine Invader
UPDATE `creature_template` SET `modelid2`='13339' WHERE `entry`='13117'; -- Horde Spirit Guide
UPDATE `creature_template` SET `modelid1`='10492', `modelid2`='10494', `modelid3`='10493', `modelid4`='10495' WHERE `entry`='13118'; -- Crimson Bodyguard
UPDATE `creature_template` SET `modelid2`='13441', `modelid3`='13442', `modelid4`='13443' WHERE `entry`='13149'; -- Syndicate Brigand
UPDATE `creature_template` SET `modelid2`='13451', `modelid3`='13453', `modelid4`='13452' WHERE `entry`='13150'; -- Syndicate Agent
UPDATE `creature_template` SET `modelid2`='308' WHERE `entry`='13317'; -- Coldmine Miner
UPDATE `creature_template` SET `modelid2`='13250', `modelid3`='13251', `modelid4`='13252' WHERE `entry`='13324'; -- Seasoned Guardsman
UPDATE `creature_template` SET `modelid2`='13267', `modelid3`='13268', `modelid4`='13269' WHERE `entry`='13325'; -- Seasoned Mountaineer
UPDATE `creature_template` SET `modelid2`='13263', `modelid3`='13264', `modelid4`='13265' WHERE `entry`='13326'; -- Seasoned Defender
UPDATE `creature_template` SET `modelid2`='13230', `modelid3`='13231', `modelid4`='13232' WHERE `entry`='13327'; -- Seasoned Sentinel
UPDATE `creature_template` SET `modelid2`='13279', `modelid3`='13280', `modelid4`='13281' WHERE `entry`='13328'; -- Seasoned Guardian
UPDATE `creature_template` SET `modelid2`='13287', `modelid3`='13288', `modelid4`='13289' WHERE `entry`='13329'; -- Seasoned Legionnaire
UPDATE `creature_template` SET `modelid2`='13302', `modelid3`='13303', `modelid4`='13304' WHERE `entry`='13330'; -- Seasoned Warrior
UPDATE `creature_template` SET `modelid2`='13259', `modelid3`='13260', `modelid4`='13261' WHERE `entry`='13331'; -- Veteran Defender
UPDATE `creature_template` SET `modelid2`='13283', `modelid3`='13284', `modelid4`='13285' WHERE `entry`='13332'; -- Veteran Guardian
UPDATE `creature_template` SET `modelid2`='13255', `modelid3`='13256', `modelid4`='13257' WHERE `entry`='13333'; -- Veteran Guardsman
UPDATE `creature_template` SET `modelid2`='13295', `modelid3`='13296', `modelid4`='13297' WHERE `entry`='13334'; -- Veteran Legionnaire
UPDATE `creature_template` SET `modelid2`='13271', `modelid3`='13272', `modelid4`='13273' WHERE `entry`='13335'; -- Veteran Mountaineer
UPDATE `creature_template` SET `modelid2`='13291', `modelid3`='13292', `modelid4`='13293' WHERE `entry`='13336'; -- Veteran Sentinel
UPDATE `creature_template` SET `modelid2`='13307', `modelid3`='13308', `modelid4`='13309' WHERE `entry`='13337'; -- Veteran Warrior
UPDATE `creature_template` SET `modelid2`='13362', `modelid3`='13363', `modelid4`='13364' WHERE `entry`='13421'; -- Champion Guardian
UPDATE `creature_template` SET `modelid2`='13352', `modelid3`='13353', `modelid4`='13354' WHERE `entry`='13422'; -- Champion Defender
UPDATE `creature_template` SET `modelid2`='13372', `modelid3`='13373', `modelid4`='13374' WHERE `entry`='13424'; -- Champion Guardsman
UPDATE `creature_template` SET `modelid2`='13376', `modelid3`='13377', `modelid4`='13378' WHERE `entry`='13425'; -- Champion Legionnaire
UPDATE `creature_template` SET `modelid2`='13380', `modelid3`='13381', `modelid4`='13382' WHERE `entry`='13426'; -- Champion Mountaineer
UPDATE `creature_template` SET `modelid2`='13358', `modelid3`='13359', `modelid4`='13360' WHERE `entry`='13427'; -- Champion Sentinel
UPDATE `creature_template` SET `modelid2`='13366', `modelid3`='13367', `modelid4`='13368' WHERE `entry`='13428'; -- Champion Warrior
UPDATE `creature_template` SET `modelid2`='13412', `modelid3`='13414', `modelid4`='13413' WHERE `entry`='13440'; -- Frostwolf Wolf Rider
UPDATE `creature_template` SET `modelid2`='13818', `modelid3`='13819', `modelid4`='13820' WHERE `entry`='13516'; -- Frostwolf Outrunner
UPDATE `creature_template` SET `modelid2`='13822', `modelid3`='13823', `modelid4`='13824' WHERE `entry`='13517'; -- Seasoned Outrunner
UPDATE `creature_template` SET `modelid2`='13830', `modelid3`='13831', `modelid4`='13832' WHERE `entry`='13518'; -- Veteran Outrunner
UPDATE `creature_template` SET `modelid2`='13834', `modelid3`='13835', `modelid4`='13836' WHERE `entry`='13519'; -- Champion Outrunner
UPDATE `creature_template` SET `modelid2`='13675', `modelid3`='13676', `modelid4`='13677' WHERE `entry`='13520'; -- Stormpike Ranger
UPDATE `creature_template` SET `modelid2`='13679', `modelid3`='13680', `modelid4`='13681' WHERE `entry`='13521'; -- Seasoned Ranger
UPDATE `creature_template` SET `modelid2`='13683', `modelid3`='13684', `modelid4`='13685' WHERE `entry`='13522'; -- Veteran Ranger
UPDATE `creature_template` SET `modelid2`='13687', `modelid3`='13688', `modelid4`='13689' WHERE `entry`='13523'; -- Champion Ranger
UPDATE `creature_template` SET `modelid2`='13646', `modelid3`='13647', `modelid4`='13648' WHERE `entry`='13524'; -- Stormpike Commando
UPDATE `creature_template` SET `modelid2`='13655', `modelid3`='13656', `modelid4`='13657' WHERE `entry`='13525'; -- Seasoned Commando
UPDATE `creature_template` SET `modelid2`='13659', `modelid3`='13660', `modelid4`='13661' WHERE `entry`='13526'; -- Veteran Commando
UPDATE `creature_template` SET `modelid2`='13651', `modelid3`='13652', `modelid4`='13653' WHERE `entry`='13527'; -- Champion Commando
UPDATE `creature_template` SET `modelid2`='13810', `modelid3`='13811', `modelid4`='13812' WHERE `entry`='13528'; -- Frostwolf Reaver
UPDATE `creature_template` SET `modelid2`='13814', `modelid3`='13815', `modelid4`='13816' WHERE `entry`='13529'; -- Seasoned Reaver
UPDATE `creature_template` SET `modelid2`='13826', `modelid3`='13827', `modelid4`='13829' WHERE `entry`='13530'; -- Veteran Reaver
UPDATE `creature_template` SET `modelid2`='13838', `modelid3`='13839', `modelid4`='13840' WHERE `entry`='13531'; -- Champion Reaver
UPDATE `creature_template` SET `modelid2`='13568', `modelid3`='13569', `modelid4`='13570' WHERE `entry`='13534'; -- Seasoned Coldmine Guard
UPDATE `creature_template` SET `modelid2`='13572', `modelid3`='13573', `modelid4`='13574' WHERE `entry`='13535'; -- Veteran Coldmine Guard
UPDATE `creature_template` SET `modelid2`='13564', `modelid3`='13565', `modelid4`='13566' WHERE `entry`='13536'; -- Champion Coldmine Guard
UPDATE `creature_template` SET `modelid2`='13546', `modelid3`='13548', `modelid4`='13550' WHERE `entry`='13537'; -- Seasoned Coldmine Surveyor
UPDATE `creature_template` SET `modelid2`='13555', `modelid3`='13556', `modelid4`='13557' WHERE `entry`='13538'; -- Veteran Coldmine Surveyor
UPDATE `creature_template` SET `modelid2`='13559', `modelid3`='13560', `modelid4`='13561' WHERE `entry`='13539'; -- Champion Coldmine Surveyor
UPDATE `creature_template` SET `modelid2`='13770', `modelid3`='13771', `modelid4`='13772' WHERE `entry`='13540'; -- Seasoned Irondeep Explorer
UPDATE `creature_template` SET `modelid2`='13774', `modelid3`='13775', `modelid4`='13776' WHERE `entry`='13541'; -- Veteran Irondeep Explorer
UPDATE `creature_template` SET `modelid2`='13778', `modelid3`='13779', `modelid4`='13780' WHERE `entry`='13542'; -- Champion Irondeep Explorer
UPDATE `creature_template` SET `modelid2`='13591', `modelid3`='13592', `modelid4`='13593' WHERE `entry`='13543'; -- Seasoned Irondeep Raider
UPDATE `creature_template` SET `modelid2`='13595', `modelid3`='13596', `modelid4`='13597' WHERE `entry`='13544'; -- Veteran Irondeep Raider
UPDATE `creature_template` SET `modelid2`='13599', `modelid3`='13600', `modelid4`='13601' WHERE `entry`='13545'; -- Champion Irondeep Raider
UPDATE `creature_template` SET `modelid2`='13894', `modelid3`='13547', `modelid4`='13549' WHERE `entry`='13547'; -- Veteran Coldmine Explorer
UPDATE `creature_template` SET `modelid2`='13890', `modelid3`='13533', `modelid4`='13534' WHERE `entry`='13548'; -- Champion Coldmine Explorer
UPDATE `creature_template` SET `modelid2`='13637', `modelid3`='13638', `modelid4`='13639' WHERE `entry`='13549'; -- Seasoned Coldmine Invader
UPDATE `creature_template` SET `modelid2`='13641', `modelid3`='13642', `modelid4`='13643' WHERE `entry`='13550'; -- Veteran Coldmine Invader
UPDATE `creature_template` SET `modelid2`='13633', `modelid3`='13634', `modelid4`='13635' WHERE `entry`='13551'; -- Champion Coldmine Invader
UPDATE `creature_template` SET `modelid2`='13782', `modelid3`='13783', `modelid4`='13784' WHERE `entry`='13552'; -- Seasoned Irondeep Guard
UPDATE `creature_template` SET `modelid2`='13787', `modelid3`='13786', `modelid4`='13788' WHERE `entry`='13553'; -- Veteran Irondeep Guard
UPDATE `creature_template` SET `modelid2`='13791', `modelid3`='13790', `modelid4`='13792' WHERE `entry`='13554'; -- Champion Irondeep Guard
UPDATE `creature_template` SET `modelid2`='13796', `modelid3`='13797', `modelid4`='13798' WHERE `entry`='13555'; -- Seasoned Irondeep Surveyor
UPDATE `creature_template` SET `modelid2`='13800', `modelid3`='13801', `modelid4`='13802' WHERE `entry`='13556'; -- Veteran Irondeep Surveyor
UPDATE `creature_template` SET `modelid2`='13804', `modelid3`='13805', `modelid4`='13806' WHERE `entry`='13557'; -- Champion Irondeep Surveyor
UPDATE `creature_template` SET `modelid2`='13710', `modelid3`='13711', `modelid4`='13712' WHERE `entry`='13576'; -- Stormpike Ram Rider
UPDATE `creature_template` SET `modelid2`='14028', `modelid3`='14027', `modelid4`='14029' WHERE `entry`='13956'; -- Winterax Mystic
UPDATE `creature_template` SET `modelid2`='14054', `modelid3`='14053', `modelid4`='14055' WHERE `entry`='13957'; -- Winterax Warrior
UPDATE `creature_template` SET `modelid2`='14032', `modelid3`='14031', `modelid4`='14033' WHERE `entry`='13958'; -- Winterax Seer
UPDATE `creature_template` SET `modelid2`='14302', `modelid3`='14304', `modelid4`='14303' WHERE `entry`='13996'; -- Blackwing Technician
UPDATE `creature_template` SET `modelid2`='14058', `modelid3`='14057', `modelid4`='14059' WHERE `entry`='14017'; -- Withered Troll
UPDATE `creature_template` SET `modelid2`='13275', `modelid3`='13276', `modelid4`='13277' WHERE `entry`='14141'; -- Stormpike Reclaimer
UPDATE `creature_template` SET `modelid2`='12166', `modelid3`='12167', `modelid4`='12170' WHERE `entry`='14142'; -- Frostwolf Reclaimer
UPDATE `creature_template` SET `modelid2`='10505', `modelid3`='10506', `modelid4`='10507' WHERE `entry`='14162'; -- RaidMage
UPDATE `creature_template` SET `modelid2`='3764' WHERE `entry`='14275'; -- Tamra Stormpike
UPDATE `creature_template` SET `modelid2`='14393', `modelid3`='14398', `modelid4`='14400' WHERE `entry`='14364'; -- Shen'dralar Spirit
UPDATE `creature_template` SET `modelid2`='2768', `modelid3`='10915' WHERE `entry`='14406'; -- Roving Kodo
UPDATE `creature_template` SET `modelid2`='12025', `modelid3`='12021', `modelid4`='12022' WHERE `entry`='14456'; -- Blackwing Guardsman
UPDATE `creature_template` SET `modelid2`='14535', `modelid3`='14534', `modelid4`='14536' WHERE `entry`='14484'; -- Injured Peasant
UPDATE `creature_template` SET `modelid2`='14539', `modelid3`='14538', `modelid4`='14540' WHERE `entry`='14485'; -- Plagued Peasant
UPDATE `creature_template` SET `modelid2`='11403', `modelid3`='11401', `modelid4`='7550' WHERE `entry`='14486'; -- Scourge Footsoldier
UPDATE `creature_template` SET `modelid2`='14539', `modelid3`='14538', `modelid4`='14540' WHERE `entry`='14493'; -- Priest Epic Event Caller
UPDATE `creature_template` SET `modelid2`='7930', `modelid3`='7931', `modelid4`='7932' WHERE `entry`='14635'; -- Sleepy Dark Iron Worker
UPDATE `creature_template` SET `modelid2`='487', `modelid3`='160', `modelid4`='441' WHERE `entry`='14681'; -- Transporter Malfunction
UPDATE `creature_template` SET `modelid2`='14707' WHERE `entry`='14708'; -- Decaying Warrior
UPDATE `creature_template` SET `modelid2`='14707' WHERE `entry`='14709'; -- Blighted Dead
UPDATE `creature_template` SET `modelid1`='14764', `modelid2`='14765', `modelid3`='14766', `modelid4`='14767' WHERE `entry`='14734'; -- Revantusk Drummer
UPDATE `creature_template` SET `modelid2`='12950', `modelid3`='12951', `modelid4`='12952' WHERE `entry`='14746'; -- [PH] Horde Tower Lieutenant
UPDATE `creature_template` SET `modelid1`='14793', `modelid2`='14795', `modelid3`='14794', `modelid4`='14796' WHERE `entry`='14762'; -- Dun Baldar North Marshal
UPDATE `creature_template` SET `modelid1`='14793', `modelid2`='14795', `modelid3`='14794', `modelid4`='14796' WHERE `entry`='14763'; -- Dun Baldar South Marshal
UPDATE `creature_template` SET `modelid2`='14795', `modelid3`='14794', `modelid4`='14796' WHERE `entry`='14764'; -- Icewing Marshal
UPDATE `creature_template` SET `modelid2`='14795', `modelid3`='14794', `modelid4`='14796' WHERE `entry`='14765'; -- Stonehearth Marshal
UPDATE `creature_template` SET `modelid1`='14793', `modelid2`='14795', `modelid3`='14794', `modelid4`='14796' WHERE `entry`='14766'; -- Iceblood Marshal
UPDATE `creature_template` SET `modelid2`='14795', `modelid3`='14794', `modelid4`='14796' WHERE `entry`='14767'; -- Tower Point Marshal
UPDATE `creature_template` SET `modelid2`='14795', `modelid3`='14794', `modelid4`='14796' WHERE `entry`='14768'; -- East Frostwolf Marshal
UPDATE `creature_template` SET `modelid2`='14795', `modelid3`='14794', `modelid4`='14796' WHERE `entry`='14769'; -- West Frostwolf Marshal
UPDATE `creature_template` SET `modelid2`='14799', `modelid3`='14798', `modelid4`='14800' WHERE `entry`='14770'; -- Dun Baldar North Warmaster
UPDATE `creature_template` SET `modelid1`='14797', `modelid2`='14799', `modelid3`='14798', `modelid4`='14800' WHERE `entry`='14771'; -- Dun Baldar South Warmaster
UPDATE `creature_template` SET `modelid1`='14797', `modelid2`='14799', `modelid3`='14798', `modelid4`='14800' WHERE `entry`='14774'; -- Icewing Warmaster
UPDATE `creature_template` SET `modelid1`='14797', `modelid2`='14799', `modelid3`='14798', `modelid4`='14800' WHERE `entry`='14775'; -- Stonehearth Warmaster
UPDATE `creature_template` SET `modelid2`='1060', `modelid3`='2193', `modelid4`='5554' WHERE `entry`='14801'; -- Wild Polymorph Target
UPDATE `creature_template` SET `modelid2`='15147', `modelid3`='15149', `modelid4`='15148' WHERE `entry`='15045'; -- Arathi Farmer
UPDATE `creature_template` SET `modelid2`='15154', `modelid3`='15153', `modelid4`='15155' WHERE `entry`='15046'; -- Forsaken Farmer
UPDATE `creature_template` SET `modelid2`='15173', `modelid3`='15174', `modelid4`='15175' WHERE `entry`='15063'; -- Arathi Blacksmith
UPDATE `creature_template` SET `modelid2`='15177', `modelid3`='15178', `modelid4`='15179' WHERE `entry`='15064'; -- Forsaken Blacksmith
UPDATE `creature_template` SET `modelid2`='15184', `modelid3`='15185', `modelid4`='15186' WHERE `entry`='15074'; -- Arathi Miner
UPDATE `creature_template` SET `modelid2`='15188', `modelid3`='15189', `modelid4`='15190' WHERE `entry`='15075'; -- Forsaken Miner
UPDATE `creature_template` SET `modelid2`='15212', `modelid3`='15211', `modelid4`='15213' WHERE `entry`='15080'; -- Servant of the Hand
UPDATE `creature_template` SET `modelid2`='15193', `modelid3`='15194', `modelid4`='15195' WHERE `entry`='15086'; -- Arathi Stablehand
UPDATE `creature_template` SET `modelid2`='15197', `modelid3`='15198', `modelid4`='15199' WHERE `entry`='15087'; -- Forsaken Stablehand
UPDATE `creature_template` SET `modelid2`='15202', `modelid3`='15203' WHERE `entry`='15088'; -- Booty Bay Elite
UPDATE `creature_template` SET `modelid2`='15208', `modelid3`='15207', `modelid4`='15209' WHERE `entry`='15089'; -- Forsaken Lumberjack
UPDATE `creature_template` SET `modelid2`='2325', `modelid3`='237', `modelid4`='238' WHERE `entry`='15107'; -- Arathi Horse
UPDATE `creature_template` SET `modelid2`='10672', `modelid3`='10670' WHERE `entry`='15108'; -- Forsaken Horse
UPDATE `creature_template` SET `modelid2`='15264', `modelid3`='15265', `modelid4`='15266' WHERE `entry`='15110'; -- Gurubashi Prisoner
UPDATE `creature_template` SET `modelid2`='15296', `modelid3`='15297', `modelid4`='5240' WHERE `entry`='15163'; -- Nightmare Illusion
UPDATE `creature_template` SET `modelid2`='15435' WHERE `entry`='15214'; -- Invisible Stalker
UPDATE `creature_template` SET `modelid2`='5556', `modelid3`='10992', `modelid4`='11009' WHERE `entry`='15219'; -- Trick - Critter
UPDATE `creature_template` SET `modelid2`='7113', `modelid3`='4873' WHERE `entry`='15373'; -- Halloween Pirate Captain
UPDATE `creature_template` SET `modelid2`='6956', `modelid3`='6945', `modelid4`='6951' WHERE `entry`='15375'; -- Halloween Pirate Female
UPDATE `creature_template` SET `modelid2`='10479' WHERE `entry`='15376'; -- Halloween Male Ghost
UPDATE `creature_template` SET `modelid2`='10480' WHERE `entry`='15377'; -- Halloween Female Ghost
UPDATE `creature_template` SET `modelid2`='15496', `modelid3`='15497', `modelid4`='15498' WHERE `entry`='15414'; -- Qiraji Wasp
UPDATE `creature_template` SET `modelid2`='15488', `modelid3`='15489', `modelid4`='15490' WHERE `entry`='15421'; -- Qiraji Drone
UPDATE `creature_template` SET `modelid2`='15492', `modelid3`='15493', `modelid4`='15494' WHERE `entry`='15422'; -- Qiraji Tank
UPDATE `creature_template` SET `modelid2`='15428', `modelid3`='15429', `modelid4`='15430' WHERE `entry`='15423'; -- Kaldorei Infantry
UPDATE `creature_template` SET `modelid2`='15690', `modelid3`='15691', `modelid4`='15692' WHERE `entry`='15473'; -- Kaldorei Elite
UPDATE `creature_template` SET `modelid2`='15467', `modelid3`='8971', `modelid4`='15468' WHERE `entry`='15475'; -- Beetle
UPDATE `creature_template` SET `modelid2`='11775', `modelid3`='11776', `modelid4`='11777' WHERE `entry`='15495'; -- Nighthaven Defender
UPDATE `creature_template` SET `modelid2`='15552', `modelid3`='15552', `modelid4`='15552' WHERE `entry`='15542'; -- Twilight Marauder
UPDATE `creature_template` SET `modelid2`='15572', `modelid3`='15573' WHERE `entry`='15618'; -- Orgrimmar Legion Hexxer
UPDATE `creature_template` SET `modelid1`='15575', `modelid2`='15572', `modelid3`='15573', `modelid4`='0' WHERE `entry`='15619'; -- silithus test mob
UPDATE `creature_template` SET `modelid1`='15596', `modelid2`='15598', `modelid3`='15597', `modelid4`='15599' WHERE `entry`='15663'; -- War Effort Volunteer
UPDATE `creature_template` SET `modelid2`='15652', `modelid3`='15651', `modelid4`='15653' WHERE `entry`='15696'; -- War Effort Recruit
UPDATE `creature_template` SET `modelid2`='15764', `modelid3`='15763', `modelid4`='15765' WHERE `entry`='15723'; -- Booty Bay Reveler
UPDATE `creature_template` SET `modelid2`='7103', `modelid3`='7104' WHERE `entry`='15724'; -- Drunken Bruiser
UPDATE `creature_template` SET `modelid2`='15803', `modelid3`='15804', `modelid4`='15805' WHERE `entry`='15729'; -- Father Winter's Helper (BIG) gm
UPDATE `creature_template` SET `modelid2`='15708' WHERE `entry`='15731'; -- Darnassus Commendation Officer
UPDATE `creature_template` SET `modelid2`='15717' WHERE `entry`='15736'; -- Orgrimmar Commendation Officer
UPDATE `creature_template` SET `modelid2`='15702' WHERE `entry`='15737'; -- Darkspear Commendation Officer
UPDATE `creature_template` SET `modelid2`='15723' WHERE `entry`='15738'; -- Undercity Commendation Officer
UPDATE `creature_template` SET `modelid2`='15721' WHERE `entry`='15739'; -- Thunder Bluff Commendation Officer
UPDATE `creature_template` SET `modelid2`='6633', `modelid3`='7350', `modelid4`='11091' WHERE `entry`='15749'; -- Lesser Silithid Flayer
UPDATE `creature_template` SET `modelid2`='6633', `modelid3`='7350', `modelid4`='11091' WHERE `entry`='15752'; -- Silithid Flayer
UPDATE `creature_template` SET `modelid2`='6633', `modelid3`='7350', `modelid4`='11091' WHERE `entry`='15756'; -- Greater Silithid Flayer
UPDATE `creature_template` SET `modelid2`='6633', `modelid3`='7350', `modelid4`='11091' WHERE `entry`='15759'; -- Supreme Silithid Flayer
UPDATE `creature_template` SET `modelid2`='6633', `modelid3`='7350', `modelid4`='11091' WHERE `entry`='15808'; -- Minor Silithid Flayer
UPDATE `creature_template` SET `modelid2`='6633', `modelid3`='7350', `modelid4`='11091' WHERE `entry`='15811'; -- Faltering Silithid Flayer
UPDATE `creature_template` SET `modelid2`='15807', `modelid3`='15808', `modelid4`='15809' WHERE `entry`='15832'; -- Father Winter's Helper (BIG) rm
UPDATE `creature_template` SET `modelid3`='15801', `modelid4`='15802' WHERE `entry`='15835'; -- Father Winter's Helper (BIG) rf
UPDATE `creature_template` SET `modelid2`='15796', `modelid3`='15797', `modelid4`='15798' WHERE `entry`='15838'; -- Father Winter's Helper (BIG) gf
UPDATE `creature_template` SET `modelid2`='15810' WHERE `entry`='15839'; -- Might of Kalimdor Grunt
UPDATE `creature_template` SET `modelid2`='15855' WHERE `entry`='15852'; -- Orgrimmar Elite Shieldguard
UPDATE `creature_template` SET `modelid2`='15851', `modelid3`='15824', `modelid4`='15852' WHERE `entry`='15853'; -- Orgrimmar Elite Infantryman
UPDATE `creature_template` SET `modelid2`='15853', `modelid3`='15826', `modelid4`='15854' WHERE `entry`='15854'; -- Orgrimmar Elite Cavalryman
UPDATE `creature_template` SET `modelid2`='15856', `modelid3`='15828', `modelid4`='15857' WHERE `entry`='15855'; -- Tauren Rifleman
UPDATE `creature_template` SET `modelid2`='15830' WHERE `entry`='15856'; -- Tauren Primalist
UPDATE `creature_template` SET `modelid2`='15861' WHERE `entry`='15857'; -- Stormwind Cavalryman
UPDATE `creature_template` SET `modelid2`='15858', `modelid3`='15832', `modelid4`='15859' WHERE `entry`='15858'; -- Stormwind Infantryman
UPDATE `creature_template` SET `modelid2`='15834' WHERE `entry`='15859'; -- Stormwind Archmage
UPDATE `creature_template` SET `modelid2`='15690', `modelid3`='15691', `modelid4`='15692' WHERE `entry`='15860'; -- Kaldorei Marksman
UPDATE `creature_template` SET `modelid2`='15849', `modelid3`='15836', `modelid4`='15850' WHERE `entry`='15861'; -- Ironforge Infantryman
UPDATE `creature_template` SET `modelid2`='15847', `modelid3`='15839', `modelid4`='15848' WHERE `entry`='15862'; -- Ironforge Cavalryman
UPDATE `creature_template` SET `modelid2`='15841' WHERE `entry`='15863'; -- Darkspear Shaman
UPDATE `creature_template` SET `modelid2`='15877', `modelid3`='15863', `modelid4`='15876' WHERE `entry`='15917'; -- Lunar Festival Reveler
UPDATE `creature_template` SET `modelid2`='16595', `modelid3`='16596', `modelid4`='16597' WHERE `entry`='15980'; -- Naxxramas Cultist
UPDATE `creature_template` SET `modelid2`='16599', `modelid3`='16600', `modelid4`='16601' WHERE `entry`='15981'; -- Naxxramas Acolyte
UPDATE `creature_template` SET `modelid2`='6952' WHERE `entry`='15983'; -- [PH] Valentine Reveler, Female
UPDATE `creature_template` SET `modelid2`='15999' WHERE `entry`='16066'; -- Spectral Assassin
UPDATE `creature_template` SET `modelid2`='16938', `modelid3`='16939' WHERE `entry`='16067'; -- Skeletal Steed
UPDATE `creature_template` SET `modelid2`='15999' WHERE `entry`='16093'; -- Spectral Stalker
UPDATE `creature_template` SET `modelid2`='16609' WHERE `entry`='16124'; -- Unrelenting Trainee
UPDATE `creature_template` SET `modelid2`='15305', `modelid3`='15306', `modelid4`='15307' WHERE `entry`='16139'; -- Cenarion Hold Reservist
UPDATE `creature_template` SET `modelid2`='16607' WHERE `entry`='16145'; -- Deathknight Captain
UPDATE `creature_template` SET `modelid2`='10975', `modelid3`='5432', `modelid4`='5265' WHERE `entry`='16360'; -- Zombie Chow
UPDATE `creature_template` SET `modelid2`='16161' WHERE `entry`='16368'; -- Necropolis Acolyte
UPDATE `creature_template` SET `modelid2`='16357', `modelid3`='16356' WHERE `entry`='16371'; -- Polymorphed Pig
UPDATE `creature_template` SET `modelid2`='857' WHERE `entry`='16372'; -- Polymorphed Sheep
UPDATE `creature_template` SET `modelid2`='16360', `modelid3`='16359' WHERE `entry`='16377'; -- Polymorphed Turtle
UPDATE `creature_template` SET `modelid2`='16238' WHERE `entry`='16384'; -- Argent Dawn Initiate
UPDATE `creature_template` SET `modelid2`='16230' WHERE `entry`='16395'; -- Argent Dawn Paladin
UPDATE `creature_template` SET `modelid2`='16231' WHERE `entry`='16433'; -- Argent Dawn Crusader
UPDATE `creature_template` SET `modelid2`='16232' WHERE `entry`='16434'; -- Argent Dawn Champion
UPDATE `creature_template` SET `modelid2`='16239' WHERE `entry`='16435'; -- Argent Dawn Cleric
UPDATE `creature_template` SET `modelid2`='16240' WHERE `entry`='16436'; -- Argent Dawn Priest
UPDATE `creature_template` SET `modelid2`='16606' WHERE `entry`='16505'; -- Naxxramas Follower
UPDATE `creature_template` SET `modelid2`='16604' WHERE `entry`='16506'; -- Naxxramas Worshipper
UPDATE `creature_template` SET `modelid2`='10672', `modelid3`='10670' WHERE `entry`='16511'; -- Argent Mount
UPDATE `creature_template` SET `modelid2`='16433' WHERE `entry`='16889'; -- Stormwind Celebrant
UPDATE `creature_template` SET `modelid2`='16413', `modelid3`='16447', `modelid4`='16448' WHERE `entry`='16890'; -- Ironforge Celebrant
UPDATE `creature_template` SET `modelid2`='16435' WHERE `entry`='16892'; -- Darnassus Celebrant
UPDATE `creature_template` SET `modelid2`='16438', `modelid3`='16445', `modelid4`='16446' WHERE `entry`='16893'; -- Orgrimmar Celebrant
UPDATE `creature_template` SET `modelid2`='16432' WHERE `entry`='16894'; -- Thunder Bluff Celebrant
UPDATE `creature_template` SET `modelid2`='16444' WHERE `entry`='16895'; -- Undercity Celebrant
UPDATE `creature_template` SET `modelid2`='16438', `modelid3`='16445', `modelid4`='16446' WHERE `entry`='17041'; -- Orgrimmar Fireeater
UPDATE `creature_template` SET `modelid2`='16413', `modelid3`='16447', `modelid4`='16448' WHERE `entry`='17048'; -- Ironforge Firebreather
UPDATE `creature_template` SET `modelid2`='16435' WHERE `entry`='17049'; -- Darnassus Firebreather
UPDATE `creature_template` SET `modelid2`='16446' WHERE `entry`='17050'; -- Thunder Bluff Fireeater
UPDATE `creature_template` SET `modelid2`='16444' WHERE `entry`='17051'; -- Undercity Fireeater
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='17163'; -- Worm Target (DND)
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='17231'; -- Garden Gas
UPDATE `creature_template` SET `modelid2`='16925' WHERE `entry`='17869'; -- Silithus Spice Sandworm Mortar Target

-- wotlk
UPDATE `creature_template` SET `modelid1`='539' WHERE `entry`='1505'; -- Night Web Spider
UPDATE `creature_template` SET `modelid1`='5571' WHERE `entry`='1601'; -- Rogue 40
UPDATE `creature_template` SET `modelid1`='18416' WHERE `entry`='2032'; -- Mangy Nightsaber
UPDATE `creature_template` SET `modelid1`='6068' WHERE `entry`='3281'; -- Sarkoth
UPDATE `creature_template` SET `modelid1`='4220', `modelid2`='19832', `modelid3`='4221', `modelid4`='825' WHERE `entry`='3728'; -- Dark Strand Adept
UPDATE `creature_template` SET `modelid1`='19831', `modelid2`='19830', `modelid3`='4223', `modelid4`='4224' WHERE `entry`='3730'; -- Dark Strand Excavator
UPDATE `creature_template` SET `modelid2`='3228' WHERE `entry`='3876'; -- Traumatized Spirit
UPDATE `creature_template` SET `modelid1`='4227', `modelid2`='4228', `modelid3`='19829', `modelid4`='4229' WHERE `entry`='3879'; -- Dark Strand Assassin
UPDATE `creature_template` SET `modelid1`='18540' WHERE `entry`='4045'; -- [UNUSED] JEFF CHOW TEST
UPDATE `creature_template` SET `modelid1`='3980', `modelid2`='3979', `modelid3`='3978', `modelid4`='3977' WHERE `entry`='5681'; -- Female Human Captive
UPDATE `creature_template` SET `modelid1`='21180' WHERE `entry`='6647'; -- Magister Hawkhelm
UPDATE `creature_template` SET `modelid2`='18985' WHERE `entry`='8581'; -- Blood Elf Defender
UPDATE `creature_template` SET `modelid1`='8764' WHERE `entry`='9576'; -- Stormwind Talent Master
UPDATE `creature_template` SET `modelid1`='9806' WHERE `entry`='10339'; -- Gyth
UPDATE `creature_template` SET `modelid1`='11354', `modelid2` = '0' WHERE `entry`='11260'; -- Northshire Peasant
UPDATE `creature_template` SET `modelid1`='310', `modelid2` = '0' WHERE `entry`='11328'; -- Eastvale Peasant
UPDATE `creature_template` SET `modelid3`='0', `modelid4`='13132' WHERE `entry`='11446'; -- Gordok Spirit
UPDATE `creature_template` SET `modelid1`='18981', `modelid2`='18980' WHERE `entry`='12457'; -- Blackwing Spellbinder
UPDATE `creature_template` SET `modelid1`='556', `modelid2`='308' WHERE `entry`='13396'; -- Irondeep Miner
UPDATE `creature_template` SET `modelid2`='13069' WHERE `entry`='14495'; -- Invisible Trigger One
UPDATE `creature_template` SET `modelid1`='11686' WHERE `entry`='14501'; -- Warlock Mount Ritual Mob Type 3, Infernal (DND)
UPDATE `creature_template` SET `modelid3`='3956' WHERE `entry`='14965'; -- Frenzied Bloodseeker Bat
UPDATE `creature_template` SET `modelid1`='15902' WHERE `entry`='15524'; -- Temporary Reindeer
UPDATE `creature_template` SET `modelid2`='18801' WHERE `entry`='15780'; -- Human Male Winter Reveler
UPDATE `creature_template` SET `modelid2`='18800' WHERE `entry`='15781'; -- Human Female Winter Reveler
UPDATE `creature_template` SET `modelid2`='18797' WHERE `entry`='15782'; -- Dwarf Male Winter Reveler
UPDATE `creature_template` SET `modelid2`='18796' WHERE `entry`='15783'; -- Dwarf Female Winter Reveler
UPDATE `creature_template` SET `modelid2`='18802' WHERE `entry`='15784'; -- Night Elf Female Winter Reveler
UPDATE `creature_template` SET `modelid2`='18808' WHERE `entry`='15785'; -- Troll Female Winter Reveler
UPDATE `creature_template` SET `modelid2`='18804' WHERE `entry`='15786'; -- Orc Female Winter Reveler
UPDATE `creature_template` SET `modelid2`='19339' WHERE `entry`='15787'; -- Goblin Female Winter Reveler
UPDATE `creature_template` SET `modelid2`='18810' WHERE `entry`='15788'; -- Undead Female Winter Reveler
UPDATE `creature_template` SET `modelid2`='18806' WHERE `entry`='15789'; -- Tauren Female Winter Reveler
UPDATE `creature_template` SET `modelid2`='18811' WHERE `entry`='15790'; -- Undead Male Winter Reveler
UPDATE `creature_template` SET `modelid2`='18805' WHERE `entry`='15791'; -- Orc Male Winter Reveler
UPDATE `creature_template` SET `modelid2`='18807' WHERE `entry`='15792'; -- Troll Male Winter Reveler
UPDATE `creature_template` SET `modelid2`='18807' WHERE `entry`='15793'; -- Tauren Male Winter Reveler
UPDATE `creature_template` SET `modelid2`='18803' WHERE `entry`='15794'; -- Night Elf Male Winter Reveler
UPDATE `creature_template` SET `modelid2`='19342' WHERE `entry`='15795'; -- Goblin Male Winter Reveler
UPDATE `creature_template` SET `modelid1`='15880' WHERE `entry`='15902'; -- Giant Spotlight
UPDATE `creature_template` SET `modelid1`='10535', `modelid2`='10536', `modelid3`='10537', `modelid4`='10538' WHERE `entry`='16315'; -- Deatholme Acolyte
UPDATE `creature_template` SET `modelid1`='10539', `modelid2`='10540', `modelid3`='10541', `modelid4`='10542' WHERE `entry`='16317'; -- Deatholme Necromancer
UPDATE `creature_template` SET `modelid1`='10631', `modelid2`='10632', `modelid3`='10633', `modelid4`='10634' WHERE `entry`='16318'; -- Deatholme Darkmage
UPDATE `creature_template` SET `modelid1`='4841', `modelid2`='4842', `modelid3`='4843', `modelid4`='4844' WHERE `entry`='16330'; -- Sentinel Spy
UPDATE `creature_template` SET `modelid1`='2306', `modelid2`='14613', `modelid3`='14614', `modelid4`='14615' WHERE `entry`='16332'; -- Darnassian Huntress
UPDATE `creature_template` SET `modelid1`='16208', `modelid2`='16209', `modelid3`='16210', `modelid4`='16211' WHERE `entry`='16483'; -- Draenei Survivor
UPDATE `creature_template` SET `modelid1`='16247', `modelid2`='16248', `modelid3`='16709', `modelid4`='16710' WHERE `entry`='16521'; -- Blood Elf Scout
UPDATE `creature_template` SET `modelid2`='16287', `modelid3`='16288', `modelid4`='16289' WHERE `entry`='16578'; -- Blood Elf Pilgrim
UPDATE `creature_template` SET `modelid2`='13991' WHERE `entry`='16608'; -- [PH] Goblin Savage
UPDATE `creature_template` SET `modelid2`='16482', `modelid3`='16483' WHERE `entry`='16909'; -- Bonechewer Savage
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='16914'; -- [Unused] Marauding Crust Burster Visual
UPDATE `creature_template` SET `modelid1`='16490', `modelid2`='16492', `modelid3`='16491', `modelid4`='16493' WHERE `entry`='16971'; -- Injured Draenei
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='16995'; -- Mouth of Kel'Thuzad
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='17001'; -- [Unused] Crust Burster Visual
UPDATE `creature_template` SET `modelid2`='16650', `modelid3`='16651', `modelid4`='16652' WHERE `entry`='17016'; -- Dragonmaw Clan Soldier
UPDATE `creature_template` SET `modelid2`='16666', `modelid3`='16668', `modelid4`='16667' WHERE `entry`='17017'; -- Blackrock Clan Soldier
UPDATE `creature_template` SET `modelid2`='16670', `modelid3`='16671', `modelid4`='16672' WHERE `entry`='17019'; -- Frostwolf Clan Soldier
UPDATE `creature_template` SET `modelid2`='16673', `modelid3`='16674' WHERE `entry`='17021'; -- Warsong Clan Soldier
UPDATE `creature_template` SET `modelid2`='16654' WHERE `entry`='17024'; -- Shadow Council Acolyte
UPDATE `creature_template` SET `modelid1`='21575' WHERE `entry`='17026'; -- Grom Hellscream
UPDATE `creature_template` SET `modelid2`='16323', `modelid3`='16332', `modelid4`='12471' WHERE `entry`='17030'; -- Soldier of the Horde
UPDATE `creature_template` SET `modelid1`='617', `modelid2`='369', `modelid3`='15926', `modelid4`='1755' WHERE `entry`='17102'; -- Angry Murloc
UPDATE `creature_template` SET `modelid2`='12074', `modelid3`='16972' WHERE `entry`='17261'; -- Restless Skeleton
UPDATE `creature_template` SET `modelid1`='16286', `modelid2`='16287', `modelid3`='16288', `modelid4`='16289' WHERE `entry`='17263'; -- Recovering Pilgrim
UPDATE `creature_template` SET `modelid1`='16952', `modelid2`='355', `modelid3`='16951' WHERE `entry`='17278'; -- Venture Co. Saboteur
UPDATE `creature_template` SET `modelid2`='16955', `modelid3`='16957', `modelid4`='16956' WHERE `entry`='17282'; -- Falcon Watch Ranger
UPDATE `creature_template` SET `modelid2`='16993' WHERE `entry`='17379'; -- Stillpine Ancestor Akida
UPDATE `creature_template` SET `modelid2`='16388', `modelid3`='16389', `modelid4`='16390' WHERE `entry`='17382'; -- Honor Hold Infantry
UPDATE `creature_template` SET `modelid2`='16450', `modelid3`='16451' WHERE `entry`='17383'; -- Honor Hold Marksman
UPDATE `creature_template` SET `modelid2`='16298', `modelid3`='16299' WHERE `entry`='17390'; -- Thrallmar Axe Thrower
UPDATE `creature_template` SET `modelid2`='16993' WHERE `entry`='17391'; -- Stillpine Ancestor Coo
UPDATE `creature_template` SET `modelid2`='16993' WHERE `entry`='17393'; -- Stillpine Ancestor Yor
UPDATE `creature_template` SET `modelid2`='16922', `modelid3`='16923' WHERE `entry`='17406'; -- Artificer
UPDATE `creature_template` SET `modelid2`='16993' WHERE `entry`='17410'; -- Stillpine Ancestor Vark
UPDATE `creature_template` SET `modelid2`='16993' WHERE `entry`='17422'; -- Stillpine Ancestor Coo Transform
UPDATE `creature_template` SET `modelid1`='16861', `modelid2`='2001', `modelid3`='6802', `modelid4`='8589' WHERE `entry`='17432'; -- Stillpine Defender
UPDATE `creature_template` SET `modelid1`='16861', `modelid2`='2001', `modelid3`='6802', `modelid4`='8589' WHERE `entry`='17437'; -- Stillpine Defender Corpse
UPDATE `creature_template` SET `modelid1`='11363', `modelid2`='2001', `modelid3`='6802', `modelid4`='8589' WHERE `entry`='17439'; -- Stillpine Hunter
UPDATE `creature_template` SET `modelid2`='17030' WHERE `entry`='17452'; -- Vision of the Prophesied Hero
UPDATE `creature_template` SET `modelid2`='4626' WHERE `entry`='17459'; -- Chess Waiting Room (DND)
UPDATE `creature_template` SET `modelid2`='2001', `modelid3`='6802', `modelid4`='8589' WHERE `entry`='17495'; -- Stillpine Raider
UPDATE `creature_template` SET `modelid2`='16791', `modelid3`='16790', `modelid4`='16792' WHERE `entry`='17549'; -- Blood Watch Peacekeeper
UPDATE `creature_template` SET `modelid2`='17114' WHERE `entry`='17587'; -- Draenei Youngling
UPDATE `creature_template` SET `modelid2`='17116' WHERE `entry`='17591'; -- Blood Elf Bandit
UPDATE `creature_template` SET `modelid3`='16389' WHERE `entry`='17597'; -- [PH] Captain Obvious Jr.
UPDATE `creature_template` SET `modelid2`='17361', `modelid3`='17362', `modelid4`='17363' WHERE `entry`='17604'; -- Sunhawk Spy
UPDATE `creature_template` SET `modelid2`='17474', `modelid3`='17475', `modelid4`='17476' WHERE `entry`='17605'; -- Sunhawk Defiler
UPDATE `creature_template` SET `modelid2`='17357', `modelid3`='17358', `modelid4`='17359' WHERE `entry`='17606'; -- Sunhawk Reclaimer
UPDATE `creature_template` SET `modelid2`='17365', `modelid3`='17366' WHERE `entry`='17607'; -- Sunhawk Defender
UPDATE `creature_template` SET `modelid2`='17353', `modelid3`='17354', `modelid4`='17355' WHERE `entry`='17609'; -- Sunhawk Saboteur
UPDATE `creature_template` SET `modelid2`='17349', `modelid3`='17350', `modelid4`='17351' WHERE `entry`='17610'; -- Sunhawk Agent
UPDATE `creature_template` SET `modelid1`='18783', `modelid2`='11686' WHERE `entry`='17611'; -- Warchief's Portal
UPDATE `creature_template` SET `modelid2`='17380' WHERE `entry`='17612'; -- Quel'dorei Magewraith
UPDATE `creature_template` SET `modelid2`='17116' WHERE `entry`='17641'; -- Sunhawk Ambusher
UPDATE `creature_template` SET `modelid1`='18783', `modelid2`='11686' WHERE `entry`='17645'; -- Infernal Relay
UPDATE `creature_template` SET `modelid1`='17162', `modelid2`='17163', `modelid3`='17165', `modelid4`='17164' WHERE `entry`='17659'; -- Blade of Argus
UPDATE `creature_template` SET `modelid2`='12431', `modelid3`='13949', `modelid4`='13950' WHERE `entry`='17672'; -- Deadwind Villager
UPDATE `creature_template` SET `modelid2`='15435' WHERE `entry`='17677'; -- Arcanagos Spell Dummy
UPDATE `creature_template` SET `modelid2`='17177', `modelid3`='17178', `modelid4`='17179' WHERE `entry`='17681'; -- Expedition Researcher
UPDATE `creature_template` SET `modelid2`='17163', `modelid3`='17165', `modelid4`='17164' WHERE `entry`='17704'; -- Hand of Argus Swordsman
UPDATE `creature_template` SET `modelid2`='15505' WHERE `entry`='17705'; -- Sunhawk Rogue
UPDATE `creature_template` SET `modelid1`='17556', `modelid2`='17194', `modelid3`='17196', `modelid4`='17197' WHERE `entry`='17714'; -- Bloodcursed Voyager
UPDATE `creature_template` SET `modelid2`='19405' WHERE `entry`='17731'; -- Fen Ray
UPDATE `creature_template` SET `modelid3`='19401' WHERE `entry`='17732'; -- Lykul Wasp
UPDATE `creature_template` SET `modelid2`='6633', `modelid3`='7350' WHERE `entry`='17733'; -- [UNUSED] Lykul Larva
UPDATE `creature_template` SET `modelid2`='12293' WHERE `entry`='17734'; -- Underbog Lord
UPDATE `creature_template` SET `modelid2`='17960', `modelid3`='17961', `modelid4`='17962' WHERE `entry`='17814'; -- Lordaeron Watchman
UPDATE `creature_template` SET `modelid2`='17948', `modelid3`='17949', `modelid4`='17950' WHERE `entry`='17815'; -- Lordaeron Sentry
UPDATE `creature_template` SET `modelid2`='18000', `modelid3`='18001', `modelid4`='18002' WHERE `entry`='17819'; -- Durnholde Sentry
UPDATE `creature_template` SET `modelid2`='17980', `modelid3`='17982', `modelid4`='17983' WHERE `entry`='17820'; -- Durnholde Rifleman
UPDATE `creature_template` SET `modelid2`='17268' WHERE `entry`='17824'; -- Captured Sunhawk Agent
UPDATE `creature_template` SET `modelid2`='12191' WHERE `entry`='17829'; -- Lykul Hatchling
UPDATE `creature_template` SET `modelid2`='18009', `modelid3`='18010', `modelid4`='18011' WHERE `entry`='17833'; -- Durnholde Warden
UPDATE `creature_template` SET `modelid2`='299', `modelid4`='298' WHERE `entry`='17837'; -- Troll Berserker
UPDATE `creature_template` SET `modelid2`='5375', `modelid3`='4889', `modelid4`='1823' WHERE `entry`='17846'; -- Pit Spectator
UPDATE `creature_template` SET `modelid2`='17281', `modelid3`='17282' WHERE `entry`='17853'; -- Tracker of the Hand
UPDATE `creature_template` SET `modelid2`='18005', `modelid3`='18006', `modelid4`='18007' WHERE `entry`='17860'; -- Durnholde Veteran
UPDATE `creature_template` SET `modelid2`='15435' WHERE `entry`='17867'; -- Coilfang Periodic Bat Trigger
UPDATE `creature_template` SET `modelid2`='15435' WHERE `entry`='17868'; -- Silithus Spice Worm Mortar Target
UPDATE `creature_template` SET `modelid2`='17281', `modelid3`='17282' WHERE `entry`='17875'; -- Hunter of the Hand
UPDATE `creature_template` SET `modelid1`='775', `modelid2`='9788', `modelid3`='9789', `modelid4`='11489' WHERE `entry`='17878'; -- Scourge Siege Engineer
UPDATE `creature_template` SET `modelid2`='6937' WHERE `entry`='17951'; -- Steamrigger Mechanic
UPDATE `creature_template` SET `modelid2`='20024' WHERE `entry`='17965'; -- Dark Portal Target UNUSED
UPDATE `creature_template` SET `modelid2`='17377' WHERE `entry`='17971'; -- Captured Sunhawk Agent Transform
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='17973'; -- Ysiel's Presence
UPDATE `creature_template` SET `modelid2`='17026' WHERE `entry`='18020'; -- Defender Adrielle
UPDATE `creature_template` SET `modelid2`='17026' WHERE `entry`='18022'; -- Defender Ursi
UPDATE `creature_template` SET `modelid2`='17410' WHERE `entry`='18023'; -- Defender Kranos
UPDATE `creature_template` SET `modelid2`='17026' WHERE `entry`='18024'; -- Defender Sorli
UPDATE `creature_template` SET `modelid2`='17410' WHERE `entry`='18025'; -- Defender Auston
UPDATE `creature_template` SET `modelid2`='17410' WHERE `entry`='18026'; -- Defender Haqi
UPDATE `creature_template` SET `modelid2`='17410' WHERE `entry`='18027'; -- Defender Kadithuul
UPDATE `creature_template` SET `modelid2`='17410' WHERE `entry`='18029'; -- Defender Kajad
UPDATE `creature_template` SET `modelid2`='17026' WHERE `entry`='18030'; -- Knight-Defender Zunade
UPDATE `creature_template` SET `modelid2`='17410' WHERE `entry`='18031'; -- Defender Zaibach
UPDATE `creature_template` SET `modelid2`='17026' WHERE `entry`='18032'; -- Defender Ashoon
UPDATE `creature_template` SET `modelid2`='17026' WHERE `entry`='18034'; -- Defender Katroi
UPDATE `creature_template` SET `modelid2`='18248', `modelid3`='18249', `modelid4`='18250' WHERE `entry`='18092'; -- Tarren Mill Guardsman
UPDATE `creature_template` SET `modelid2`='18266', `modelid3`='18267', `modelid4`='18268' WHERE `entry`='18093'; -- Tarren Mill Protector
UPDATE `creature_template` SET `modelid2`='18262', `modelid3`='18264', `modelid4`='18263' WHERE `entry`='18094'; -- Tarren Mill Lookout
UPDATE `creature_template` SET `modelid2`='1126' WHERE `entry`='18095'; -- Doomfire
UPDATE `creature_template` SET `modelid2`='169' WHERE `entry`='18104'; -- Doomfire Targeting
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='18108'; -- Coilfang Underbog Hydra Trigger
UPDATE `creature_template` SET `modelid2`='11775', `modelid3`='11776', `modelid4`='11777' WHERE `entry`='18126'; -- Expedition Scout
UPDATE `creature_template` SET `modelid1`='17538', `modelid2`='17539', `modelid3`='17540', `modelid4`='17541' WHERE `entry`='18147'; -- Silvermoon Ranger
UPDATE `creature_template` SET `modelid2`='15395', `modelid3`='15398', `modelid4`='15397' WHERE `entry`='18152'; -- Baby Murloc
UPDATE `creature_template` SET `modelid3`='17552' WHERE `entry`='18169'; -- Blood Knight Initiate
UPDATE `creature_template` SET `modelid2`='18258', `modelid3`='18259', `modelid4`='18260' WHERE `entry`='18192'; -- Horde Halaani Guard
UPDATE `creature_template` SET `modelid2`='11775', `modelid3`='11776', `modelid4`='11777' WHERE `entry`='18194'; -- Expedition Preserver
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='18304'; -- Building
UPDATE `creature_template` SET `modelid2`='1126' WHERE `entry`='18374'; -- Focus Fire
UPDATE `creature_template` SET `modelid3`='0' WHERE `entry`='18419'; -- Bloodwarder Greenkeeper
UPDATE `creature_template` SET `modelid3`='0' WHERE `entry`='18422'; -- Sunseeker Botanist
UPDATE `creature_template` SET `modelid2`='17522' WHERE `entry`='18479'; -- Vazruden Fire Trap
UPDATE `creature_template` SET `modelid2`='17943', `modelid3`='17944', `modelid4`='17945' WHERE `entry`='18495'; -- Auchenai Vindicator
UPDATE `creature_template` SET `modelid2`='17911', `modelid3`='17912', `modelid4`='17919' WHERE `entry`='18497'; -- Auchenai Monk
UPDATE `creature_template` SET `modelid2`='17921', `modelid3`='17922', `modelid4`='17923' WHERE `entry`='18498'; -- Unliving Soldier
UPDATE `creature_template` SET `modelid2`='17933', `modelid3`='17934', `modelid4`='17935' WHERE `entry`='18499'; -- Unliving Sorcerer
UPDATE `creature_template` SET `modelid2`='17929', `modelid3`='17930', `modelid4`='17931' WHERE `entry`='18500'; -- Unliving Cleric
UPDATE `creature_template` SET `modelid2`='17939', `modelid3`='17940', `modelid4`='17941' WHERE `entry`='18501'; -- Unliving Stalker
UPDATE `creature_template` SET `modelid2`='17937' WHERE `entry`='18503'; -- Phantasmal Possessor
UPDATE `creature_template` SET `modelid1`='17538', `modelid2`='17539', `modelid3`='17540', `modelid4`='17541' WHERE `entry`='18507'; -- Silvermoon Farstrider
UPDATE `creature_template` SET `modelid2`='17992' WHERE `entry`='18521'; -- Raging Skeleton
UPDATE `creature_template` SET `modelid2`='17990' WHERE `entry`='18524'; -- Angered Skeleton
UPDATE `creature_template` SET `modelid2`='17914', `modelid3`='17915' WHERE `entry`='18552'; -- Aldor Mason
UPDATE `creature_template` SET `modelid2`='17933', `modelid3`='17934', `modelid4`='17935' WHERE `entry`='18558'; -- Phasing Sorcerer
UPDATE `creature_template` SET `modelid3`='22862' WHERE `entry`='18562'; -- Purple Ground Rune
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='18582'; -- Dark Portal Emitter Invisible Stalker
UPDATE `creature_template` SET `modelid2`='18091', `modelid3`='18092', `modelid4`='18093' WHERE `entry`='18598'; -- Orc Prisoner
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='18599'; -- Exodar Aura Emitter
UPDATE `creature_template` SET `modelid2`='18587', `modelid3`='18588' WHERE `entry`='18631'; -- Cabal Cultist
UPDATE `creature_template` SET `modelid2`='18594', `modelid3`='18595' WHERE `entry`='18632'; -- Cabal Executioner
UPDATE `creature_template` SET `modelid2`='18580', `modelid3`='18581', `modelid4`='18582' WHERE `entry`='18633'; -- Cabal Acolyte
UPDATE `creature_template` SET `modelid2`='18606', `modelid3`='18608' WHERE `entry`='18634'; -- Cabal Summoner
UPDATE `creature_template` SET `modelid2`='18590', `modelid3`='18591', `modelid4`='18592' WHERE `entry`='18635'; -- Cabal Deathsworn
UPDATE `creature_template` SET `modelid3`='18585' WHERE `entry`='18636'; -- Cabal Assassin
UPDATE `creature_template` SET `modelid2`='18600', `modelid3`='18601' WHERE `entry`='18637'; -- Cabal Shadow Priest
UPDATE `creature_template` SET `modelid2`='18613', `modelid3`='18614' WHERE `entry`='18638'; -- Cabal Zealot
UPDATE `creature_template` SET `modelid2`='18603', `modelid3`='18604' WHERE `entry`='18639'; -- Cabal Spellbinder
UPDATE `creature_template` SET `modelid2`='18610', `modelid3`='18611' WHERE `entry`='18640'; -- Cabal Warlock
UPDATE `creature_template` SET `modelid2`='2325', `modelid3`='237', `modelid4`='238' WHERE `entry`='18650'; -- Tarren Mill Horse
UPDATE `creature_template` SET `modelid2`='18054', `modelid3`='18055' WHERE `entry`='18657'; -- Tarren Mill Fisherman
UPDATE `creature_template` SET `modelid1`='18783', `modelid2`='11686' WHERE `entry`='18665'; -- Overrun Target
UPDATE `creature_template` SET `modelid2`='5375', `modelid3`='4889', `modelid4`='1823' WHERE `entry`='18673'; -- Pit Announcer
UPDATE `creature_template` SET `modelid2`='18078', `modelid3`='18079', `modelid4`='18080' WHERE `entry`='18702'; -- Auchenai Necromancer
UPDATE `creature_template` SET `modelid2`='15435' WHERE `entry`='18721'; -- World Trigger (Friendly + Invis Man)
UPDATE `creature_template` SET `modelid2`='18104', `modelid3`='18105' WHERE `entry`='18722'; -- Leper Gnome Laborer
UPDATE `creature_template` SET `modelid2`='14558', `modelid3`='15132', `modelid4`='4305' WHERE `entry`='18740'; -- Serpent
UPDATE `creature_template` SET `modelid2`='11180' WHERE `entry`='18742'; -- Worgen
UPDATE `creature_template` SET `modelid1`='21584', `modelid2`='15880' WHERE `entry`='18793'; -- Invisible Target
UPDATE `creature_template` SET `modelid3`='0' WHERE `entry`='18794'; -- Cabal Ritualist
UPDATE `creature_template` SET `modelid2`='19051', `modelid3`='19052' WHERE `entry`='18806'; -- Solarium Priest
UPDATE `creature_template` SET `modelid2`='18597', `modelid3`='18598' WHERE `entry`='18830'; -- Cabal Fanatic
UPDATE `creature_template` SET `modelid2`='19049' WHERE `entry`='18925'; -- Solarium Agent
UPDATE `creature_template` SET `modelid2`='18337', `modelid3`='18338', `modelid4`='18339' WHERE `entry`='18934'; -- Durnholde Mage
UPDATE `creature_template` SET `modelid2`='19112' WHERE `entry`='18961'; -- Void Spawner
UPDATE `creature_template` SET `modelid2`='17188' WHERE `entry`='19010'; -- Camera Shaker - JK
UPDATE `creature_template` SET `modelid2`='7907' WHERE `entry`='19028'; -- The Overlook Capture Credit Marker
UPDATE `creature_template` SET `modelid1`='19174', `modelid2`='19173' WHERE `entry`='19148'; -- Dwarf Commoner
UPDATE `creature_template` SET `modelid1`='18572', `modelid2`='18573', `modelid3`='18574', `modelid4`='18575' WHERE `entry`='19157'; -- Captured Halaani Vindicator
UPDATE `creature_template` SET `modelid2`='18506', `modelid3`='18507', `modelid4`='18508' WHERE `entry`='19158'; -- Garadar Guard Captain
UPDATE `creature_template` SET `modelid1`='19176', `modelid2`='19175' WHERE `entry`='19172'; -- Gnome Commoner
UPDATE `creature_template` SET `modelid1`='19180', `modelid2`='19179' WHERE `entry`='19173'; -- Night Elf Commoner
UPDATE `creature_template` SET `modelid1`='19181', `modelid2`='19182' WHERE `entry`='19175'; -- Orc Commoner
UPDATE `creature_template` SET `modelid1`='19184', `modelid2`='19183' WHERE `entry`='19176'; -- Tauren Commoner
UPDATE `creature_template` SET `modelid1`='19186', `modelid2`='19185' WHERE `entry`='19177'; -- Troll Commoner
UPDATE `creature_template` SET `modelid1`='19188', `modelid2`='19187' WHERE `entry`='19178'; -- Forsaken Commoner
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='19198'; -- Invisible Tractor Beam Source
UPDATE `creature_template` SET `modelid2`='18580', `modelid3`='18581', `modelid4`='18582' WHERE `entry`='19208'; -- Summoned Cabal Acolyte
UPDATE `creature_template` SET `modelid2`='18695' WHERE `entry`='19230'; -- Dark Assault - Legion Portal - Invisible Stalker
UPDATE `creature_template` SET `modelid1`='18675', `modelid2`='18676', `modelid3`='18677', `modelid4`='18678' WHERE `entry`='19258'; -- Bloodmage
UPDATE `creature_template` SET `modelid2`='11406' WHERE `entry`='19320'; -- Argent Protector
UPDATE `creature_template` SET `modelid2`='16150' WHERE `entry`='19322'; -- Argent Guardian
UPDATE `creature_template` SET `modelid2`='19002' WHERE `entry`='19365'; -- Argent Bowman
UPDATE `creature_template` SET `modelid2`='19429', `modelid3`='19430' WHERE `entry`='19366'; -- Argent Hunter
UPDATE `creature_template` SET `modelid2`='19432', `modelid3`='19433' WHERE `entry`='19386'; -- Stormwind Marshal
UPDATE `creature_template` SET `modelid2`='19426', `modelid3`='19427' WHERE `entry`='19406'; -- Thunder Bluff Huntsman
UPDATE `creature_template` SET `modelid2`='17903' WHERE `entry`='19407'; -- Azuremyst Vindicator
UPDATE `creature_template` SET `modelid1`='4259', `modelid2`='4602', `modelid3`='16307', `modelid4`='16308' WHERE `entry`='19432'; -- Injured Grunt
UPDATE `creature_template` SET `modelid2`='16423', `modelid3`='16424', `modelid4`='18900' WHERE `entry`='19454'; -- Fallen Stormwind Infantry
UPDATE `creature_template` SET `modelid3`='0' WHERE `entry`='19486'; -- Sunseeker Chemist
UPDATE `creature_template` SET `modelid1`='21341', `modelid3`='0', `modelid4`='0' WHERE `entry`='19505'; -- Sunseeker Channeler
UPDATE `creature_template` SET `modelid2`='19494', `modelid3`='19495', `modelid4`='19496' WHERE `entry`='19553'; -- Sunfury Worker
UPDATE `creature_template` SET `modelid2`='13069' WHERE `entry`='19563'; -- Dimensius Quest Enabler
UPDATE `creature_template` SET `modelid2`='6739' WHERE `entry`='19566'; -- Nethergarde Advisor
UPDATE `creature_template` SET `modelid2`='15880' WHERE `entry`='19577'; -- Arcane Orb Target
UPDATE `creature_template` SET `modelid2`='19519' WHERE `entry`='19592'; -- Kor'kron Warrior
UPDATE `creature_template` SET `modelid2`='207', `modelid3`='2327', `modelid4`='2328' WHERE `entry`='19596'; -- Kor'kron Mount
UPDATE `creature_template` SET `modelid2`='17820' WHERE `entry`='19600'; -- Warp-Master Leranis
UPDATE `creature_template` SET `modelid2`='19520' WHERE `entry`='19601'; -- Tauren Warrior
UPDATE `creature_template` SET `modelid2`='19024', `modelid3`='19025', `modelid4`='19026' WHERE `entry`='19602'; -- Tauren Mount
UPDATE `creature_template` SET `modelid2`='19024', `modelid3`='19025', `modelid4`='19026' WHERE `entry`='19605'; -- Duros
UPDATE `creature_template` SET `modelid2`='18368' WHERE `entry`='19609'; -- Mo'arg Engineer Transform (Drill)
UPDATE `creature_template` SET `modelid2`='19024', `modelid3`='19025', `modelid4`='19026' WHERE `entry`='19613'; -- Drakan
UPDATE `creature_template` SET `modelid2`='6633', `modelid3`='7350', `modelid4`='11091' WHERE `entry`='19632'; -- Lykul Stinger
UPDATE `creature_template` SET `modelid1`='21331', `modelid2`='21332', `modelid3`='0', `modelid4`='0' WHERE `entry`='19633'; -- Bloodwarder Mender
UPDATE `creature_template` SET `modelid2`='17918', `modelid3`='17917' WHERE `entry`='19650'; -- [PH]Sunfury Caster - Sunfury Hold
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='19750'; -- Chilled Ground
UPDATE `creature_template` SET `modelid2`='20774' WHERE `entry`='19797'; -- Illidari Highlord
UPDATE `creature_template` SET `modelid2`='16503', `modelid3`='16504', `modelid4`='16505' WHERE `entry`='19863'; -- Vengeful Unyielding
UPDATE `creature_template` SET `modelid2`='16503', `modelid3`='16504', `modelid4`='16505' WHERE `entry`='19864'; -- Vengeful Unyielding Captain
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='19870'; -- Invis KV Shield Generator
UPDATE `creature_template` SET `modelid2`='19240' WHERE `entry`='19883'; -- Mana Storm
UPDATE `creature_template` SET `modelid2`='19387' WHERE `entry`='20031'; -- Bloodwarder Legionnaire
UPDATE `creature_template` SET `modelid2`='21000' WHERE `entry`='20032'; -- Bloodwarder Vindicator
UPDATE `creature_template` SET `modelid2`='19391' WHERE `entry`='20033'; -- Astromancer
UPDATE `creature_template` SET `modelid2`='19393' WHERE `entry`='20034'; -- Star Scryer
UPDATE `creature_template` SET `modelid2`='19397' WHERE `entry`='20035'; -- Bloodwarder Marshal
UPDATE `creature_template` SET `modelid2`='21001' WHERE `entry`='20036'; -- Bloodwarder Squire
UPDATE `creature_template` SET `modelid2`='19399' WHERE `entry`='20037'; -- Tempest Falconer
UPDATE `creature_template` SET `modelid2`='19413' WHERE `entry`='20042'; -- Tempest-Smith
UPDATE `creature_template` SET `modelid2`='19471' WHERE `entry`='20043'; -- Apprentice Star Scryer
UPDATE `creature_template` SET `modelid2`='19473' WHERE `entry`='20044'; -- Novice Astromancer
UPDATE `creature_template` SET `modelid2`='19475' WHERE `entry`='20045'; -- Nether Scryer
UPDATE `creature_template` SET `modelid2`='19424' WHERE `entry`='20046'; -- Astromancer Lord
UPDATE `creature_template` SET `modelid2`='19500' WHERE `entry`='20047'; -- Crimson Hand Battle Mage
UPDATE `creature_template` SET `modelid2`='19506' WHERE `entry`='20048'; -- Crimson Hand Centurion
UPDATE `creature_template` SET `modelid2`='19504' WHERE `entry`='20049'; -- Crimson Hand Blood Knight
UPDATE `creature_template` SET `modelid2`='19508' WHERE `entry`='20050'; -- Crimson Hand Inquisitor
UPDATE `creature_template` SET `modelid1`='19317', `modelid2`='19316', `modelid3`='0' WHERE `entry`='20078'; -- Summoned Bloodwarder Reservist
UPDATE `creature_template` SET `modelid1`='21331', `modelid2`='21332', `modelid3`='0', `modelid4`='0' WHERE `entry`='20083'; -- Summoned Bloodwarder Mender
UPDATE `creature_template` SET `modelid2`='16925' WHERE `entry`='20085'; -- Infernal Invasion Hero Say Director
UPDATE `creature_template` SET `modelid2`='17612' WHERE `entry`='20086'; -- Netherstorm Triangulation Point One Trigger
UPDATE `creature_template` SET `modelid2`='17612' WHERE `entry`='20114'; -- Netherstorm Triangulation Point Two Trigger
UPDATE `creature_template` SET `modelid2`='17612' WHERE `entry`='20128'; -- Netherstorm Triangulation Point Three Trigger
UPDATE `creature_template` SET `modelid2`='19280', `modelid3`='19281' WHERE `entry`='20129'; -- Custodian of Time
UPDATE `creature_template` SET `modelid2`='16503', `modelid3`='16504', `modelid4`='16505' WHERE `entry`='20137'; -- Vengeful Unyielding Footman
UPDATE `creature_template` SET `modelid2`='10812' WHERE `entry`='20155'; -- Hillsbrad Internment Lodge Quest Trigger
UPDATE `creature_template` SET `modelid2`='10812' WHERE `entry`='20156'; -- Thrall Quest Trigger
UPDATE `creature_template` SET `modelid2`='15435' WHERE `entry`='20212'; -- World Trigger (Horde Friendly + Invis Man)
UPDATE `creature_template` SET `modelid2`='15435' WHERE `entry`='20213'; -- World Trigger (Alliance Friendly + Invis Man)
UPDATE `creature_template` SET `modelid1`='20359' WHERE `entry`='20225'; -- Swift Warstrider
UPDATE `creature_template` SET `modelid2`='18684' WHERE `entry`='20229'; -- Void Spawner - Quest - Void Ridge - Galaxis
UPDATE `creature_template` SET `modelid2`='17188' WHERE `entry`='20391'; -- Event Generator Old Hillsbrad
UPDATE `creature_template` SET `modelid2`='2177', `modelid3`='6295' WHERE `entry`='20396'; -- Captured Critter
UPDATE `creature_template` SET `modelid2`='2177', `modelid3`='901' WHERE `entry`='20398'; -- Reanimated Critter
UPDATE `creature_template` SET `modelid2`='19613', `modelid3`='19614', `modelid4`='19615' WHERE `entry`='20422'; -- Kirin Tor Mage
UPDATE `creature_template` SET `modelid2`='556', `modelid3`='310' WHERE `entry`='20424'; -- Hillsbrad Peasant
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='20425'; -- Fleshbeast Trap
UPDATE `creature_template` SET `modelid2`='19620', `modelid3`='129', `modelid4`='104' WHERE `entry`='20426'; -- Hillsbrad Citizen
UPDATE `creature_template` SET `modelid2`='277', `modelid3`='226', `modelid4`='105' WHERE `entry`='20428'; -- Hillsbrad Citizen
UPDATE `creature_template` SET `modelid2`='109', `modelid3`='278', `modelid4`='285' WHERE `entry`='20429'; -- Hillsbrad Citizen
UPDATE `creature_template` SET `modelid2`='99', `modelid3`='964', `modelid4`='98' WHERE `entry`='20430'; -- Hillsbrad Citizen
UPDATE `creature_template` SET `modelid2`='1170', `modelid3`='236', `modelid4`='2405' WHERE `entry`='20434'; -- Horse
UPDATE `creature_template` SET `modelid2`='19449', `modelid3`='19450', `modelid4`='19451' WHERE `entry`='20436'; -- Sunfury Protector
UPDATE `creature_template` SET `modelid2`='3257' WHERE `entry`='20556'; -- Stormwind Marine
UPDATE `creature_template` SET `modelid2`='14501' WHERE `entry`='20562'; -- Invisible Stalker (Scale x5)
UPDATE `creature_template` SET `modelid2`='15435' WHERE `entry`='20605'; -- Dr. Boom
UPDATE `creature_template` SET `modelid2`='15880' WHERE `entry`='20675'; -- Legion Hold - Infernal Dummy
UPDATE `creature_template` SET `modelid1`='19725', `modelid2`='11686' WHERE `entry`='20709'; -- Blade Dance Target
UPDATE `creature_template` SET `modelid1`='21171' WHERE `entry`='20783'; -- Porfus the Gem Gorger
UPDATE `creature_template` SET `modelid1`='19668' WHERE `entry`='20784'; -- Armbreaker Huffaz
UPDATE `creature_template` SET `modelid1`='21170' WHERE `entry`='20786'; -- Gul'bor
UPDATE `creature_template` SET `modelid1`='19874' WHERE `entry`='20788'; -- Forgosh
UPDATE `creature_template` SET `modelid1`='21167' WHERE `entry`='20790'; -- Malevus the Mad
UPDATE `creature_template` SET `modelid3`='0' WHERE `entry`='20859'; -- Arcatraz Warder
UPDATE `creature_template` SET `modelid2`='17188' WHERE `entry`='20863'; -- Pet Book DEM
UPDATE `creature_template` SET `modelid2`='1126' WHERE `entry`='20978'; -- Wrath-Scryer's Felfire
UPDATE `creature_template` SET `modelid2`='16946' WHERE `entry`='20979'; -- Stormwind Flavor - Alliance Portal - Invisible Stalker
UPDATE `creature_template` SET `modelid2`='19595' WHERE `entry`='20982'; -- Invis Talbuk Credit
UPDATE `creature_template` SET `modelid3`='0' WHERE `entry`='20988'; -- Sunseeker Engineer
UPDATE `creature_template` SET `modelid1`='19970', `modelid2`='19968', `modelid3`='0' WHERE `entry`='20990'; -- Bloodwarder Physician
UPDATE `creature_template` SET `modelid2`='19449', `modelid3`='19450', `modelid4`='19451' WHERE `entry`='20994'; -- Sunfury Elite
UPDATE `creature_template` SET `modelid2`='17623', `modelid3`='17621', `modelid4`='17624' WHERE `entry`='20995'; -- Shadowmoon Villager
UPDATE `creature_template` SET `modelid1`='9790' WHERE `entry`='21003'; -- Unkillable Test Dummy 73 Raid Debuffed Warrior
UPDATE `creature_template` SET `modelid2`='17188' WHERE `entry`='21054'; -- Blade's Edge - Orb Trigger 04
UPDATE `creature_template` SET `modelid1`='16480', `modelid2`='11686' WHERE `entry`='21090'; -- Professor Dabiri
UPDATE `creature_template` SET `modelid2`='16925' WHERE `entry`='21121'; -- Bonechewer Quest credit marker
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='21122'; -- OLDWorld Trigger (Large AOI) (DO NOT DELETE)
UPDATE `creature_template` SET `modelid2`='5049' WHERE `entry`='21146'; -- Legion Prototype Cannon 2 & 3 Felguard
UPDATE `creature_template` SET `modelid2`='17720', `modelid3`='17721', `modelid4`='17719' WHERE `entry`='21154'; -- Kor'kron Armored Wyvern Mount
UPDATE `creature_template` SET `modelid2`='20757', `modelid3`='20758', `modelid4`='20759' WHERE `entry`='21180'; -- Demon Hunter Initiate
UPDATE `creature_template` SET `modelid2`='1305', `modelid3`='3617' WHERE `entry`='21191'; -- Designer Island Murloc Hunter [PH]
UPDATE `creature_template` SET `modelid1`='23691' WHERE `entry`='21235'; -- "Backstab" Bindo Gearbomb
UPDATE `creature_template` SET `modelid2`='19076', `modelid3`='19077' WHERE `entry`='21240'; -- Designer Island Murloc Bait [PH]
UPDATE `creature_template` SET `modelid2`='2590' WHERE `entry`='21243'; -- Designer Island Gnome Emote [PH]
UPDATE `creature_template` SET `modelid2`='304' WHERE `entry`='21247'; -- Oronok's Chicken
UPDATE `creature_template` SET `modelid1`='22732' WHERE `entry`='21250'; -- Pink Elekk
UPDATE `creature_template` SET `modelid2`='18567', `modelid3`='18568', `modelid4`='18569' WHERE `entry`='21258'; -- Slain Neophyte
UPDATE `creature_template` SET `modelid2`='20160' WHERE `entry`='21266'; -- Ravager Hatchling
UPDATE `creature_template` SET `modelid2`='17963' WHERE `entry`='21276'; -- Kil'sorrow Agent
UPDATE `creature_template` SET `modelid2`='15880' WHERE `entry`='21281'; -- Designer Island Gnome Spell Target
UPDATE `creature_template` SET `modelid2`='18567', `modelid3`='18568', `modelid4`='18569' WHERE `entry`='21288'; -- (PH) Neophyte Combatant
UPDATE `creature_template` SET `modelid2`='19595' WHERE `entry`='21297'; -- Invis Invisibility Caster
UPDATE `creature_template` SET `modelid2`='19992' WHERE `entry`='21303'; -- Defender Corpse
UPDATE `creature_template` SET `modelid2`='19994' WHERE `entry`='21304'; -- Warder Corpse
UPDATE `creature_template` SET `modelid2`='18567', `modelid3`='18568', `modelid4`='18569' WHERE `entry`='21312'; -- Neophyte Guardian
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='21321'; -- Vision Guide Kill Credit Trigger
UPDATE `creature_template` SET `modelid2`='6937', `modelid3`='6932' WHERE `entry`='21338'; -- Coilfang Leper
UPDATE `creature_template` SET `modelid2`='19595' WHERE `entry`='21353'; -- Terokkar - Bone Wastes - Soul Trigger
UPDATE `creature_template` SET `modelid2`='17200' WHERE `entry`='21360'; -- Terokkar - Bone Wastes - Nether Orb Blue
UPDATE `creature_template` SET `modelid2`='4260', `modelid3`='4602', `modelid4`='4601' WHERE `entry`='21361'; -- Designer Island Orc Trainee [PH]
UPDATE `creature_template` SET `modelid2`='16946' WHERE `entry`='21363'; -- Terokkar - Bone Wastes - Portal Trigger
UPDATE `creature_template` SET `modelid2`='21342' WHERE `entry`='21365'; -- Floating Skull
UPDATE `creature_template` SET `modelid2`='19595' WHERE `entry`='21366'; -- Terokkar - Bone Wastes - Portal Trigger 02
UPDATE `creature_template` SET `modelid2`='3257' WHERE `entry`='21367'; -- Designer Island Battle Participant A [PH]
UPDATE `creature_template` SET `modelid2`='4260', `modelid3`='4602', `modelid4`='4601' WHERE `entry`='21388'; -- Designer Island Horde [PH]
UPDATE `creature_template` SET `modelid2`='4260', `modelid3`='4602', `modelid4`='4601' WHERE `entry`='21415'; -- Designer Island Horde Archer [PH]
UPDATE `creature_template` SET `modelid2`='17612' WHERE `entry`='21418'; -- Invis Infernal Target
UPDATE `creature_template` SET `modelid2`='20288', `modelid3`='20288', `modelid4`='20289' WHERE `entry`='21430'; -- Unliving Draenei
UPDATE `creature_template` SET `modelid2`='17200' WHERE `entry`='21473'; -- Bone Wastes - Beam Target 01
UPDATE `creature_template` SET `modelid2`='20316', `modelid3`='20319', `modelid4`='20321' WHERE `entry`='21490'; -- Horde Transporter Malfunction
UPDATE `creature_template` SET `modelid2`='20317', `modelid3`='20320', `modelid4`='20318' WHERE `entry`='21491'; -- Alliance Transporter Malfunction
UPDATE `creature_template` SET `modelid1`='8574' WHERE `entry`='21497'; -- Blackscale
UPDATE `creature_template` SET `modelid2`='20336', `modelid3`='20337', `modelid4`='20338' WHERE `entry`='21503'; -- Sunfury Warlock
UPDATE `creature_template` SET `modelid2`='20340', `modelid3`='20341', `modelid4`='20342' WHERE `entry`='21505'; -- Sunfury Summoner
UPDATE `creature_template` SET `modelid2`='19449', `modelid3`='19450' WHERE `entry`='21507'; -- Karabor Bloodwarder
UPDATE `creature_template` SET `modelid2`='20351', `modelid3`='20354', `modelid4`='20355' WHERE `entry`='21630'; -- Blood Elf Male Illusion ALEX
UPDATE `creature_template` SET `modelid2`='20353', `modelid3`='20356', `modelid4`='20357' WHERE `entry`='21631'; -- Blood Elf Female Illusion ALEX
UPDATE `creature_template` SET `modelid1`='19489', `modelid3`='19487', `modelid4`='19488' WHERE `entry`='21742'; -- Sunfury Eradicator
UPDATE `creature_template` SET `modelid2`='20452' WHERE `entry`='21753'; -- Shadow Council Felsworn
UPDATE `creature_template` SET `modelid2`='20454' WHERE `entry`='21754'; -- Shadow Council Zealot
UPDATE `creature_template` SET `modelid2`='17188' WHERE `entry`='21756'; -- Shadowmoon Mark of Kael
UPDATE `creature_template` SET `modelid1`='14556' WHERE `entry`='21768'; -- Vagath
UPDATE `creature_template` SET `modelid2`='20490', `modelid3`='20491', `modelid4`='20492' WHERE `entry`='21788'; -- Shadowmoon Zealot
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='21800'; -- Singing Ridge Summon Bunny
UPDATE `creature_template` SET `modelid2`='20551', `modelid3`='20552', `modelid4`='20553' WHERE `entry`='21815'; -- Cleric of Karabor
UPDATE `creature_template` SET `modelid2`='18825', `modelid3`='18826' WHERE `entry`='21866'; -- Reanimated Spirit
UPDATE `creature_template` SET `modelid2`='16925' WHERE `entry`='21871'; -- Disembodied Spirit
UPDATE `creature_template` SET `modelid1`='20570', `modelid2`='16925' WHERE `entry`='21876'; -- Chain of Shadows
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='21880'; -- Exploding Rune
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='21910'; -- Ride the Lightning Kill Credit Trigger
UPDATE `creature_template` SET `modelid2`='5243', `modelid3`='5293', `modelid4`='1773' WHERE `entry`='21920'; -- Tidewalker Lurker
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='21929'; -- Trapping the Light Kill Credit Trigger
UPDATE `creature_template` SET `modelid1`='19725', `modelid2`='15880' WHERE `entry`='21933'; -- Hydross Beam Helper
UPDATE `creature_template` SET `modelid1`='19725', `modelid2`='15880' WHERE `entry`='21934'; -- Hydross Cleansing Field Helper
UPDATE `creature_template` SET `modelid2`='20625', `modelid3`='20626', `modelid4`='20627' WHERE `entry`='21951'; -- Thunderlord Clan Sub-Chief
UPDATE `creature_template` SET `modelid2`='20673', `modelid3`='18288' WHERE `entry`='21960'; -- Gan'arg Technician
UPDATE `creature_template` SET `modelid2`='20650' WHERE `entry`='21968'; -- Silvermoon City Commendation Officer
UPDATE `creature_template` SET `modelid2`='20652' WHERE `entry`='21969'; -- Exodar Commendation Officer
UPDATE `creature_template` SET `modelid2`='11376', `modelid3`='11377' WHERE `entry`='21977'; -- Gadgetzan Air Strike Caller
UPDATE `creature_template` SET `modelid2`='20485', `modelid3`='20486', `modelid4`='20487' WHERE `entry`='21982'; -- Wyrmcult Ambusher
UPDATE `creature_template` SET `modelid1`='18783', `modelid2`='13069' WHERE `entry`='21987'; -- World Trigger (Tiny)
UPDATE `creature_template` SET `modelid2`='20779', `modelid3`='18251', `modelid4`='10691' WHERE `entry`='22075'; -- Illidari Soldier
UPDATE `creature_template` SET `modelid2`='20784', `modelid3`='20785' WHERE `entry`='22097'; -- Veteran Gladiator
UPDATE `creature_template` SET `modelid2`='20787', `modelid3`='20788' WHERE `entry`='22098'; -- Grizzled Gladiator
UPDATE `creature_template` SET `modelid2`='20806' WHERE `entry`='22101'; -- Arena Promoter
UPDATE `creature_template` SET `modelid2`='17980', `modelid3`='17982', `modelid4`='17983' WHERE `entry`='22128'; -- Durnholde Lookout
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='22131'; -- Netherwing Event Pinger
UPDATE `creature_template` SET `modelid2`='20877', `modelid3`='20879', `modelid4`='20880' WHERE `entry`='22217'; -- Felstorm Corruptor
UPDATE `creature_template` SET `modelid2`='13069' WHERE `entry`='22240'; -- Leafbeard Flavor Event Channel Bunny
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='22246'; -- Leafbeard Flavor Event Particle Bunny
UPDATE `creature_template` SET `modelid2`='20893' WHERE `entry`='22251'; -- Dragonmaw Archer
UPDATE `creature_template` SET `modelid2`='16946' WHERE `entry`='22269'; -- Black Drake Corpse
UPDATE `creature_template` SET `modelid1`='20914', `modelid2`='20854' WHERE `entry`='22303'; -- Throne Hound
UPDATE `creature_template` SET `modelid2`='20893' WHERE `entry`='22331'; -- Dragonmaw Elite
UPDATE `creature_template` SET `modelid2`='20755', `modelid3`='20752', `modelid4`='20753' WHERE `entry`='22354'; -- Webbed Sha'tar Vindicator
UPDATE `creature_template` SET `modelid2`='20940', `modelid3`='20941', `modelid4`='20942' WHERE `entry`='22359'; -- Wyrmcult Aspirant
UPDATE `creature_template` SET `modelid2`='20955', `modelid3`='20954', `modelid4`='20956' WHERE `entry`='22372'; -- Mok'Nathal Spirit
UPDATE `creature_template` SET `modelid2`='16046' WHERE `entry`='22383'; -- [DND]Bloodmaul Chatter Credit
UPDATE `creature_template` SET `modelid2`='20908', `modelid3`='20909' WHERE `entry`='22391'; -- Vortex Shardling
UPDATE `creature_template` SET `modelid2`='18000', `modelid3`='18001', `modelid4`='18002' WHERE `entry`='22398'; -- Durnholde Reinforcement
UPDATE `creature_template` SET `modelid2`='20992', `modelid3`='20993', `modelid4`='20994' WHERE `entry`='22425'; -- Evergrove Druid (Transform: Druid)
UPDATE `creature_template` SET `modelid2`='16046' WHERE `entry`='22434'; -- [DND]Ogre Pike Planted Credit
UPDATE `creature_template` SET `modelid2`='16046' WHERE `entry`='22435'; -- [DND]Rexxar's Wyvern Freed Credit
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='22449'; -- Sha'tari Fire
UPDATE `creature_template` SET `modelid2`='20168' WHERE `entry`='22450'; -- Slain Combatant
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='22470'; -- Death's Door Warp-Gate Controller
UPDATE `creature_template` SET `modelid2`='20854' WHERE `entry`='22499'; -- Lesser Wrath Hound
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='22503'; -- Warp-Gate North Kill Bunny
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='22504'; -- Warp-Gate South Kill Bunny
UPDATE `creature_template` SET `modelid1`='24721' WHERE `entry`='22507'; -- Darkness Released
UPDATE `creature_template` SET `modelid2`='21084', `modelid3`='21085' WHERE `entry`='22806'; -- Shattrath Firebreather
UPDATE `creature_template` SET `modelid2`='21089', `modelid3`='21090' WHERE `entry`='22810'; -- Rescued Cenarion Expedition Druid
UPDATE `creature_template` SET `modelid1`='21101' WHERE `entry`='22820'; -- Seer Olum
UPDATE `creature_template` SET `modelid2`='20334', `modelid3`='20478' WHERE `entry`='22840'; -- Ashtongue Illusion
UPDATE `creature_template` SET `modelid2`='21160' WHERE `entry`='22873'; -- Coilskar General
UPDATE `creature_template` SET `modelid2`='21163' WHERE `entry`='22875'; -- Coilskar Sea-Caller
UPDATE `creature_template` SET `modelid2`='21166' WHERE `entry`='22877'; -- Coilskar Wrangler
UPDATE `creature_template` SET `modelid2`='21368' WHERE `entry`='22880'; -- Shadowmoon Champion
UPDATE `creature_template` SET `modelid2`='17540', `modelid3`='18790' WHERE `entry`='22886'; -- Black Temple Captive
UPDATE `creature_template` SET `modelid2`='11686' WHERE `entry`='22888'; -- Vengeful Harbinger Event Starter
UPDATE `creature_template` SET `modelid2`='21125', `modelid3`='21126' WHERE `entry`='22889'; -- Manifest Nightmare
UPDATE `creature_template` SET `modelid2`='21450', `modelid3`='21451', `modelid4`='21533' WHERE `entry`='22939'; -- Temple Concubine
UPDATE `creature_template` SET `modelid2`='21420' WHERE `entry`='22951'; -- Lady Malande
UPDATE `creature_template` SET `modelid2`='21453', `modelid3`='21454', `modelid4`='21534' WHERE `entry`='22955'; -- Charming Courtesan
UPDATE `creature_template` SET `modelid2`='21531', `modelid3`='21532' WHERE `entry`='22959'; -- Spellbound Attendant
UPDATE `creature_template` SET `modelid2`='21536', `modelid3`='21537' WHERE `entry`='22963'; -- Bonechewer Worker
UPDATE `creature_template` SET `modelid2`='21197', `modelid3`='21528' WHERE `entry`='22965'; -- Enslaved Servant
UPDATE `creature_template` SET `modelid1`='21128', `modelid2`='21127' WHERE `entry`='22966'; -- Lightsworn Elekk Rider
UPDATE `creature_template` SET `modelid2`='20713', `modelid3`='20714', `modelid4`='20715' WHERE `entry`='22967'; -- Scryer Cavalier
UPDATE `creature_template` SET `modelid2`='19595' WHERE `entry`='22974'; -- Invis Sparrowhawk Origin
UPDATE `creature_template` SET `modelid2`='17188' WHERE `entry`='22986'; -- Skettis - Invis Raven Stone
UPDATE `creature_template` SET `modelid1`='20154' WHERE `entry`='22992'; -- Guardian of the Hawk
UPDATE `creature_template` SET `modelid1`='21173' WHERE `entry`='22994'; -- Guardian of the Falcon
UPDATE `creature_template` SET `modelid2`='21155', `modelid3`='21158' WHERE `entry`='23004'; -- Skyguard Nether Ray (Flying Mount)
UPDATE `creature_template` SET `modelid2`='21206', `modelid3`='21207' WHERE `entry`='23023'; -- Scryer Reveler
UPDATE `creature_template` SET `modelid2`='21217', `modelid3`='21219' WHERE `entry`='23024'; -- Aldor Reveler
UPDATE `creature_template` SET `modelid2`='21539' WHERE `entry`='23028'; -- Bonechewer Taskmaster
UPDATE `creature_template` SET `modelid2`='21155', `modelid3`='21158' WHERE `entry`='23032'; -- Skyguard Nether Ray (Ground Mount)
UPDATE `creature_template` SET `modelid2`='21223', `modelid3`='21220' WHERE `entry`='23039'; -- Draenei Reveler
UPDATE `creature_template` SET `modelid1`='20570', `modelid2`='11686' WHERE `entry`='23040'; -- Vim'gol's Circle Bunny
UPDATE `creature_template` SET `modelid2`='21232', `modelid3`='21229' WHERE `entry`='23045'; -- Blood Elf Reveler
UPDATE `creature_template` SET `modelid2`='21384', `modelid3`='21385' WHERE `entry`='23047'; -- Shadowmoon Soldier
UPDATE `creature_template` SET `modelid1`='16480', `modelid2`='15880' WHERE `entry`='23081'; -- Vim'gol's Circle Summon Visual Bunny
UPDATE `creature_template` SET `modelid2`='1418' WHERE `entry`='23086'; -- Sewer Rat
UPDATE `creature_template` SET `modelid2`='21262', `modelid3`='21263' WHERE `entry`='23126'; -- [UNUSED] Boss Teron Gorefiend (Mounted)
UPDATE `creature_template` SET `modelid1`='23003' WHERE `entry`='23131'; -- Blood Knight Honor Guard
UPDATE `creature_template` SET `modelid2`='21271', `modelid3`='21272' WHERE `entry`='23133'; -- Alliance Adventurer
UPDATE `creature_template` SET `modelid2`='6173', `modelid3`='17321' WHERE `entry`='23137'; -- Fel Gorehound Transform
UPDATE `creature_template` SET `modelid2`='21376', `modelid3`='21377' WHERE `entry`='23147'; -- Shadowmoon Grunt
UPDATE `creature_template` SET `modelid1`='19975' WHERE `entry`='23149'; -- Mistress of the Mines
UPDATE `creature_template` SET `modelid2`='21285', `modelid3`='21286' WHERE `entry`='23150'; -- Dragonmaw Pitfighter
UPDATE `creature_template` SET `modelid2`='21309', `modelid3`='21310' WHERE `entry`='23170'; -- Alliance Soldier
UPDATE `creature_template` SET `modelid2`='21313', `modelid3`='21314' WHERE `entry`='23171'; -- Horde Soldier
UPDATE `creature_template` SET `modelid2`='18248', `modelid3`='18249', `modelid4`='18250' WHERE `entry`='23175'; -- Tarren Mill Guardsman
UPDATE `creature_template` SET `modelid2`='18248', `modelid3`='18249', `modelid4`='18250' WHERE `entry`='23176'; -- Tarren Mill Guardsman
UPDATE `creature_template` SET `modelid2`='18262', `modelid3`='18264', `modelid4`='18263' WHERE `entry`='23177'; -- Tarren Mill Lookout
UPDATE `creature_template` SET `modelid2`='18262', `modelid3`='18264', `modelid4`='18263' WHERE `entry`='23178'; -- Tarren Mill Lookout
UPDATE `creature_template` SET `modelid2`='18266', `modelid3`='18267', `modelid4`='18268' WHERE `entry`='23179'; -- Tarren Mill Protector
UPDATE `creature_template` SET `modelid1`='18265', `modelid2`='18266', `modelid3`='18267', `modelid4`='18268' WHERE `entry`='23180'; -- Tarren Mill Protector
UPDATE `creature_template` SET `modelid2`='6299', `modelid3`='20738' WHERE `entry`='23206'; -- Akkarai Hatchling
UPDATE `creature_template` SET `modelid2`='20891', `modelid3`='21342' WHERE `entry`='23213'; -- Dragonmaw Peon Mutton
UPDATE `creature_template` SET `modelid2`='21285', `modelid3`='21286' WHERE `entry`='23223'; -- Bonechewer Spectator
UPDATE `creature_template` SET `modelid2`='20779', `modelid3`='18196' WHERE `entry`='23226'; -- Illidari Elite
UPDATE `creature_template` SET `modelid2`='21556', `modelid3`='21554' WHERE `entry`='23235'; -- Bonechewer Blade Fury
UPDATE `creature_template` SET `modelid1`='16480', `modelid2`='19595' WHERE `entry`='23310'; -- Fel Portal Alarm
UPDATE `creature_template` SET `modelid2`='21117', `modelid3`='21115' WHERE `entry`='23319'; -- Ashtongue Broken
UPDATE `creature_template` SET `modelid2`='18657' WHERE `entry`='23328'; -- Legion Ring - Eredar Breath Target
UPDATE `creature_template` SET `modelid2`='21182', `modelid3`='21194' WHERE `entry`='23377'; -- Skyguard Ace
UPDATE `creature_template` SET `modelid2`='21169', `modelid3`='21194', `modelid4`='21182' WHERE `entry`='23383'; -- Skyguard Prisoner
UPDATE `creature_template` SET `modelid2`='21561', `modelid3`='21562' WHERE `entry`='23397'; -- Illidari Blood Lord
UPDATE `creature_template` SET `modelid2`='21565', `modelid3`='21566' WHERE `entry`='23400'; -- Illidari Archon
UPDATE `creature_template` SET `modelid2`='21557', `modelid3`='21558' WHERE `entry`='23402'; -- Illidari Battle-mage
UPDATE `creature_template` SET `modelid2`='21569', `modelid3`='21570' WHERE `entry`='23403'; -- Illidari Assassin
UPDATE `creature_template` SET `modelid1`='21594' WHERE `entry`='23421'; -- Ashtongue Channeler
UPDATE `creature_template` SET `modelid2`='17864', `modelid3`='20817' WHERE `entry`='23423'; -- Arakkoa Illusion
UPDATE `creature_template` SET `modelid2`='21516', `modelid3`='21517' WHERE `entry`='23453'; -- Altar Defender
UPDATE `creature_template` SET `modelid2`='21848', `modelid3`='21847' WHERE `entry`='23479'; -- [PH] Brewfest Dwarf Reveler
UPDATE `creature_template` SET `modelid2`='21859', `modelid3`='21860' WHERE `entry`='23480'; -- [PH] Brewfest Human Reveler
UPDATE `creature_template` SET `modelid1`='22732' WHERE `entry`='23529'; -- Mulgore Pink Elekk
UPDATE `creature_template` SET `modelid1`='22732' WHERE `entry`='23530'; -- Tirisfal Pink Elekk
UPDATE `creature_template` SET `modelid1`='22732' WHERE `entry`='23531'; -- Eversong Pink Elekk
UPDATE `creature_template` SET `modelid2`='21856', `modelid3`='21855' WHERE `entry`='23540'; -- [PH] Brewfest Goblin Reveler
UPDATE `creature_template` SET `modelid2`='21867', `modelid3`='21868' WHERE `entry`='23607'; -- [PH] Brewfest Orc Reveler
UPDATE `creature_template` SET `modelid2`='21871', `modelid3`='21872' WHERE `entry`='23608'; -- [PH] Brewfest Tauren Reveler
UPDATE `creature_template` SET `modelid2`='21875', `modelid3`='21876' WHERE `entry`='23609'; -- [PH] Brewfest Troll Reveler
UPDATE `creature_template` SET `modelid2`='21839', `modelid3`='21840' WHERE `entry`='23610'; -- [PH] Brewfest Blood Elf Reveler
UPDATE `creature_template` SET `modelid2`='21879', `modelid3`='21880' WHERE `entry`='23611'; -- [PH] Brewfest Undead Reveler
UPDATE `creature_template` SET `modelid3`='21843', `modelid2`='21844' WHERE `entry`='23613'; -- [PH] Brewfest Draenei Reveler
UPDATE `creature_template` SET `modelid2`='21851', `modelid3`='21852' WHERE `entry`='23614'; -- [PH] Brewfest Gnome Reveler
UPDATE `creature_template` SET `modelid2`='21863', `modelid3`='21864' WHERE `entry`='23615'; -- [PH] Brewfest Night Elf Reveler
UPDATE `creature_template` SET `modelid2`='21667', `modelid3`='21668' WHERE `entry`='23629'; -- [PH] Darkmoon Faire Carnie APPEARANCE A
UPDATE `creature_template` SET `modelid2`='21671', `modelid3`='21672' WHERE `entry`='23630'; -- [PH] Darkmoon Faire Carnie APPEARANCE B
UPDATE `creature_template` SET `modelid2`='21674', `modelid3`='21675' WHERE `entry`='23631'; -- [PH] Darkmoon Faire Carnie APPEARANCE C
UPDATE `creature_template` SET `modelid2`='21678', `modelid3`='21679' WHERE `entry`='23632'; -- [PH] Darkmoon Faire Carnie APPEARANCE D
UPDATE `creature_template` SET `modelid2`='21681', `modelid3`='21682' WHERE `entry`='23633'; -- [PH] Darkmoon Faire Carnie APPEARANCE E
UPDATE `creature_template` SET `modelid1`='21698', `modelid2`='21699', `modelid3`='21700' WHERE `entry`='23636'; -- Mudsprocket Bruiser
UPDATE `creature_template` SET `modelid1`='24720' WHERE `entry`='23694'; -- Pulsing Pumpkin
UPDATE `creature_template` SET `modelid2`='21694', `modelid3`='21695' WHERE `entry`='23697'; -- Beer Goggles Gnome Male
UPDATE `creature_template` SET `modelid1`='24860' WHERE `entry`='23700'; -- Barleybrew Festive Keg
UPDATE `creature_template` SET `modelid1`='24860' WHERE `entry`='23702'; -- Thunderbrew Festive Keg
UPDATE `creature_template` SET `modelid1`='24860' WHERE `entry`='23706'; -- Gordok Festive Keg
UPDATE `creature_template` SET `modelid2`='257', `modelid3`='251' WHERE `entry`='23712'; -- Touring Orphan
UPDATE `creature_template` SET `modelid1`='229', `modelid3`='239', `modelid4`='2405' WHERE `entry`='23747'; -- Packhorse
UPDATE `creature_template` SET `modelid2`='21827', `modelid3`='21828' WHERE `entry`='23795'; -- Dark Iron Antagonist
UPDATE `creature_template` SET `modelid1`='21693', `modelid2`='21072' WHERE `entry`='23808'; -- [DND] Brewfest Keg Move to Target
UPDATE `creature_template` SET `modelid2`='22304' WHERE `entry`='23818'; -- Amani'shi Hatcher
UPDATE `creature_template` SET `modelid1`='21955', `modelid2`='11686' WHERE `entry`='23830'; -- [DNT] L70ETC FX Controller
UPDATE `creature_template` SET `modelid2`='2984', `modelid3`='2981' WHERE `entry`='23900'; -- Theramore Marksman
UPDATE `creature_template` SET `modelid1`='21693', `modelid2`='21072' WHERE `entry`='24109'; -- [DND] Brewfest Target Dummy Move To Target
UPDATE `creature_template` SET `modelid1`='25017' WHERE `entry`='24319'; -- Creepy Rag Doll
UPDATE `creature_template` SET `modelid1`='24860' WHERE `entry`='24372'; -- Drohn's Distillery Festive Keg
UPDATE `creature_template` SET `modelid1`='24860' WHERE `entry`='24373'; -- T'chali's Voodoo Brew Festive Keg
UPDATE `creature_template` SET `modelid2`='901', `modelid3`='6295', `modelid4`='901' WHERE `entry`='24396'; -- Forest Frog
UPDATE `creature_template` SET `modelid1`='22452' WHERE `entry`='24417'; -- Invisible Man - No Weapons (Server Only/Hide Body)
UPDATE `creature_template` SET `modelid2`='14932', `modelid3`='22468' WHERE `entry`='24483'; -- Frog Transform
UPDATE `creature_template` SET `modelid1`='21854', `modelid2`='21856', `modelid3`='21855', `modelid4`='21857' WHERE `entry`='24484'; -- Brewfest Reveler
UPDATE `creature_template` SET `modelid2`='22482', `modelid3`='22483' WHERE `entry`='24496'; -- Beer Goggles Orc Female
UPDATE `creature_template` SET `modelid1`='22512', `modelid2`='22512', `modelid3`='22511', `modelid4`='22511' WHERE `entry`='24529'; -- Voodoo Servant
UPDATE `creature_template` SET `modelid3`='20284' WHERE `entry`='24552'; -- Sliver
UPDATE `creature_template` SET `modelid1`='16191', `modelid2`='11686' WHERE `entry`='24630'; -- Tackle Bunny
UPDATE `creature_template` SET `modelid2`='22737', `modelid3`='22736' WHERE `entry`='24923'; -- Shattered Sun Channeler
UPDATE `creature_template` SET `modelid2`='19440', `modelid3`='19441' WHERE `entry`='24962'; -- Slain Guard
UPDATE `creature_template` SET `modelid2`='18019', `modelid3`='18016' WHERE `entry`='24964'; -- Shattered Sun Scout
UPDATE `creature_template` SET `modelid2`='6303', `modelid3`='2957' WHERE `entry`='25113'; -- Crafty Snake
UPDATE `creature_template` SET `modelid1`='22948', `modelid2`='22950', `modelid3`='22945', `modelid4`='22946' WHERE `entry`='25145'; -- Budd's Bodyguard
UPDATE `creature_template` SET `modelid1`='14336', `modelid2`='14334', `modelid3`='14574', `modelid4`='14575' WHERE `entry`='25194'; -- Kor'kron's Riding Wolf
UPDATE `creature_template` SET `modelid2`='23130', `modelid3`='23688' WHERE `entry`='25345'; -- Earthen Ring Horde Disguise
UPDATE `creature_template` SET `modelid2`='23132', `modelid3`='23687' WHERE `entry`='25360'; -- Earthen Ring Alliance Disguise
UPDATE `creature_template` SET `modelid2`='23536', `modelid3`='23537' WHERE `entry`='25363'; -- Sunblade Cabalist
UPDATE `creature_template` SET `modelid2`='23539', `modelid3`='23540' WHERE `entry`='25367'; -- Sunblade Arch Mage
UPDATE `creature_template` SET `modelid2`='23530', `modelid3`='23531' WHERE `entry`='25368'; -- Sunblade Slayer
UPDATE `creature_template` SET `modelid2`='23526', `modelid3`='23527' WHERE `entry`='25369'; -- Sunblade Vindicator
UPDATE `creature_template` SET `modelid2`='23545', `modelid3`='23546' WHERE `entry`='25370'; -- Sunblade Dusk Priest
UPDATE `creature_template` SET `modelid2`='23542', `modelid3`='23543' WHERE `entry`='25371'; -- Sunblade Dawn Priest
UPDATE `creature_template` SET `modelid2`='23533', `modelid3`='23534' WHERE `entry`='25372'; -- Sunblade Scout
UPDATE `creature_template` SET `modelid2`='23594', `modelid3`='23595' WHERE `entry`='25662'; -- Shattered Sun Archer
UPDATE `creature_template` SET `modelid2`='23132', `modelid3`='23130' WHERE `entry`='25754'; -- Earthen Ring Flamecaller
UPDATE `creature_template` SET `modelid2`='23448', `modelid3`='23449' WHERE `entry`='25863'; -- Twilight Firesworn
UPDATE `creature_template` SET `modelid2`='23452', `modelid3`='23453' WHERE `entry`='25866'; -- Twilight Flameguard
UPDATE `creature_template` SET `modelid2`='23130', `modelid3`='23688' WHERE `entry`='26221'; -- Earthen Ring Elder
UPDATE `creature_template` SET `modelid2`='23737', `modelid3`='23738' WHERE `entry`='26222'; -- Twilight Cryomancer
UPDATE `creature_template` SET `modelid2`='23727', `modelid3`='23728' WHERE `entry`='26223'; -- Twilight Frostblade
UPDATE `creature_template` SET `modelid2`='23588', `modelid3`='23589' WHERE `entry`='26259'; -- Shattered Sun Soldier
UPDATE `creature_template` SET `modelid1`='23761' WHERE `entry`='26305'; -- Leather Armor Vendor
UPDATE `creature_template` SET `modelid1`='23763' WHERE `entry`='26308'; -- Plate Armor Vendor
UPDATE `creature_template` SET `modelid2`='12245', `modelid3`='12240' WHERE `entry`='26698'; -- Riding Kodo (TAR - NPC ONLY)
UPDATE `creature_template` SET `modelid1`='9670', `modelid2`='9671', `modelid3`='9672', `modelid4`='9673' WHERE `entry`='9817'; -- Blackhand Dreadweaver
UPDATE `creature_template` SET `modelid1`='9849', `modelid2`='9850', `modelid3`='9851', `modelid4`='9852' WHERE `entry`='9818'; -- Blackhand Summoner
UPDATE `creature_template` SET `modelid1`='9686', `modelid2`='9687', `modelid3`='9896', `modelid4`='9897' WHERE `entry`='9819'; -- Blackhand Veteran
UPDATE `creature_template` SET `modelid1`='9690', `modelid2`='9692', `modelid3`='9892', `modelid4`='9893' WHERE `entry`='10316'; -- Blackhand Incarcerator
UPDATE `creature_template` SET `modelid1`='9734', `modelid2`='9735', `modelid3`='9890', `modelid4`='9891' WHERE `entry`='10317'; -- Blackhand Elite
UPDATE `creature_template` SET `modelid1`='9696', `modelid2`='9697', `modelid3`='9894', `modelid4`='9895' WHERE `entry`='10319'; -- Blackhand Iron Guard
UPDATE `creature_template` SET `modelid1`='9670', `modelid2`='9671', `modelid3`='9672', `modelid4`='9673' WHERE `entry`='10680'; -- Summoned Blackhand Dreadweaver
UPDATE `creature_template` SET `modelid1`='9686', `modelid2`='9687', `modelid3`='9896', `modelid4`='9897' WHERE `entry`='10681'; -- Summoned Blackhand Veteran
UPDATE `creature_template` SET `modelid1`='10176', `modelid2`='10177', `modelid3`='10178', `modelid4`='10179' WHERE `entry`='10742'; -- Blackhand Dragon Handler
UPDATE `creature_template` SET `modelid1`='15239', `modelid2`='15242', `modelid3`='15240', `modelid4`='15241' WHERE `entry`='14990'; -- Defilers Emissary (gender equality ftw)
UPDATE `creature_template` SET `modelid1`='11686', `modelid2`='16046' WHERE `entry`='22798'; -- [DND]Prophecy 1 Quest Credit
UPDATE `creature_template` SET `modelid1`='11686', `modelid2`='16046' WHERE `entry`='22799'; -- [DND]Prophecy 2 Quest Credit
UPDATE `creature_template` SET `modelid1`='11686', `modelid2`='16046' WHERE `entry`='22800'; -- [DND]Prophecy 3 Quest Credit
UPDATE `creature_template` SET `modelid1`='11686', `modelid2`='16046' WHERE `entry`='22801'; -- [DND]Prophecy 4 Quest Credit

