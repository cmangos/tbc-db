-- Credit for sniffing goes to Trugge

-- cleanup and reevalute befor final export
-- evaluate if aura procs like 3391 should be present in creature_template_spells as its procced by parent spell auras, also should not have cooldown as its cooldown is defined by the proc ratio

-- Bogstrok (Normal Only) - Piercing Jab (Approx 13000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17816,19884);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17816,2,0,0,31551,0,0,0,0);

-- Greater Bogstrok (Normal Only) - Decayed Strength (Approx 13000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17817,19892);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17817,2,0,0,35760,0,0,0,0);

-- Coilfang Technician - Blizzard (Approx 14000ms cd), Rain of Fire (Approx 24000ms cd normal, Approx 12000ms cd heroic)
DELETE FROM creature_template_spells WHERE entry IN(17940,19891);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17940,2,0,0,21096,16005,0,0,0),
(19891,2,0,0,37671,39376,0,0,0);

-- Coilfang Observer (Normal Only) - Heavy Dynamite (Approx 12000ms cd), Immolate (Approx 25000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17938,19888);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17938,2,0,0,32191,17883,0,0,0);

-- Coilfang Champion (Normal Only) - Cleave (Approx 12000ms cd), Sunder Armor (Approx 12000ms cd), Frightening Shout (Approx 24000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17957,19885);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17957,2,0,0,15284,16145,19134,0,0);

-- Coilfang Defender (Normal Only) - Shield Slam (Approx 12000ms cd), Spell Reflection (Approx 18000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17958,19886);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17958,2,0,0,15655,31554,0,0,0);

-- Coilfang Slavehandler (Normal Only) - Hamstring (Approx 16000ms cd), Head Crack (Approx 21000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17959,19889);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17959,2,0,0,9080,16172,0,0,0);

-- Coilfang Soothsayer - Decayed Intellect (Approx 30000ms cd), Arcane Missiles (Approx 18000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17960,19890);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17960,2,0,0,0,31555,15790,0,0),
(19890,2,0,0,0,31555,15790,0,0);

-- Coilfang Enchantress (Normal Only) - Entangling Roots (Approx 18000ms cd), Lightning Bolt (Approx 18000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17961,19887);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17961,2,0,0,32173,15234,0,0,0);

-- Coilfang Collaborator (Normal Only) - Cripple (Approx 13000ms cd), Revenge (Exact 5000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17962,19903);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17962,2,0,0,33787,19130,0,0,0);

-- Wastewalker Slave - Frostbolt (No Cooldown), Frost Nova (Approx 12000ms cd), Elemental Armor (Exact 60000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17963,19902);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17963,2,0,0,15497,32192,34880,0,0),
(19902,2,0,0,12675,15531,34880,0,0);

-- Wastewalker Worker - Rend (Approx 13000ms normal, Approx 7000ms cd heroic)
DELETE FROM creature_template_spells WHERE entry IN(17964,19904);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17964,2,0,0,13738,0,0,0,0),
(19904,2,0,0,37662,0,0,0,0);

-- Coilfang Scale-Healer - Holy Nova (Approx 12000md cd), Heal (Approx 12000ms cd), Power Word: Shield (Approx 9000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(21126,21842);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(21126,2,0,0,34944,34945,17139,0,0),
(21842,2,0,0,37669,39378,36052,0,0);

-- Coilfang Tempest (Normal Only) - Sinister Strike (Approx 9000ms cd), Deadly Poison (Approx 18000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(21127,21843);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(21127,2,0,0,15667,36872,0,0,0);

-- Coilfang Engineer - Net (Exact 15000ms cd normal, Exact 12000ms cd heroic), Bomb (Approx 9000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17721,20620);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17721,2,0,0,6533,40331,0,0,0),
(20620,2,0,0,6533,40332,0,0,0);

-- Coilfang Sorceress - Blizzard (Approx 17000ms cd), Frostbolt (Approx 3000ms cd), Frost Nova (Approx 20000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17722,20625);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17722,2,0,0,39416,12675,15063,0,0),
(20625,2,0,0,31581,37930,15531,0,0);

-- Coilfang Myrmidon (Normal Only) - Cleave (Approx 7000ms cd), Execute (77720 used on retail, assuming 7160 was used in tbc. Exact 10000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17800,20621);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17800,2,0,0,0,15496,7160,0,0);

-- Coilfang Siren - Fear (Approx 20000ms cd), Lightning Bolt (No Cooldown), Arcane Flare (Approx 10000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17801,20623);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17801,2,0,0,38660,15234,35106,0,0),
(20623,2,0,0,38660,37664,37856,0,0);

-- Coilfang Warrior (Normal Only) - Defensive Stance, Mortal Blow (Approx 11000ms cd), Battle Shout (Approx 6000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17802,20626);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17802,2,0,0,7164,35105,31403,0,0);

-- Coilfang Oracle - Sonic Burst (Approx 18000ms cd), Heal (Exact 10000ms cd normal, Exact 8000ms cd heroic), Frost Shock (Approx 13000ms cd normal, Exact 6000ms cd heroic)
DELETE FROM creature_template_spells WHERE entry IN(17803,20622);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17803,2,0,0,8281,31730,22582,0,0),
(20622,2,0,0,8281,22883,37865,0,0);

-- Coilfang Slavemaster (Normal Only) - Geyser (Approx 25000ms cd), Disarm (Approx 22000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17805,20624);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17805,2,0,0,10987,6713,0,0,0);

-- Steamrigger Mechanic - Repair (Unsniffed Guess 20000ms cd), Dispel Magic (Heroic Only) (Exact 5000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17951,20632);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17951,2,0,0,31532,0,0,0,0),
(20632,2,0,0,37936,17201,0,0,0);

-- Coilfang Leper (NOTE! ALL SPELLS SHOULD NOT ALWAYS BE AVAILABLE! SOME RANDOMIZATION IS INVOLVED) - Shoot (Unsniffed Guess No Cooldown), Cleave (Approx 9000ms cd), Strike (Approx 8000ms cd), Heal (Approx 11000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(21338,21915);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(21338,2,0,0,15547,40505,13446,11642,0),
(21915,2,0,0,16100,40505,13446,15586,0);

-- Wrathfin Myrmidon (Normal Only) - Coral Cut (Exact 10000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17726,20191);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17726,2,0,0,31410,0,0,0,0);

-- Wrathfin Sentry (Normal Only) - Shield Bash (Exact 16000ms cd), Strike (Approx 9500ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17727,20192);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17727,2,0,0,0,11972,11976,0,0);

-- Murkblood Tribesman - Strike (Exact 8000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17728,20181);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17728,2,0,0,0,12057,0,0,0), -- Same spells in normal
(20181,2,0,0,0,12057,0,0,0);

-- Murkblood Spearman - Viper Sting (Exact 8000ms cd), Throw (No Cooldown)
DELETE FROM creature_template_spells WHERE entry IN(17729,20180);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17729,2,0,0,31407,22887,0,0,0),
(20180,2,0,0,39413,40317,0,0,0);

-- Murkblood Healer - Prayer of Healing (Exact 10000ms cd), Renew (Exact 8000ms cd), Holy Light (Exact 4000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17730,20177);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17730,2,0,0,15585,34423,29427,0,0),
(20177,2,0,0,35943,37978,37979,0,0);

-- Wrathfin Warrior - Shield Bash (Exact 16000ms cd), Strike (Exact 9000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17735,20193);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17735,2,0,0,0,11972,11976,0,0), -- Same spells in normal
(20193,2,0,0,0,11972,11976,0,0);

-- Murkblood Oracle (RANDOMIZES BETWEEN 3 SPECS! ADD WHEN POSSIBLE) - Fireball (No Cooldown), Scorch (Exact 8000ms cd), Amplify Damage (Exact 30000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17771,20179);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17771,2,0,0,14034,15241,12248,0,0),
(20179,2,0,0,15228,36807,12248,0,0);

-- Bonechewer Hungerer (Normal Only) - Strike (No Cooldown), Demoralizing Shout (Exact 10000ms cd), Disarm (Approx 6000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17259,18053);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17259,2,0,0,0,14516,16244,6713,0);

-- Bonechewer Ravener - Kidney Shot (Rank 2) (Exact 9000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17264,18054);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17264,2,0,0,0,30621,0,0,0),
(18054,2,0,0,0,30621,0,0,0);

-- Bleeding Hollow Darkcaster - Scorch (No Cooldown), Rain of Fire (Approx 25000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17269,18049);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17269,2,0,0,15241,31598,0,0,0),
(18049,2,0,0,36807,36808,0,0,0);

-- Bleeding Hollow Archer (Normal Only) - Multi-Shot (Exact 8000ms cd), Aimed Shot (Approx 6000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17270,18048);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17270,2,0,0,18651,30614,0,0,0);

-- Bonechewer Destroyer (Normal Only) - Mortal Strike (Approx 8000ms cd), Knock Away (Approx 14000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17271,18052);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17271,2,0,0,0,16856,10101,0,0);

-- Hellfire Watcher (Normal Only) - Renew (Approx 25000ms cd), Shadow Word: Pain (Approx 25000ms cd), Heal (Exact 15000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17309,18058);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17309,2,0,0,8362,14032,12039,0,0);

-- Bleeding Hollow Scryer - Fear (Approx 14500ms cd), Shadow Bolt (No Cooldown)
DELETE FROM creature_template_spells WHERE entry IN(17478,18050);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17478,2,0,0,30615,12471,0,0,0),
(18050,2,0,0,30615,15232,0,0,0);

-- Hellfire Sentry - Kidney Shot (Rank 2) (Exact 9000ms cd)
DELETE FROM creature_template_spells WHERE entry IN(17517,18057);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17517,2,0,0,0,30621,0,0,0);

-- Laughing Skull Enforcer - Shield Slam (Approx 9000 cd), Strike (Approx 7000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17370,18608);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17370,2,0,0,0,15655,14516,0,0);

-- Shadowmoon Warlock - Shadow Bolt (No Cooldown), Corruption (Approx 8000 cd), Curse of Tongues (Approx 12000 cd), Seed of Corruption (Heroic Only Approx 22000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17371,18619);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17371,2,0,0,12739,32197,13338,0,0),
(18619,2,0,0,15472,37113,13338,32863,0);

-- Shadowmoon Summoner - Summon Felhound Manastalker (CHANCE TO NOT HAVE THIS IN HEROIC) (Approx 35000 cd), Summon Seductress (Exact 60000 cd), Fireball (No Cooldown normal, Approx 2000 cd heroic), Flamestrike (Approx 10000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17395,18617);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17395,2,0,0,30851,30853,15242,18399,0),
(18617,2,0,0,30851,30853,17290,16102,0);

-- Shadowmoon Adept - Kick (Approx 8000 cd), Thrash (Approx 7000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17397,18615);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17397,2,0,0,11978,0,0,0,0); -- 3391

-- Nascent Fel Orc (Heroic Only) - Concussion Blow (Approx 20000 cd), Stomp (Approx 15000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17398,18612);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(18612,2,0,0,0,22427,31900,0,0);

-- Shadowmoon Technician - Throw Proximity Bomb (Approx 18000 cd), Throw Dynamite (No Cooldown), Silence (Approx 18000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17414,18618);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17414,2,0,0,30846,40062,6726,0,0),
(18618,2,0,0,32784,40064,6726,0,0);

-- Laughing Skull Rogue - Stealth (No Cooldown), Slice and Dice (Rank 1) (Approx 7000 cd), Kidney Shot (Approx 11000), Poison (No Cooldown)
DELETE FROM creature_template_spells WHERE entry IN(17491,18610);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17491,2,0,0,30991,6434,30832,34969,0),
(18610,2,0,0,30991,6434,30832,34969,0);

-- Laughing Skull Warden - (81219 used on public, assume 9128 was the tbc spell) Battle Shout (Exact 15000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17624,18611);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17624,2,0,0,0,9128,0,0,0);

-- Laughing Skull Legionnaire - Uppercut (Approx 11000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17626,18609);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17626,2,0,0,0,0,10966,0,0);

-- Shadowmoon Channeler - Shadow Bolt (Approx 4000 cd), Mark of Shadow (Approx 4000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17653,18620);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17653,2,0,0,12739,0,30937,0,0),
(18620,2,0,0,15472,0,30937,0,0);

-- Shattered Hand Sentry - Charge (Approx 8000 cd), Hamstring (Approx 6000 cd)
DELETE FROM creature_template_spells WHERE entry IN(16507,20593);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(16507,2,0,0,0,22911,31553,0,0);

-- Shattered Hand Savage - Slice and Dice (Approx 22000 cd), Enrage (Exact 60000 cd)
DELETE FROM creature_template_spells WHERE entry IN(16523,20591);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(16523,2,0,0,0,30470,30485,0,0);

-- Shattered Hand Brawler - Thrash (Approx 8000 cd), Kick (Approx 9000 cd)
DELETE FROM creature_template_spells WHERE entry IN(16593,20582);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(16593,2,0,0,0,0,36033,0,0); -- 3391

-- Shadowmoon Acolyte - Prayer of Healing (Approx 13000 cd), Power Word: Shield (Approx 13000 cd), Resist Shadow (Approx 120000 cd)
DELETE FROM creature_template_spells WHERE entry IN(16594,20576);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(16594,2,0,0,15585,35944,30479,0,0),
(20576,2,0,0,35943,36052,30479,0,0);

-- Shattered Hand Reaver - Cleave (Approx 8000 cd), Enrage (Exact 60000 cd), Uppercut (Approx 18000 cd)
DELETE FROM creature_template_spells WHERE entry IN(16699,20590);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(16699,2,0,0,15496,30485,30471,0,0);

-- Shattered Hand Sharpshooter - Scatter Shot (Approx 28000 cd), Incendiary Shot (Approx 20000 cd), Shoot (No cooldown)
DELETE FROM creature_template_spells WHERE entry IN(16704,20594);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(16704,2,0,0,23601,30481,15620,0,0);

-- Fel Orc Convert - Hemorrhage (Approx 11000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17083,20567);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17083,2,0,0,30478,0,0,0,0),
(20567,2,0,0,30478,0,0,0,0);

-- Shattered Hand Heathen - Bloodthirst (Approx 15000 cd), Enrage (Exact 60000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17420,20587);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17420,2,0,0,0,30474,30485,0,0);

-- Shattered Hand Archer - Shoot (No cooldown), Multi-Shot (Approx 16000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17427,20579);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17427,2,0,0,16100,30990,0,0,0),
(20579,2,0,0,22907,30990,0,0,0);

-- Shattered Hand Zealot - Hamstring (Approx 22000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17462,20595);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17462,2,0,0,30989,0,0,0,0);

-- Shattered Hand Gladiator - Mortal Strike (Approx 15000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17464,20586);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17464,2,0,0,16856,0,0,0,0);

-- Heathen Guard - Bloodthirst (Approx 17000 cd), Enrage (Exact 60000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17621,20569);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17621,2,0,0,0,30474,30485,0,0),
(20569,2,0,0,0,30474,30485,0,0);

-- Sharpshooter Guard - Scatter Shot (Normal Only) (Approx 22000 cd), Incendiary Shot (Approx 18000 cd), Shoot (No cooldown)
DELETE FROM creature_template_spells WHERE entry IN(17622,20578);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17622,2,0,0,23601,30481,15620,0,0),
(20578,2,0,0,0,35945,22907,0,0);

-- Reaver Guard - Cleave (Approx 10000 cd), Enrage (Exact 60000 cd), Uppercut (Approx 16000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17623,20575);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17623,2,0,0,15496,30485,30471,0,0),
(20575,2,0,0,15496,30485,30471,0,0);

-- Shattered Hand Houndmaster - Volley (Approx 35000 cd), Impaling Bolt (Approx 15000 cd), Shoot (No cooldown)
DELETE FROM creature_template_spells WHERE entry IN(17670,20588);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17670,2,0,0,34100,30932,15620,0,0);

-- Shadowmoon Darkcaster - Fear (Approx 12000 cd), Shadow Bolt (No cooldown), Rain of Fire (Approx 10000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17694,20577);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17694,2,0,0,12542,12471,11990,0,0),
(20577,2,0,0,12542,15232,33508,0,0);

-- Shattered Hand Assassin - Stealth (Most likely no cooldown), Backstab (Exact 5000 cd)
DELETE FROM creature_template_spells WHERE entry IN(17695,20580);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(17695,2,0,0,0,30991,0,30992,0);

-- ----------------------------------------------------------------
-- THE BELOW SHOULD BE MOVED TO Spell.sql IN CORE WHEN COMPLETED!!
-- ----------------------------------------------------------------
-- Add cooldowns for several controlled spells in Coilfang dungeons
-- Slave Pens
REPLACE INTO `creature_cooldowns` (`entry`, `SpellId`, `CooldownMin`, `CooldownMax`) VALUES
-- Bogstrok c.17816 (Normal)
(17816,31551,13000,13000),
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(31551); -- Piercing Jab (Approximated cooldown)
-- Greater Bogstrok c.17817 (Normal)
(17817,35760,13000,13000),
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(35760); -- Decayed Strength (Approximated cooldown)
-- Coilfang Technician c.17940 (Normal)
(17940,21096,14000,14000),
(17940,16005,24000,24000),
-- UPDATE spell_template SET RecoveryTime=14000,AttributesServerside=0x00000002 WHERE Id IN(21096); -- Blizzard (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=24000,AttributesServerside=0x00000002 WHERE Id IN(16005); -- Rain of Fire (Approximated cooldown)
-- Coilfang Technician c.19891 (Heroic)
(19891,37671,14000,14000),
(19891,39376,12000,12000),
-- UPDATE spell_template SET RecoveryTime=14000,AttributesServerside=0x00000002 WHERE Id IN(37671); -- Blizzard (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(39376); -- Rain of Fire (Approximated cooldown)
-- Coilfang Observer c.17938 (Normal)
(17938,32191,12000,12000),
(17938,17883,25000,25000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(32191); -- Heavy Dynamite (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=25000,AttributesServerside=0x00000002 WHERE Id IN(17883); -- Immolate (Approximated cooldown)
-- Coilfang Champion c.17957 (Normal)
(17957,15284,12000,12000),
(17957,16145,12000,12000),
(17957,19134,24000,24000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(15284); -- Cleave (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(16145); -- Sunder Armor (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=24000,AttributesServerside=0x00000002 WHERE Id IN(19134); -- Frightening Shout (Approximated cooldown)
-- Coilfang Defender c.17958 (Normal)
(17958,15655,12000,12000),
(17958,31554,18000,18000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(15655); -- Shield Slam (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(31554); -- Spell Reflection (Approximated cooldown)
-- Coilfang Slavehandler c.17959 (Normal)
(17959,9080,16000,16000),
(17959,16172,21000,21000),
-- UPDATE spell_template SET RecoveryTime=16000,AttributesServerside=0x00000002 WHERE Id IN(9080); -- Hamstring (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=21000,AttributesServerside=0x00000002 WHERE Id IN(16172); -- Head Crack (Approximated cooldown)
-- Coilfang Soothsayer c.17960, c.19890 (Normal & Heroic)
(17960,31555,30000,30000),
(17960,15790,18000,18000),
(19890,31555,30000,30000),
(19890,15790,18000,18000),
-- UPDATE spell_template SET RecoveryTime=30000,AttributesServerside=0x00000002 WHERE Id IN(31555); -- Decayed Intellect (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(15790); -- Arcane Missiles (Approximated cooldown)
-- Coilfang Enchantress c.17961 (Normal)
(17961,32173,18000,18000),
(17961,15234,18000,18000),
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(32173); -- Entangling Roots (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(15234); -- Lightning Bolt (Approximated cooldown)
-- Coilfang Collaborator c.17962 (Normal)
(17962,33787,13000,13000),
(17962,19130,5000,5000),
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(33787); -- Cripple (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=5000,AttributesServerside=0x00000002 WHERE Id IN(19130); -- Revenge (Exact cooldown)
-- Wastewalker Slave c.19902 (Normal)
(19902,32192,12000,12000),
(19902,34880,60000,60000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(32192); -- Frost Nova (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(34880); -- Elemental Armor (Exact Cooldown)
-- Wastewalker Slave c.17963 (Heroic)
(17963,15531,12000,12000),
(17963,34880,60000,60000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(15531); -- Frost Nova (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(34880); -- Elemental Armor (Exact Cooldown)
-- Wastewalker Worker c.17964 (Normal)
(17964,13738,13000,13000),
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(13738); -- Rend (Approximated cooldown)
-- Wastewalker Worker c.19904 (Heroic)
(19904,37662,7000,7000),
-- UPDATE spell_template SET RecoveryTime=7000,AttributesServerside=0x00000002 WHERE Id IN(37662); -- Rend (Approximated cooldown)
-- Coilfang Scale-Healer c.21126 (Normal)
(21126,34944,12000,12000),
(21126,34945,12000,12000),
(21126,17139,9000,9000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(34944); -- Holy Nova (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(34945); -- Heal (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(17139); -- Power Word: Shield (Approximated cooldown)
-- Coilfang Scale-Healer c.21842 (Heroic)
(21842,37669,12000,12000),
(21842,39378,12000,12000),
(21842,36052,9000,9000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(37669); -- Holy Nova (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(39378); -- Heal (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(36052); -- Power Word: Shield (Approximated cooldown)
-- Coilfang Tempest c.21127 (Normal)
(21127,15667,9000,9000),
(21127,36872,18000,18000),
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(15667); -- Sinister Strike (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(36872); -- Deadly Poison (Approximated cooldown)

-- Steamvaults
-- Coilfang Engineer c.17721 (Normal)
(17721,6533,15000,15000),
(17721,40331,9000,9000),
-- UPDATE spell_template SET RecoveryTime=15000,AttributesServerside=0x00000002 WHERE Id IN(6533); -- Net (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(40331); -- Bomb (Approximated cooldown)
-- Coilfang Engineer c.20620 (Heroic)
(20620,6533,12000,12000),
(20620,40332,9000,9000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(6533); -- Net (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(40332); -- Bomb (Approximated cooldown)
-- Coilfang Sorceress c.17722 (Normal)
(17722,39416,17000,17000),
(17722,12675,3000,3000),
(17722,15063,20000,20000),
-- UPDATE spell_template SET RecoveryTime=17000,AttributesServerside=0x00000002 WHERE Id IN(39416); -- Blizzard (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=3000,AttributesServerside=0x00000002 WHERE Id IN(12675); -- Frostbolt (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=20000,AttributesServerside=0x00000002 WHERE Id IN(15063); -- Frost Nova (Approximated cooldown)
-- Coilfang Sorceress c.20625 (Heroic)
(20625,31581,17000,17000),
(20625,37930,3000,3000),
(20625,15531,20000,20000),
-- UPDATE spell_template SET RecoveryTime=17000,AttributesServerside=0x00000002 WHERE Id IN(31581); -- Blizzard (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=3000,AttributesServerside=0x00000002 WHERE Id IN(37930); -- Frostbolt (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=20000,AttributesServerside=0x00000002 WHERE Id IN(15531); -- Frost Nova (Approximated cooldown)
-- Coilfang Myrmidon c.17800 (Normal)
(17800,15496,7000,7000),
(17800,7160,10000,10000),
-- UPDATE spell_template SET RecoveryTime=7000,AttributesServerside=0x00000002 WHERE Id IN(15496); -- Cleave (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(7160); -- Execute (Exact cooldown)
-- Coilfang Siren c.20623 (Heroic)
(20623,38660,20000,20000),
(20623,37856,1000,1000),
-- UPDATE spell_template SET RecoveryTime=20000,AttributesServerside=0x00000002 WHERE Id IN(38660); -- Fear (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=1000,AttributesServerside=0x00000002 WHERE Id IN(37856); -- Arcane Flare (Approximated cooldown)
-- Coilfang Warrior c.17802 (Normal)
(17802,35105,11000,11000),
(17802,31403,6000,6000),
-- UPDATE spell_template SET RecoveryTime=11000,AttributesServerside=0x00000002 WHERE Id IN(35105); -- Mortal Blow (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=6000,AttributesServerside=0x00000002 WHERE Id IN(31403); -- Battle Shout (Approximated cooldown)
-- Coilfang Oracle c.17803 (Normal)
(17803,8281,18000,18000),
(17803,31730,10000,10000),
(17803,22582,13000,13000),
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(8281); -- Sonic Burst (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(31730); -- Heal (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(22582); -- Frost Shock (Approximated cooldown)
-- Coilfang Oracle c.20622 (Heroic)
(20622,8281,18000,18000),
(20622,22883,8000,8000),
(20622,37865,6000,6000),
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(8281); -- Sonic Burst (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(22883); -- Heal (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=6000,AttributesServerside=0x00000002 WHERE Id IN(37865); -- Frost Shock (Exact cooldown)
-- Coilfang Slavemaster c.17805 (Normal)
(17805,10987,25000,25000),
(17805,6713,22000,22000),
-- UPDATE spell_template SET RecoveryTime=25000,AttributesServerside=0x00000002 WHERE Id IN(10987); -- Geyser (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=22000,AttributesServerside=0x00000002 WHERE Id IN(6713); -- Disarm (Approximated cooldown)
-- Steamrigger Mechanic c.17951 (Normal)
(17951,31532,20000,20000),
-- UPDATE spell_template SET RecoveryTime=20000,AttributesServerside=0x00000002 WHERE Id IN(31532); -- Repair (Guessed cooldown)
-- Steamrigger Mechanic c.20632 (Heroic)
(20632,37936,20000,20000),
(20632,17201,5000,5000),
-- UPDATE spell_template SET RecoveryTime=20000,AttributesServerside=0x00000002 WHERE Id IN(37936); -- Repair (Guessed cooldown)
-- UPDATE spell_template SET RecoveryTime=5000,AttributesServerside=0x00000002 WHERE Id IN(17201); -- Dispel Magic (Exact cooldown)
-- Coilfang Leper c.21338 (Normal)
(21338,40505,9000,9000),
(21338,13446,8000,8000),
(21338,11642,11000,11000),
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(40505); -- Cleave (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(13446); -- Strike (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=11000,AttributesServerside=0x00000002 WHERE Id IN(11642); -- Heal (Approximated cooldown)
-- Coilfang Leper c.21915 (Heroic)
(21915,40505,9000,9000),
(21915,13446,8000,8000),
(21915,15586,11000,11000),
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(40505); -- Cleave (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(13446); -- Strike (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=11000,AttributesServerside=0x00000002 WHERE Id IN(15586); -- Heal (Approximated cooldown)

-- The Underbog
-- Wrathfin Myrmidon c.17726 (Normal)
(17726,35943,10000,10000),
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(35943); -- Coral Cut (Exact cooldown)
-- Wrathfin Sentry c.17727 (Normal)
(17727,11972,16000,16000),
(17727,11976,9500,9500),
-- UPDATE spell_template SET RecoveryTime=16000,AttributesServerside=0x00000002 WHERE Id IN(11972); -- Shield Bash (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=9500,AttributesServerside=0x00000002 WHERE Id IN(11976); -- Strike (Approximated cooldown)
-- Murkblood Tribesman c.17728 & c.20181 (Normal & Heroic)
(17728,12057,8000,8000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(12057); -- Strike (Exact cooldown)
-- Murkblood Spearman c.17729 (Normal)
(17729,31407,8000,8000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(31407); -- Viper Sting (Exact cooldown)
-- Murkblood Spearman c.20180 (Heroic)
(20180,39413,8000,8000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(39413); -- Viper Sting (Exact cooldown)
-- Murkblood Healer c.17730 (Normal)
(17730,15585,10000,10000),
(17730,34423,8000,8000),
(17730,29427,4000,4000),
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(15585); -- Prayer of Healing (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(34423); -- Renew (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=4000,AttributesServerside=0x00000002 WHERE Id IN(29427); -- Holy Light (Exact cooldown)
-- Murkblood Healer c.20177 (Heroic)
(20177,35943,10000,10000),
(20177,37978,8000,8000),
(20177,37979,4000,4000),
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(35943); -- Prayer of Healing (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(37978); -- Renew (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=4000,AttributesServerside=0x00000002 WHERE Id IN(37979); -- Holy Light (Exact cooldown)
-- Wrathfin Warrior c.17735, c.20193 (Normal & Heroic)
(17735,11972,16000,16000),
(17735,11976,9000,9000),
-- UPDATE spell_template SET RecoveryTime=16000,AttributesServerside=0x00000002 WHERE Id IN(11972); -- Shield Bash (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(11976); -- Strike (Exact cooldown)
-- Murkblood Oracle c.17771 (Normal)
(17771,15241,8000,8000),
(17771,12248,30000,30000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(15241); -- Scorch (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=30000,AttributesServerside=0x00000002 WHERE Id IN(12248); -- Amplify Damage (Exact cooldown)
-- Murkblood Oracle c.20179 (Heroic)
(20179,36807,8000,8000),
(20179,12248,30000,30000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(36807); -- Scorch (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=30000,AttributesServerside=0x00000002 WHERE Id IN(12248); -- Amplify Damage (Exact cooldown)

-- Hellfire Ramparts
-- Bonechewer Hungerer c.17259 (Normal)
(17259,16244,10000,10000),
(17259,6713,6000,6000),
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(16244); -- Demoralizing Shout (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=6000,AttributesServerside=0x00000002 WHERE Id IN(6713); -- Disarm (Approximated cooldown)
-- Bonechewer Ravener c.17264, c.18054 (Normal & Heroic)
(17264,30621,9000,9000),
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(30621); -- Kidney Shot (Rank 2) (Exact cooldown)
-- Bleeding Hollow Darkcaster c.17269 (Normal)
(17269,31598,25000,25000),
-- UPDATE spell_template SET RecoveryTime=25000,AttributesServerside=0x00000002 WHERE Id IN(31598); -- Rain of Fire (Approximated cooldown)
-- Bleeding Hollow Darkcaster c.18049 (Heroic)
(18049,36808,25000,25000),
-- UPDATE spell_template SET RecoveryTime=25000,AttributesServerside=0x00000002 WHERE Id IN(36808); -- Rain of Fire (Approximated cooldown)
-- Bleeding Hollow Archer c.17270 (Normal)
(17270,18651,8000,8000),
(17270,30614,6000,6000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(18651); -- Multi-Shot (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=6000,AttributesServerside=0x00000002 WHERE Id IN(30614); -- Aimed Shot (Approximated cooldown)
-- Bonechewer Destroyer c.17271 (Normal)
(17271,16856,8000,8000),
(17271,10101,14000,14000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(16856); -- Mortal Strike (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=14000,AttributesServerside=0x00000002 WHERE Id IN(10101); -- Knock Away (Approximated cooldown)
-- Hellfire Watcher c.17309 (Normal)
(17309,8362,25000,25000),
(17309,14032,25000,25000),
(17309,12039,15000,15000),
-- UPDATE spell_template SET RecoveryTime=25000,AttributesServerside=0x00000002 WHERE Id IN(8362); -- Renew (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=25000,AttributesServerside=0x00000002 WHERE Id IN(14032); -- Shadow Word: Pain (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=15000,AttributesServerside=0x00000002 WHERE Id IN(12039); -- Heal (Exact cooldown)
-- Bleeding Hollow Scryer c.17478, c.18050 (Normal & Heroic)
(17478,30615,14500,14500),
-- UPDATE spell_template SET RecoveryTime=14500,AttributesServerside=0x00000002 WHERE Id IN(30615); -- Fear (Approximated cooldown)
-- Hellfire Sentry c.17517 (Normal)
(17517,30621,9000,9000),
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(30621); -- Kidney Shot (Rank 2) (Exact cooldown)

-- Blood Furnace
-- Laughing Skull Enforcer c.17370 (Normal)
(17370,15655,9000,9000),
(17370,14516,7000,7000),
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(15655); -- Shield Slam (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=7000,AttributesServerside=0x00000002 WHERE Id IN(14516); -- Strike (Approximated cooldown)
-- Shadowmoon Warlock c.17371 (Normal)
(17371,32197,8000,8000),
(17371,13338,12000,12000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(32197); -- Corruption (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(13338); -- Curse of Tongues (Approximated cooldown)
-- Shadowmoon Warlock c.18619 (Heroic)
(18619,37113,8000,8000),
(18619,13338,12000,12000),
(18619,32863,22000,22000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(37113); -- Corruption (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(13338); -- Curse of Tongues (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=22000,AttributesServerside=0x00000002 WHERE Id IN(32863); -- Seed of Corruption (Approximated cooldown)
-- Shadowmoon Summoner c.17395 (Normal)
(17395,30851,35000,35000),
(17395,30853,60000,60000),
(17395,18399,10000,10000),
-- UPDATE spell_template SET RecoveryTime=35000,AttributesServerside=0x00000002 WHERE Id IN(30851); -- Summon Felhound Manastalker (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(30853); -- Summon Seductress (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(18399); -- Flamestrike (Approximated cooldown)
-- Shadowmoon Summoner c.18617 (Heroic)
(18617,30851,35000,35000),
(18617,30853,60000,60000),
(18617,17290,2000,2000),
(18617,16102,10000,10000),
-- UPDATE spell_template SET RecoveryTime=35000,AttributesServerside=0x00000002 WHERE Id IN(30851); -- Summon Felhound Manastalker (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(30853); -- Summon Seductress (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=2000,AttributesServerside=0x00000002 WHERE Id IN(17290); -- Fireball (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(16102); -- Flamestrike (Approximated cooldown)
-- Shadowmoon Adept c.17397 (Normal)
(17397,11978,8000,8000),
-- (17397,3391,7000,7000), -- proc
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(11978); -- Kick (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=7000,AttributesServerside=0x00000002 WHERE Id IN(3391); -- Thrash (Approximated cooldown)
-- Nascent Fel Orc c.18612 (Heroic)
(18612,22427,20000,20000),
(18612,31900,15000,15000),
-- UPDATE spell_template SET RecoveryTime=20000,AttributesServerside=0x00000002 WHERE Id IN(22427); -- Concussion Blow (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=15000,AttributesServerside=0x00000002 WHERE Id IN(31900); -- Stomp (Approximated cooldown)
-- Shadowmoon Technician c.17414 (Normal)
(17414,30846,18000,18000),
(17414,6726,18000,18000),
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(30846); -- Throw Proximity Bomb (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(6726); -- Silence (Approximated cooldown)
-- Shadowmoon Technician c.18618 (Heroic)
(18618,32784,18000,18000),
(18618,6726,18000,18000),
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(32784); -- Throw Proximity Bomb (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(6726); -- Silence (Approximated cooldown)
-- Laughing Skull Rogue c.17491,c.18610 (Normal & Heroic)
(17491,6434,7000,7000),
(17491,30832,11000,11000),
-- UPDATE spell_template SET RecoveryTime=7000,AttributesServerside=0x00000002 WHERE Id IN(6434); -- Slice and Dice (Rank 1) (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=11000,AttributesServerside=0x00000002 WHERE Id IN(30832); -- Kidney Shot (Approximated cooldown)
-- Laughing Skull Warden c.17624 (Normal)
(17624,9128,15000,15000),
-- UPDATE spell_template SET RecoveryTime=15000,AttributesServerside=0x00000002 WHERE Id IN(9128); -- Battle Shout (Exact cooldown)
-- Laughing Skull Legionnaire c.17626 (Normal)
(17626,10966,11000,11000),
-- UPDATE spell_template SET RecoveryTime=11000,AttributesServerside=0x00000002 WHERE Id IN(10966); -- Uppercut (Approximated cooldown)
-- Shadowmoon Channeler c.17653 (Normal)
(17653,12739,4000,4000),
(17653,30937,4000,4000),
-- UPDATE spell_template SET RecoveryTime=4000,AttributesServerside=0x00000002 WHERE Id IN(12739); -- Shadow Bolt (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=4000,AttributesServerside=0x00000002 WHERE Id IN(30937); -- Mark of Shadow (Approximated cooldown)
-- Shadowmoon Channeler c.18620 (Heroic)
(18620,15472,4000,4000),
(18620,30937,4000,4000),
-- UPDATE spell_template SET RecoveryTime=4000,AttributesServerside=0x00000002 WHERE Id IN(15472); -- Shadow Bolt (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=4000,AttributesServerside=0x00000002 WHERE Id IN(30937); -- Mark of Shadow (Approximated cooldown)

-- Shattered Halls
-- Shattered Hand Sentry c.16507 (Normal)
(16507,22911,8000,8000),
(16507,31553,6000,6000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(22911); -- Charge (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=6000,AttributesServerside=0x00000002 WHERE Id IN(31553); -- Hamstring (Approximated cooldown)
-- Shattered Hand Savage c.16523 (Normal)
(16523,30470,22000,22000),
(16523,30485,60000,60000),
-- UPDATE spell_template SET RecoveryTime=22000,AttributesServerside=0x00000002 WHERE Id IN(30470); -- Slice and Dice (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(30485); -- Enrage (Exact cooldown)
-- Shattered Hand Brawler c.16593 (Normal)
-- (16593,3391,8000,8000), -- proc
(16593,36033,9000,9000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(3391); -- Thrash (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=9000,AttributesServerside=0x00000002 WHERE Id IN(36033); -- Kick (Approximated cooldown)
-- Shadowmoon Acolyte c.16594 (Normal)
(16594,15585,13000,13000),
(16594,35944,13000,13000),
(16594,30479,120000,120000),
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(15585); -- Prayer of Healing (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(35944); -- Power Word: Shield (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=120000,AttributesServerside=0x00000002 WHERE Id IN(30479); -- Resist Shadow (Approximated cooldown)
-- Shadowmoon Acolyte c.20576 (Normal)
(20576,35943,13000,13000),
(20576,36052,13000,13000),
(20576,30479,120000,120000),
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(35943); -- Prayer of Healing (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=13000,AttributesServerside=0x00000002 WHERE Id IN(36052); -- Power Word: Shield (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=120000,AttributesServerside=0x00000002 WHERE Id IN(30479); -- Resist Shadow (Approximated cooldown)
-- Shattered Hand Reaver c.16699 (Normal)
(16699,15496,8000,8000),
(16699,30485,60000,60000),
(16699,30471,18000,18000),
-- UPDATE spell_template SET RecoveryTime=8000,AttributesServerside=0x00000002 WHERE Id IN(15496); -- Cleave (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(30485); -- Enrage (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(30471); -- Uppercut (Approximated cooldown)
-- Shattered Hand Sharpshooter c.16704 (Normal)
(16704,23601,28000,28000),
(16704,30481,20000,20000),
-- UPDATE spell_template SET RecoveryTime=28000,AttributesServerside=0x00000002 WHERE Id IN(23601); -- Scatter Shot (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=20000,AttributesServerside=0x00000002 WHERE Id IN(30481); -- Incendiary Shot (Approximated cooldown)
-- Fel Orc Convert c.17083/c.20567 (Normal/Heroic)
(17083,30478,11000,11000),
-- UPDATE spell_template SET RecoveryTime=11000,AttributesServerside=0x00000002 WHERE Id IN(30478); -- Hemorrhage (Approximated cooldown)
-- Shattered Hand Heathen c.17420 (Normal)
(17420,30474,15000,15000),
(17420,30485,60000,60000),
-- UPDATE spell_template SET RecoveryTime=15000,AttributesServerside=0x00000002 WHERE Id IN(30474); -- Bloodthirst (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(30485); -- Enrage (Exact cooldown)
-- Shattered Hand Archer c.17427/c.20579 (Normal/Heroic)
(17427,30990,16000,16000),
-- UPDATE spell_template SET RecoveryTime=16000,AttributesServerside=0x00000002 WHERE Id IN(30990); -- Multi-Shot (Approximated cooldown)
-- Shattered Hand Zealot c.17462 (Normal)
(17462,30989,22000,22000),
-- UPDATE spell_template SET RecoveryTime=22000,AttributesServerside=0x00000002 WHERE Id IN(30989); -- Hamstring (Approximated cooldown)
-- Shattered Hand Gladiator c.17464 (Normal)
(17464,16856,15000,15000),
-- UPDATE spell_template SET RecoveryTime=15000,AttributesServerside=0x00000002 WHERE Id IN(16856); -- Mortal Strike (Approximated cooldown)
-- Heathen Guard c.17621/c.20569 (Normal/Heroic)
(17621,30474,17000,17000),
(17621,30485,60000,60000),
-- UPDATE spell_template SET RecoveryTime=17000,AttributesServerside=0x00000002 WHERE Id IN(30474); -- Bloodthirst (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(30485); -- Enrage (Exact cooldown)
-- Sharpshooter Guard c.17622 (Normal)
(17622,23601,22000,22000),
(17622,30481,18000,18000),
-- UPDATE spell_template SET RecoveryTime=22000,AttributesServerside=0x00000002 WHERE Id IN(23601); -- Scatter Shot (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(30481); -- Incendiary Shot (Approximated cooldown)
-- Sharpshooter Guard c.20578 (Heroic)
(20578,35945,18000,18000),
-- UPDATE spell_template SET RecoveryTime=18000,AttributesServerside=0x00000002 WHERE Id IN(35945); -- Incendiary Shot (Approximated cooldown)
-- Reaver Guard c.17623/c.20575 (Normal/Heroic)
(17623,15496,10000,10000),
(17623,30485,60000,60000),
(17623,30471,16000,16000),
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(15496); -- Cleave (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=60000,AttributesServerside=0x00000002 WHERE Id IN(30485); -- Enrage (Exact cooldown)
-- UPDATE spell_template SET RecoveryTime=16000,AttributesServerside=0x00000002 WHERE Id IN(30471); -- Uppercut (Approximated cooldown)
-- Shattered Hand Houndmaster c.17670 (Normal)
(17670,34100,35000,35000),
(17670,30932,15000,15000),
-- UPDATE spell_template SET RecoveryTime=35000,AttributesServerside=0x00000002 WHERE Id IN(34100); -- Volley (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=15000,AttributesServerside=0x00000002 WHERE Id IN(30932); -- Impaling Bolt (Approximated cooldown)
-- Shadowmoon Darkcaster c.17694 (Normal)
(17694,12542,12000,12000),
(17694,11990,10000,10000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(12542); -- Fear (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(11990); -- Rain of Fire (Approximated cooldown)
-- Shadowmoon Darkcaster c.20577 (Heroic)
(20577,12542,12000,12000),
(20577,33508,10000,10000),
-- UPDATE spell_template SET RecoveryTime=12000,AttributesServerside=0x00000002 WHERE Id IN(12542); -- Fear (Approximated cooldown)
-- UPDATE spell_template SET RecoveryTime=10000,AttributesServerside=0x00000002 WHERE Id IN(33508); -- Rain of Fire (Approximated cooldown)
-- Shattered Hand Assassin c.17695 (Normal)
(17695,30992,5000,5000);
-- UPDATE spell_template SET RecoveryTime=5000,AttributesServerside=0x00000002 WHERE Id IN(30992); -- Backstab (Exact cooldown)

-- -------------------------
-- * Hellfire Peninsula * --
-- -------------------------
DELETE FROM creature_template_spells WHERE entry IN (16867,16870,16871,16873,16876,16878,16929,16937,16938,16966,16967,17084,18952,19295,19410,19411,19413,19414,19415,19422,19442,19701);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(16867, 2, 0, 0, 11976, 11978, 0, 0, 0),
(16870, 2, 0, 0, 15496, 0, 0, 0, 0),
(16871, 2, 0, 0, 11976, 0, 0, 0, 0),
(16873, 2, 0, 0, 0, 0, 12550, 6742, 0),
(16876, 2, 0, 0, 34113, 0, 0, 0, 0),
(16878, 2, 0, 0, 0, 35570, 0, 0, 0),
(16929, 2, 0, 0, 0, 33911, 0, 0, 0),
(16937, 2, 0, 0, 34083, 32734, 0, 0, 0),
(16938, 2, 0, 0, 31553, 0, 0, 0, 0),
(16966, 2, 0, 0, 9532, 32717, 0, 0, 0),
(16967, 2, 0, 0, 0, 32720, 0, 0, 0),
(17084, 2, 0, 0, 16588, 34112, 0, 0, 0),
(18952, 2, 0, 0, 13398, 34113, 0, 0, 0),
(19295, 2, 0, 0, 7978, 0, 0, 0, 0),
(19410, 2, 0, 0, 11640, 11639, 6742, 0, 0), -- 7.3.5 sniffed spell is 262387 instead of 11639
(19411, 2, 0, 0, 9613, 11962, 13787, 0, 0),
(19413, 2, 0, 0, 14034, 11831, 0, 0, 0),
(19414, 2, 0, 0, 11976, 33960, 0, 0, 0),
(19415, 2, 0, 0, 11642, 16568, 13864, 0, 0),
(19422, 2, 0, 0, 9053, 0, 34019, 34073, 0),
(19442, 2, 0, 0, 30478, 0, 0, 0, 0),
(19701, 2, 0, 0, 9053, 0, 0, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (16867,16870,16871,16873,16876,16878,16929,16937,16938,16966,16967,17084,18952,19295,19410,19411,19413,19414,19415,19422,19442,19701);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(16867, 11976, 15000, 15000),
(16867, 11978, 15000, 15000),
(16870, 15496, 8000, 8000),
(16871, 11976, 8000, 8000),
(16873, 6742, 60000, 60000),
(16873, 12550, 30000, 30000),
(16876, 34113, 30000, 30000),
(16878, 35570, 15000, 15000),
(16929, 33911, 10000, 10000),
(16937, 32734, 20000, 20000),
(16937, 34083, 6000, 6000),
(16938, 31553, 10000, 10000),
(16966, 32717, 16000, 16000),
(16967, 32720, 12000, 12000),
(17084, 16588, 25000, 25000),
(17084, 34112, 25000, 25000),
(18952, 13398, 30000, 30000),
(18952, 34113, 60000, 60000),
(19410, 6742, 30000, 30000),
(19410, 11640, 15000, 15000),
(19410, 11639, 15000, 15000), -- 7.3.5 sniffed spell is 262387 instead of 11639
(19411, 11962, 15000, 15000),
(19411, 13787, 30000, 30000),
(19413, 11831, 15000, 15000),
(19414, 11976, 15000, 15000),
(19414, 33960, 15000, 15000),
(19415, 11642, 16000, 16000),
(19415, 13864, 60000, 60000),
(19415, 16568, 5000, 5000),
(19422, 34019, 60000, 60000),
(19422, 34073, 45000, 45000),
(19442, 30478, 20000, 20000);

-- ------------------
-- * Zangarmarsh * --
-- ------------------
DELETE FROM creature_template_spells WHERE entry IN (18077,18079,18086,18087,18088,18089,18113,18114,18115,18116,18117,18118,18119,18120,18121,18123,18197,18992,19732,19946,19947,20088,20089,20115,20270,20442,20443,20444,20445);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(18077, 2, 0, 0, 0, 12550, 11986, 0, 0),
(18079, 2, 0, 0, 31287, 0, 9739, 0, 0),
(18086, 2, 0, 0, 34811, 34812, 0, 0, 0),
(18087, 2, 0, 0, 9672, 11831, 6726, 0, 0),
(18088, 2, 0, 0, 34446, 33245, 34787, 0, 0),
(18089, 2, 0, 0, 0, 32064, 0, 0, 0),
(18113, 2, 0, 0, 0, 31975, 6660, 12024, 0),
(18114, 2, 0, 0, 9532, 12550, 0, 0, 0),
(18115, 2, 0, 0, 35201, 0, 0, 0, 0),
(18116, 2, 0, 0, 0, 0, 0, 35204, 0),
(18117, 2, 0, 0, 11978, 0, 0, 0, 0),
(18118, 2, 0, 0, 0, 23381, 9532, 6742, 0),
(18119, 2, 0, 0, 11428, 0, 0, 0, 0),
(18120, 2, 0, 0, 0, 14895, 0, 0, 0),
(18121, 2, 0, 0, 9613, 35195, 35194, 0, 0),
(18123, 2, 0, 0, 11978, 34789, 0, 0, 0),
(18197, 2, 0, 0, 0, 12550, 11986, 12058, 0),
(18992, 2, 0, 0, 0, 35491, 0, 0, 0),
(19732, 2, 0, 0, 20825, 0, 0, 13787, 0),
(19946, 2, 0, 0, 0, 13730, 0, 0, 0),
(19947, 2, 0, 0, 13901, 12544, 34787, 0, 0),
(20088, 2, 0, 0, 9080, 34812, 0, 0, 0),
(20089, 2, 0, 0, 32011, 34827, 0, 0, 0),
(20115, 2, 0, 0, 0, 7289, 0, 0, 0),
(20270, 2, 0, 0, 16561, 0, 0, 0, 0),
(20442, 2, 0, 0, 0, 35491, 0, 0, 0),
(20443, 2, 0, 0, 13730, 15496, 0, 0, 0),
(20444, 2, 0, 0, 9613, 9657, 0, 0, 0),
(20445, 2, 0, 0, 16568, 35373, 0, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (18077,18079,18086,18087,18088,18089,18113,18114,18115,18116,18117,18118,18119,18120,18121,18123,18197,18992,19732,19946,19947,20088,20089,20115,20270,20442,20443,20444,20445);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(18077, 11986, 16000, 16000),
(18077, 12550, 20000, 20000),
(18079, 31287, 9187, 11421),
(18086, 34811, 12000, 12000),
(18086, 34812, 16000, 16000),
(18087, 6726, 30000, 30000),
(18087, 11831, 30000, 30000),
(18088, 33245, 30000, 30000),
(18088, 34446, 6000, 6000),
(18088, 34787, 25000, 25000),
(18089, 32064, 15314, 18220),
(18113, 12024, 15000, 15000),
(18113, 31975, 8000, 8000),
(18114, 12550, 21595, 26677),
(18115, 35201, 25850, 34418),
(18116, 35204, 26838, 27270),
(18117, 11978, 16000, 16000),
(18118, 6742, 12000, 12000),
(18118, 23381, 12000, 12000),
(18119, 11428, 16000, 16000),
(18120, 14895, 8000, 13000),
(18121, 35195, 9029, 12418),
(18123, 11978, 6310, 7772),
(18197, 11986, 16000, 16000),
(18197, 12058, 3000, 3000),
(18197, 12550, 20000, 20000),
(18992, 35491, 20000, 20000),
(19732, 13787, 30000, 30000),
(19946, 13730, 15000, 15000),
(19947, 12544, 60000, 60000),
(19947, 34787, 20000, 20000),
(20088, 9080, 20000, 20000),
(20088, 34812, 20000, 20000),
(20089, 34827, 30000, 30000),
(20115, 7289, 20000, 20000),
(20270, 16561, 16000, 16000),
(20442, 35491, 20000, 20000),
(20443, 13730, 12000, 12000),
(20443, 15496, 10574, 12708),
(20444, 9657, 12804, 14715),
(20445, 16568, 6000, 6000),
(20445, 35373, 15000, 15000);

-- ----------------------
-- * Terrokar Forest * --
-- ----------------------
DELETE FROM creature_template_spells WHERE entry IN (1410,16519,16769,16772,16810,17088,17142,17143,18260,18262,18450,18451,18452,18453,18454,18455,18457,18475,18716,18718,18719,21242,21284,21285,21368,21370,21405,21644,21649,21650,21660,21661,21662,21852,21902,21911,22143,22144,22148,22378,22387,22388,23022,24920);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(1410, 2, 0, 0, 0, 16583, 0, 33390, 0),
(16519, 2, 0, 0, 7160, 0, 0, 0, 0),  -- 7.3.5 sniffed spell is 77720 instead of 7160
(16769, 2, 0, 0, 9613, 11962, 32932, 0, 0),
(16772, 2, 0, 0, 8646, 0, 0, 0, 0),
(16810, 2, 0, 0, 16583, 9613, 6742, 0, 0),
(17088, 2, 0, 0, 0, 13878, 32940, 0, 0),
(17142, 2, 0, 0, 17207, 11976, 0, 0, 0),
(17143, 2, 0, 0, 11642, 12550, 0, 0, 0),
(18260, 2, 0, 0, 2676, 0, 0, 0, 0),
(18262, 2, 0, 0, 2676, 0, 0, 0, 0),
(18450, 2, 0, 0, 6728, 26098, 32907, 32924, 0),
(18451, 2, 0, 0, 11972, 0, 0, 0, 0),
(18452, 2, 0, 0, 0, 32908, 10277, 0, 0),
(18453, 2, 0, 0, 0, 16561, 32907, 32924, 0),
(18454, 2, 0, 0, 6016, 0, 0, 0, 0),
(18455, 2, 0, 0, 32907, 6535, 12058, 11824, 0),
(18457, 2, 0, 0, 6660, 32926, 0, 0, 0),
(18475, 2, 0, 0, 31994, 0, 0, 0, 0),
(18716, 2, 0, 0, 32063, 9613, 0, 0, 0),
(18718, 2, 0, 0, 0, 32908, 32915, 0, 0),
(18719, 2, 0, 0, 9613, 0, 0, 0, 0),
(21242, 2, 0, 0, 9613, 13787, 18267, 0, 0),
(21284, 2, 0, 0, 37592, 38618, 0, 0, 0),
(21285, 2, 0, 0, 16568, 31516, 11642, 0, 0),
(21368, 2, 0, 0, 7159, 32920, 0, 0, 0),
(21370, 2, 0, 0, 9613, 17173, 0, 0, 0),
(21405, 2, 0, 0, 33832, 39039, 32936, 0, 0),
(21644, 2, 0, 0, 13730, 35321, 40546, 0, 0),
(21649, 2, 0, 0, 13901, 40578, 34110, 0, 0),
(21650, 2, 0, 0, 11428, 10277, 0, 0, 0),
(21660, 2, 0, 0, 34446, 11831, 0, 0, 0),
(21661, 2, 0, 0, 0, 15496, 0, 0, 0),
(21662, 2, 0, 0, 0, 37685, 0, 0, 0),
(21852, 2, 0, 0, 37592, 38618, 0, 0, 0),
(21902, 2, 0, 0, 32707, 17173, 0, 0, 0),
(21911, 2, 0, 0, 20298, 38663, 5137, 0, 0),
(22143, 2, 0, 0, 0, 37974, 15610, 0, 0),
(22144, 2, 0, 0, 0, 11986, 12550, 6742, 0),
(22148, 2, 0, 0, 15496, 0, 0, 0, 0),
(22378, 2, 0, 0, 0, 15691, 0, 0, 0),
(22387, 2, 0, 0, 32907, 6535, 12058, 11824, 0),
(22388, 2, 0, 0, 6016, 0, 0, 0, 0),
(23022, 2, 0, 0, 20743, 0, 15232, 0, 0),
(24920, 2, 0, 0, 0, 13443, 46202, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (1410,16519,16769,16772,16810,17088,17142,17143,18260,18262,18450,18451,18452,18453,18454,18455,18457,18475,18716,18718,18719,21242,21284,21285,21368,21370,21405,21644,21649,21650,21660,21661,21662,21852,21902,21911,22143,22144,22148,22378,22387,22388,23022,24920);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(1410, 16583, 9000, 9000),
(1410, 33390, 45000, 45000),
(16519, 7160, 20000, 20000), -- 7.3.5 sniffed spell is 77720 instead of 7160
(16769, 11962, 9000, 9000),
(16769, 32932, 120000, 120000),
(16769, 33483, 45000, 45000),
(16772, 8646, 14000, 14000),
(16810, 6742, 30000, 30000),
(16810, 16583, 9000, 9000),
(17088, 32940, 20000, 20000),
(17142, 11976, 8000, 8000),
(17142, 17207, 16000, 16000),
(17143, 11642, 12000, 12000),
(17143, 12550, 30000, 30000),
(18260, 2676, 12000, 12000),
(18262, 2676, 12000, 12000),
(18450, 6728, 16000, 16000),
(18450, 32907, 10000, 10000),
(18451, 11972, 12000, 12000),
(18452, 32908, 15000, 15000),
(18453, 16561, 25000, 25000),
(18453, 32907, 18000, 18000),
(18454, 6016, 20000, 20000),
(18455, 6535, 10000, 10000),
(18455, 11824, 10000, 10000),
(18455, 12058, 8000, 8000),
(18455, 32907, 12000, 12000),
(18475, 31994, 45000, 45000),
(18716, 32063, 9000, 9000),
(18718, 32908, 30000, 30000),
(18718, 32915, 9000, 9000),
(21242, 13787, 56565, 58659),
(21242, 18267, 46949, 50573),
(21284, 37592, 11463, 14688),
(21284, 38618, 16596, 19998),
(21285, 11642, 25635, 29215),
(21285, 16568, 10164, 14101),
(21285, 31516, 2003, 2487),
(21368, 7159, 4000, 4000),
(21368, 32920, 16000, 16000),
(21370, 17173, 13133, 13696),
(21405, 32936, 60000, 60000),
(21405, 39039, 18000, 18000),
(21644, 13730, 41669, 51667),
(21644, 35321, 35994, 43738),
(21644, 40546, 37842, 42866),
(21649, 34110, 25000, 25000),
(21649, 40578, 30545, 35797),
(21650, 10277, 3000, 3000),
(21650, 11428, 11877, 19078),
(21660, 11831, 12449, 14742),
(21661, 15496, 6265, 6933),
(21662, 37685, 6285, 7705),
(21852, 37592, 10115, 13932),
(21852, 38618, 15074, 19927),
(21902, 17173, 13153, 14189),
(21911, 5137, 33209, 43759),
(21911, 38663, 18173, 20860),
(22143, 15610, 16000, 16000),
(22143, 37974, 13000, 13000),
(22144, 6742, 17000, 17000),
(22144, 11986, 17000, 17000),
(22144, 12550, 20000, 20000),
(22148, 15496, 12000, 12000),
(22378, 15691, 23071, 28921),
(22387, 6535, 10000, 10000),
(22387, 11824, 10000, 10000),
(22387, 12058, 8000, 8000),
(22387, 32907, 12000, 12000),
(22388, 6016, 20000, 20000),
(23022, 15232, 6000, 6000),
(23022, 20743, 6000, 24279),
(24920, 13443, 30849, 41375),
(24920, 46202, 20711, 22616);

-- --------------
-- * Nagrand * --
-- --------------
DELETE FROM creature_template_spells WHERE entry IN (17134,17135,17136,17137,17138,17139,17141,17146,17147,17148,17149,17150,18037,18064,18065,18202,18203,18352,18440,18658,22341,22341,22342,22343,22363,22393);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(17134, 2, 0, 0, 2676, 0, 0, 0, 0),
(17135, 2, 0, 0, 9532, 11431, 13281, 0, 0),
(17136, 2, 0, 0, 31994, 0, 0, 0, 0),
(17137, 2, 0, 0, 6742, 9672, 20795, 0, 0),
(17138, 2, 0, 0, 15496, 0, 0, 0, 0),
(17139, 2, 0, 0, 10277, 12024, 0, 0, 0),
(17141, 2, 0, 0, 6278, 3234, 0, 0, 0),
(17146, 2, 0, 0, 34446, 31999, 22744, 0, 0),
(17147, 2, 0, 0, 32000, 16592, 0, 0, 0),
(17148, 2, 0, 0, 31996, 0, 0, 0, 0),
(17149, 2, 0, 0, 12540, 14873, 15691, 0, 0),
(17150, 2, 0, 0, 14514, 13901, 22938, 0, 0),
(18037, 2, 0, 0, 9613, 0, 0, 0, 0),
(18064, 2, 0, 0, 0, 12548, 11986, 0, 0),
(18065, 2, 0, 0, 10966, 0, 0, 0, 0),
(18202, 2, 0, 0, 32132, 0, 32133, 0, 0),
(18203, 2, 0, 0, 15496, 11971, 0, 0, 0),
(18352, 2, 0, 0, 32248, 0, 0, 0, 0),
(18440, 2, 0, 0, 31994, 0, 32376, 32378, 0),
(18658, 2, 0, 0, 32063, 9613, 0, 0, 0),
(22341, 2, 0, 0, 32000, 0, 0, 0, 0),
(22342, 2, 0, 0, 34446, 31999, 22744, 0, 0),
(22343, 2, 0, 0, 31996, 0, 0, 0, 0),
(22363, 2, 0, 0, 9613, 13787, 0, 11962, 0),
(22393, 2, 0, 0, 15232, 15228, 37579, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (17134,17135,17136,17137,17138,17139,17141,17146,17147,17148,17149,17150,18037,18064,18065,18202,18203,18352,18440,18658,22341,22341,22342,22343,22363,22393);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(17134, 2676, 12000, 12000),
(17135, 9532, 5000, 5000),
(17135, 11431, 15000, 15000),
(17135, 13281, 12000, 12000),
(17136, 31994, 45000, 45000),
(17137, 6742, 25000, 25000),
(17137, 20795, 8000, 8000),
(17138, 15496, 8000, 8000),
(17139, 12024, 20000, 20000),
(17141, 3234, 6000, 6000),
(17141, 6278, 8000, 8000),
(17146, 22744, 20000, 20000),
(17146, 31999, 12000, 12000),
(17146, 34446, 18000, 18000),
(17147, 16592, 30000, 30000),
(17147, 32000, 12000, 12000),
(17148, 31996, 20000, 20000),
(17149, 12540, 20000, 20000),
(17149, 14873, 3000, 3000),
(17149, 15691, 10000, 10000),
(17150, 14514, 10000, 10000),
(17150, 22938, 12000, 12000),
(18064, 11986, 15000, 15000),
(18064, 12548, 8000, 8000),
(18065, 10966, 12000, 12000),
(18202, 32132, 10000, 10000),
(18202, 32133, 14000, 14000),
(18203, 11971, 10000, 10000),
(18203, 15496, 8000, 8000),
(18352, 32248, 12524, 13237),
(18440, 31994, 45000, 45000),
(18440, 32376, 6000, 6000),
(18440, 32378, 20000, 20000),
(18658, 32063, 9000, 9000),
(22341, 32000, 12000, 12000),
(22342, 22744, 20000, 20000),
(22342, 31999, 12000, 12000),
(22342, 34446, 18000, 18000),
(22343, 31996, 20000, 20000),
(22363, 11962, 9617, 11250),
(22363, 13787, 30000, 30000),
(22393, 15228, 1000, 1000),
(22393, 15232, 1000, 1000),
(22393, 37579, 35000, 35000);

-- -----------------------------
-- * Blade's Edge Mountains * --
-- -----------------------------
DELETE FROM creature_template_spells WHERE entry IN (19943,19944,19945,19948,19957,19957,19982,19983,19984,19985,19986,19987,19988,19989,19990,19991,19992,19993,19993,19994,19995,19996,19997,19998,20161,20211,20334,20601,20609,20614,20726,20730,20731,20756,20765,20766,21046,21047,21048,21238,21254,21296,21300,21383,21640,21809,21810,21975,22019,22160,22175,22241,22242,22243,22254,22384,23153);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(19943, 2, 0, 0, 0, 37685, 0, 0, 0),
(19944, 2, 0, 0, 37577, 0, 0, 0, 0),
(19945, 2, 0, 0, 9532, 12550, 0, 0, 0),
(19948, 2, 0, 0, 34802, 37786, 0, 0, 0),
(19957, 2, 0, 0, 0, 37591, 0, 0, 0),
(19982, 2, 0, 0, 35321, 0, 0, 0, 0),
(19983, 2, 0, 0, 37654, 32717, 0, 0, 0),
(19984, 2, 0, 0, 11642, 37582, 0, 0, 0),
(19985, 2, 0, 0, 9532, 12550, 0, 0, 0),
(19986, 2, 0, 0, 37681, 0, 0, 0, 0),
(19987, 2, 0, 0, 37581, 0, 0, 0, 0),
(19988, 2, 0, 0, 10277, 0, 0, 0, 0),
(19989, 2, 0, 0, 9532, 37589, 0, 0, 0),
(19990, 2, 0, 0, 35321, 0, 0, 0, 0),
(19991, 2, 0, 0, 15496, 37577, 0, 0, 0),
(19992, 2, 0, 0, 12550, 0, 0, 0, 0),
(19993, 2, 0, 0, 37592, 37786, 0, 0, 0),
(19994, 2, 0, 0, 20825, 13787, 0, 0, 0),
(19995, 2, 0, 0, 15496, 0, 0, 0, 0),
(19996, 2, 0, 0, 16102, 6742, 0, 0, 0),
(19997, 2, 0, 0, 15588, 0, 0, 0, 0),
(19998, 2, 0, 0, 26098, 12550, 0, 0, 0),
(20161, 2, 0, 0, 9613, 37579, 34110, 0, 0),
(20211, 2, 0, 0, 9613, 37579, 34110, 0, 0),
(20334, 2, 0, 0, 0, 37596, 37597, 0, 0),
(20601, 2, 0, 0, 0, 32920, 35922, 0, 0),
(20609, 2, 0, 0, 11975, 36513, 0, 0, 0),
(20614, 2, 0, 0, 36508, 0, 0, 0, 0),
(20726, 2, 0, 0, 0, 12058, 12550, 11986, 0),
(20730, 2, 0, 0, 13730, 32009, 36208, 0, 0),
(20731, 2, 0, 0, 9053, 11831, 12544, 0, 0),
(20756, 2, 0, 0, 0, 37597, 37596, 0, 0),
(20765, 2, 0, 0, 15496, 0, 0, 0, 0),
(20766, 2, 0, 0, 11986, 12550, 37599, 0, 0),
(21046, 2, 0, 0, 37577, 0, 0, 0, 0),
(21047, 2, 0, 0, 11986, 12550, 28902, 0, 0),
(21048, 2, 0, 0, 0, 8078, 35491, 0, 0),
(21238, 2, 0, 0, 35918, 0, 0, 0, 0),
(21254, 2, 0, 0, 34802, 0, 0, 0, 0),
(21296, 2, 0, 0, 8078, 37777, 0, 0, 0),
(21300, 2, 0, 0, 32063, 9613, 0, 0, 0),
(21383, 2, 0, 0, 32707, 17139, 0, 0, 0),
(21640, 2, 0, 0, 34802, 0, 0, 0, 0),
(21809, 2, 0, 0, 15547, 6533, 0, 0, 0),
(21810, 2, 0, 0, 37704, 0, 0, 0, 0),
(21975, 2, 0, 0, 15496, 0, 0, 0, 0),
(22019, 2, 0, 0, 37704, 0, 0, 0, 0),
(22160, 2, 0, 0, 37592, 37786, 0, 0, 0),
(22175, 2, 0, 0, 40770, 13443, 0, 0, 0),
(22241, 2, 0, 0, 35922, 32920, 0, 0, 0),
(22242, 2, 0, 0, 36095, 38857, 38860, 0, 0),
(22243, 2, 0, 0, 34446, 36508, 0, 0, 0),
(22254, 2, 0, 0, 32063, 9613, 0, 0, 0),
(22384, 2, 0, 0, 20825, 13787, 0, 0, 0),
(23153, 2, 0, 0, 0, 40835, 40881, 11436, 0);
DELETE FROM creature_cooldowns WHERE entry IN (19943,19944,19945,19948,19957,19957,19982,19983,19984,19985,19986,19987,19988,19989,19990,19991,19992,19993,19993,19994,19995,19996,19997,19998,20161,20211,20334,20601,20609,20614,20726,20730,20731,20756,20765,20766,21046,21047,21048,21238,21254,21296,21300,21383,21640,21809,21810,21975,22019,22160,22175,22241,22242,22243,22254,22384,23153);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(19943, 37685, 8000, 8000),
(19944, 37577, 4410, 6734),
(19945, 12550, 30000, 30000),
(19948, 34802, 25265, 29957),
(19948, 37786, 20133, 28661),
(19957, 37591, 50000, 50000),
(19982, 35321, 16366, 16667),
(19983, 32717, 26307, 34519),
(19983, 37654, 13348, 14508),
(19984, 11642, 27279, 33735),
(19984, 37582, 30000, 30000),
(19985, 12550, 53360, 56805),
(19986, 37681, 15716, 17654),
(19987, 37581, 6315, 6526),
(19988, 10277, 45548, 58335),
(19989, 37589, 26707, 29563),
(19990, 35321, 20566, 20938),
(19991, 15496, 6003, 7267),
(19991, 37577, 15867, 19877),
(19992, 12550, 39146, 59945),
(19993, 37592, 29760, 34908),
(19993, 37786, 16823, 23660),
(19994, 13787, 60000, 60000),
(19995, 15496, 6301, 7601),
(19996, 6742, 10966, 12174),
(19996, 16102, 15000, 15000),
(19997, 15588, 11146, 11823),
(19998, 12550, 60000, 60000),
(19998, 26098, 4478, 5360),
(20161, 34110, 28803, 31882),
(20161, 37579, 60000, 60000),
(20211, 34110, 29816, 30642),
(20211, 37579, 60000, 60000),
(20334, 37596, 8880, 10960),
(20334, 37597, 9038, 9885),
(20601, 32920, 10523, 11927),
(20601, 35922, 20000, 20000),
(20609, 11975, 10001, 11333),
(20609, 36513, 13829, 15548),
(20614, 36508, 10352, 11299),
(20726, 11986, 25000, 25000),
(20726, 12058, 6129, 6973),
(20726, 12550, 26700, 27318),
(20730, 13730, 10777, 14335),
(20730, 32009, 6009, 6963),
(20730, 36208, 10829, 14497),
(20731, 9053, 1128, 2706),
(20731, 11831, 15000, 15000),
(20731, 12544, 26016, 29939),
(20756, 37596, 6000, 6000),
(20756, 37597, 15025, 15524),
(20765, 15496, 6188, 7854),
(20766, 11986, 26343, 28807),
(20766, 12550, 30000, 30000),
(20766, 37599, 15000, 15000),
(21046, 37577, 9266, 10756),
(21047, 11986, 25060, 26616),
(21047, 12550, 37051, 59654),
(21047, 28902, 12818, 14502),
(21048, 8078, 8288, 9514),
(21048, 35491, 17920, 19494),
(21238, 35918, 32719, 34914),
(21254, 34802, 19790, 23798),
(21296, 8078, 10290, 12880),
(21296, 37777, 21664, 23699),
(21300, 32063, 30000, 30000),
(21383, 17139, 15275, 19168),
(21640, 34802, 16659, 19235),
(21809, 6533, 20130, 21979),
(21810, 37704, 12010, 14049),
(21975, 15496, 6037, 7133),
(22019, 37704, 12464, 14604),
(22160, 37592, 26630, 34156),
(22160, 37786, 20600, 24870),
(22175, 13443, 33453, 34593),
(22175, 40770, 20450, 26469),
(22241, 32920, 15325, 18381),
(22241, 35922, 15000, 15000),
(22242, 36095, 10377, 11785),
(22242, 38857, 8049, 9650),
(22243, 36508, 8037, 9278),
(22254, 32063, 30000, 30000),
(22384, 13787, 60000, 60000),
(23153, 11436, 32542, 35553),
(23153, 40835, 23056, 29103),
(23153, 40881, 19233, 19842);

-- ------------------
-- * Netherstorm * --
-- ------------------
DELETE FROM creature_template_spells WHERE entry IN (18850,18852,18853,18855,18857,18875,19453,19593,19642,19643,19657,19707,19779,19830,19831,19926,20134,20135,20136,20139,20140,20207,20221,20248,20397,20416,20435,20453,20456,20458,20459,20474,20770,21089,22821,22822);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(18850, 2, 0, 0, 35877, 0, 0, 0, 0),
(18852, 2, 0, 0, 35919, 35920, 0, 0, 0),
(18853, 2, 0, 0, 35877, 0, 0, 0, 0),
(18855, 2, 0, 0, 9053, 0, 0, 0, 0),
(18857, 2, 0, 0, 35919, 0, 0, 0, 0),
(18875, 2, 0, 0, 35922, 0, 0, 0, 0),
(19453, 2, 0, 0, 32064, 35871, 0, 0, 0),
(19593, 2, 0, 0, 35927, 15091, 35917, 0, 0),
(19642, 2, 0, 0, 32920, 7159, 0, 0, 0),
(19643, 2, 0, 0, 38391, 35914, 35917, 0, 0),
(19657, 2, 0, 0, 19816, 11831, 0, 0, 0),
(19707, 2, 0, 0, 37847, 12024, 0, 0, 0),
(19779, 2, 0, 0, 36645, 35918, 0, 0, 0),
(19830, 2, 0, 0, 33860, 35853, 0, 0, 0),
(19831, 2, 0, 0, 35871, 35473, 0, 0, 0),
(19926, 2, 0, 0, 35831, 35848, 35843, 0, 0),
(20134, 2, 0, 0, 34446, 0, 0, 0, 0),
(20135, 2, 0, 0, 20823, 35917, 11831, 0, 0),
(20136, 2, 0, 0, 35918, 0, 0, 0, 0),
(20139, 2, 0, 0, 9672, 11829, 0, 0, 0),
(20140, 2, 0, 0, 35871, 0, 0, 0, 0),
(20207, 2, 0, 0, 37847, 6660, 12024, 0, 0),
(20221, 2, 0, 0, 35857, 33731, 0, 0, 0),
(20248, 2, 0, 0, 9613, 17173, 0, 0, 0),
(20397, 2, 0, 0, 35919, 0, 36179, 0, 0),
(20416, 2, 0, 0, 35871, 6713, 0, 0, 0),
(20435, 2, 0, 0, 0, 34802, 22911, 15496, 0),
(20453, 2, 0, 0, 0, 36500, 31553, 37486, 0),
(20456, 2, 0, 0, 0, 36506, 9532, 36508, 0),
(20458, 2, 0, 0, 0, 0, 36513, 0, 0),
(20459, 2, 0, 0, 0, 32064, 36509, 0, 0),
(20474, 2, 0, 0, 0, 36517, 36515, 0, 0),
(20770, 2, 0, 0, 0, 36517, 36515, 0, 0),
(21089, 2, 0, 0, 35871, 36476, 0, 0, 0),
(22821, 2, 0, 0, 0, 32064, 36509, 0, 0),
(22822, 2, 0, 0, 0, 0, 36513, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (18850,18852,18853,18855,18857,18875,19453,19593,19642,19643,19657,19707,19779,19830,19831,19926,20134,20135,20136,20139,20140,20207,20221,20248,20397,20416,20435,20453,20456,20458,20459,20474,20770,21089,22821,22822);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(18850, 35877, 40000, 40000),
(18852, 35919, 16144, 18379),
(18852, 35920, 10559, 11853),
(18853, 35877, 40000, 40000),
(18857, 35919, 10672, 11342),
(18875, 35922, 15000, 15000),
(19453, 32064, 15000, 15000),
(19453, 35871, 19000, 19000),
(19593, 15091, 9000, 9000),
(19593, 35917, 60000, 60000),
(19642, 7159, 8000, 8000),
(19642, 32920, 15000, 15000),
(19643, 35914, 15000, 15000),
(19643, 35917, 60000, 60000),
(19657, 11831, 16000, 16000),
(19707, 12024, 20000, 20000),
(19707, 37847, 31913, 40230),
(19779, 35918, 16397, 18333),
(19779, 36645, 22410, 28370),
(19830, 33860, 15000, 15000),
(19831, 35473, 4000, 4000),
(19831, 35871, 12000, 12000),
(19926, 35831, 60000, 60000),
(19926, 35843, 15000, 15000),
(20135, 11831, 15000, 15000),
(20135, 35917, 63000, 63000),
(20136, 35918, 15000, 15000),
(20139, 11829, 15000, 15000),
(20140, 35871, 19000, 19000),
(20207, 12024, 15000, 15000),
(20207, 37847, 30365, 34780),
(20221, 33731, 12000, 12000),
(20221, 35857, 12000, 12000),
(20248, 17173, 12000, 12000),
(20397, 35919, 16364, 18962),
(20397, 36179, 7000, 7000),
(20416, 6713, 19000, 19000),
(20416, 35871, 12000, 12000),
(20435, 15496, 12000, 12000),
(20435, 22911, 30000, 30000),
(20435, 34802, 15000, 15000),
(20453, 31553, 51419, 59188),
(20453, 36500, 11593, 13318),
(20453, 37486, 20000, 20000),
(20456, 36506, 33125, 54211),
(20456, 36508, 6000, 6000),
(20458, 36513, 17746, 19514),
(20459, 32064, 16019, 17871),
(20459, 36509, 21235, 26198),
(20474, 36517, 20000, 20000),
(20770, 36517, 20000, 20000),
(21089, 35871, 19000, 19000),
(21089, 36476, 25000, 25000),
(22821, 32064, 17535, 19612),
(22821, 36509, 26508, 27603),
(22822, 36513, 18508, 19085);

-- ------------------------
-- * Shadowmoon Valley * --
-- ------------------------
DELETE FROM creature_template_spells WHERE entry IN (19762,19765,19767,19788,19789,19792,19796,19806,20684,20795,20872,20878,21179,21180,21196,21205,21207,21302,21416,21455,21477,21478,21503,21505,21709,21710,21711,21717,21718,21719,21742,21743,21803,22016,22017,22018,22081,22082,22084);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(19762, 2, 0, 0, 38233, 38031, 0, 0, 0),
(19765, 2, 0, 0, 38027, 0, 0, 0, 0),
(19767, 2, 0, 0, 32011, 38026, 0, 0, 0),
(19788, 2, 0, 0, 38232, 38029, 0, 0, 0),
(19789, 2, 0, 0, 9672, 38033, 0, 0, 0),
(19792, 2, 0, 0, 36476, 35871, 0, 0, 0),
(19796, 2, 0, 0, 37986, 13878, 11829, 0, 0),
(19806, 2, 0, 0, 38313, 37838, 0, 0, 0),
(20684, 2, 0, 0, 13901, 38035, 0, 0, 0),
(20795, 2, 0, 0, 32011, 11831, 0, 0, 0),
(20872, 2, 0, 0, 9613, 37628, 0, 0, 0),
(20878, 2, 0, 0, 37998, 11972, 0, 0, 0),
(21179, 2, 0, 0, 0, 32720, 0, 0, 0),
(21180, 2, 0, 0, 0, 38009, 35871, 0, 0),
(21196, 2, 0, 0, 37933, 0, 0, 0, 0),
(21205, 2, 0, 0, 36464, 38363, 0, 0, 0),
(21207, 2, 0, 0, 12471, 38401, 0, 0, 0),
(21302, 2, 0, 0, 9613, 37992, 0, 0, 0),
(21416, 2, 0, 0, 32011, 0, 0, 0, 0),
(21455, 2, 0, 0, 6016, 0, 0, 0, 0),
(21477, 2, 0, 0, 37937, 0, 0, 0, 0), -- spell 80586 doesn't exist in TBC, guessing the equivalent in TBC is 37937
(21478, 2, 0, 0, 33912, 0, 0, 0, 0),
(21503, 2, 0, 0, 0, 9613, 32707, 0, 0),
(21505, 2, 0, 0, 13901, 36994, 0, 0, 0),
(21709, 2, 0, 0, 32734, 13281, 0, 0, 0),
(21710, 2, 0, 0, 15039, 0, 0, 0, 0),
(21711, 2, 0, 0, 12058, 9532, 0, 0, 0),
(21717, 2, 0, 0, 0, 38338, 0, 0, 0),
(21718, 2, 0, 0, 9613, 0, 0, 0, 0),
(21719, 2, 0, 0, 6660, 31975, 0, 0, 0),
(21742, 2, 0, 0, 17137, 38008, 0, 0, 0),
(21743, 2, 0, 0, 36104, 37577, 0, 0, 0),
(21803, 2, 0, 0, 38046, 0, 0, 0, 0),
(22016, 2, 0, 0, 36476, 0, 0, 0, 0),
(22017, 2, 0, 0, 0, 34446, 18972, 0, 0),
(22018, 2, 0, 0, 30931, 35871, 0, 0, 0),
(22081, 2, 0, 0, 9613, 11962, 35373, 0, 0),
(22082, 2, 0, 0, 0, 37577, 0, 0, 0),
(22084, 2, 0, 0, 38618, 10966, 0, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (19762,19765,19767,19788,19789,19792,19796,19806,20684,20795,20872,20878,21179,21180,21196,21205,21207,21302,21416,21455,21477,21478,21503,21505,21709,21710,21711,21717,21718,21719,21742,21743,21803,22016,22017,22018,22081,22082,22084);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(19762, 38031, 20954, 33787),
(19762, 38233, 15349, 19415),
(19765, 38027, 25259, 49821),
(19767, 38026, 30000, 30000),
(19788, 38029, 7147, 9401),
(19788, 38232, 29050, 33016),
(19789, 9672, 5000, 5000),
(19789, 38033, 8399, 9786),
(19792, 35871, 8747, 9670),
(19792, 36476, 25062, 29110),
(19796, 11829, 16985, 18950),
(19796, 37986, 15615, 17298),
(19806, 37838, 17228, 18126),
(19806, 38313, 17938, 18886),
(20684, 38035, 10109, 10732),
(20795, 11831, 14000, 14000),
(20872, 9613, 1000, 1000),
(20872, 37628, 1000, 1000),
(20878, 11972, 12000, 12000),
(20878, 37998, 6161, 6774),
(21179, 32720, 45034, 53578),
(21180, 35871, 16730, 24669),
(21180, 38009, 20339, 43589),
(21196, 37933, 15345, 18509),
(21205, 36464, 12000, 12000),
(21205, 38363, 22456, 24498),
(21302, 37992, 30000, 30000),
(21455, 6016, 15529, 19010),
(21477, 37937, 25000, 25000), -- spell 80586 doesn't exist in TBC, guessing the equivalent in TBC is 37937
(21478, 33912, 17407, 19912),
(21505, 36994, 16270, 17962),
(21709, 13281, 13037, 13678),
(21710, 15039, 8000, 8000),
(21711, 12058, 5000, 5000),
(21717, 38338, 45000, 45000),
(21719, 31975, 20204, 24261),
(21742, 17137, 5857, 12528),
(21742, 38008, 40018, 49799),
(21743, 36104, 15073, 24748),
(21743, 37577, 19241, 19727),
(21803, 38046, 20660, 26603),
(22016, 36476, 25037, 29793),
(22017, 18972, 49535, 56689),
(22017, 34446, 11082, 19385),
(22018, 30931, 40047, 52962),
(22018, 35871, 12000, 12000),
(22081, 11962, 13954, 14886),
(22081, 35373, 16328, 18969),
(22082, 37577, 7424, 9577),
(22084, 10966, 8165, 9464),
(22084, 38618, 11504, 14775);

-- ----------------------
-- * Auchenai Crypts * --
-- ----------------------
DELETE FROM creature_template_spells WHERE entry IN (18493,18495,18702,20301,20302,20300);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
-- Normal
(18493, 2, 0, 0, 32858, 32859, 32860, 0, 0),
(18495, 2, 0, 0, 32861, 17439, 0, 0, 0),
(18702, 2, 0, 0, 35839, 32863, 33325, 0, 0),
-- Heroic
(20301, 2, 0, 0, 38377, 32859, 38378, 0, 0),
(20302, 2, 0, 0, 38379, 17289, 0, 0, 0),
(20300, 2, 0, 0, 35839, 38252, 33325, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (18493,18495,18702,20301,20302,20300);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
-- Normal
(18493, 32858, 10126, 19740),
(18493, 32859, 19806, 25738),
(18495, 17439, 17257, 19972),
(18495, 32861, 22233, 27761),
(18702, 32863, 3000, 14184),
(18702, 33325, 3000, 14167),
(18702, 35839, 3000, 3000),
-- Heroic
(20301, 32859, 26964, 26964),
(20301, 38377, 16531, 16531),
(20302, 17289, 18919, 18919),
(20302, 38379, 28196, 28196),
(20300, 33325, 3000, 3000),
(20300, 38252, 15556, 15556);

-- -----------------
-- * Mana Tombs * --
-- -----------------
DELETE FROM creature_template_spells WHERE entry IN (18309,18311,18312,18313,18314,18315,18317,18331,18430,20260,20257,18429,20252);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
-- Normal
(18309, 2, 0, 0, 33865, 33871, 34920, 0, 0),
(18311, 2, 0, 0, 22911, 32315, 31403, 0, 0),
(18312, 2, 0, 0, 0, 37470, 17883, 0, 0),
(18313, 2, 0, 0, 15790, 25603, 0, 0, 0),
(18314, 2, 0, 0, 34940, 0, 33925, 0, 0),
(18315, 2, 0, 0, 17145, 15580, 13323, 0, 0),
(18317, 2, 0, 0, 34944, 34945, 17139, 0, 0),
(18331, 2, 0, 0, 0, 16592, 34942, 34931, 0),
(18430, 2, 0, 0, 32369, 32370, 0, 0, 0),
(20260, 2, 0, 0, 0, 37470, 37668, 0, 0),
(20257, 2, 0, 0, 37669, 22883, 35944, 0, 0),
(18429, 2, 0, 0, 0, 15122, 33860, 0, 0),
(20252, 2, 0, 0, 0, 15122, 15253, 0, 0);

DELETE FROM creature_cooldowns WHERE entry IN (18309,18311,18312,18313,18314,18315,18317,18331,18430,20260,20257,18429,20252);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
-- Normal
(18309, 33865, 11789, 14770),
(18309, 33871, 6149, 9482),
(18309, 34920, 6935, 9575),
(18311, 22911, 17911, 24943),
(18311, 31403, 60000, 60000),
(18311, 32315, 11767, 14573),
(18312, 17883, 11176, 13315),
(18312, 37470, 7934, 9907),
(18313, 15790, 17522, 19380),
(18313, 25603, 8000, 13071),
(18314, 33925, 10606, 14276),
(18314, 34940, 10085, 14815),
(18315, 13323, 16608, 18902),
(18315, 15580, 5467, 9224),
(18315, 17145, 18950, 19905),
(18317, 17139, 5003, 9463),
(18317, 34944, 10407, 12333),
(18317, 34945, 10555, 14043),
(18331, 34931, 12365, 14372),
(18331, 34942, 7218, 8964),
(18430, 32369, 4000, 4000),
(18430, 32370, 4000, 4000),
(20260, 37668, 11176, 13315),
(20260, 37470, 7934, 9907),
(20257, 35944, 5003, 9463),
(20257, 37669, 10407, 12333),
(20257, 22883, 10555, 14043),
(18429, 15122, 10000, 10000),
(18429, 33860, 8000, 8000),
(20252, 15122, 10000, 10000),
(20252, 15253, 6000, 6000);

-- --------------------
-- * Sethekk Halls * --
-- --------------------
DELETE FROM creature_template_spells WHERE entry IN (18318,18322,18323,18325,18326,18328,19429,20694);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
-- Normal
(18318, 2, 0, 0, 33961, 16145, 0, 0, 0),
(18322, 2, 0, 0, 0, 33964, 32651, 0, 0),
(18323, 2, 0, 0, 33967, 0, 0, 0, 0),
(18325, 2, 0, 0, 27641, 0, 0, 0, 0),
(18326, 2, 0, 0, 15501, 0, 0, 0, 0),
(18328, 2, 0, 0, 32129, 32690, 0, 0, 0),
-- (19429, 2, 0, 0, 38059, 32901, 0, 0, 0),
-- Heroic
(20694, 2, 0, 0, 32129, 38146, 0, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (18318,18322,18323,18325,18326,18328,19429,20694);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
-- Normal
(18318, 16145, 11200, 14268),
(18318, 33961, 27712, 34098),
(18322, 32651, 16523, 17095),
(18322, 33964, 5133, 9340),
(18323, 33967, 12044, 13793),
(18325, 27641, 10541, 12192),
(18326, 15501, 8409, 8877),
(18328, 32129, 10788, 14819),
(18328, 32690, 16524, 22848),
-- Heroic
(20694, 32129, 13323, 13323),
(20694, 38146, 6630, 6630);

-- ------------------
-- * Shadow Labs * --
-- ------------------
DELETE FROM creature_template_spells WHERE entry IN (18631,18632,18633,18634,18635,18637,18638,18639,18640,19208,19209,20638,20646,20647,20648,20649,20650,20660,20661);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
-- Normal
(18631, 2, 0, 0, 0, 0, 15614, 0, 0), -- 3391
(18632, 2, 0, 0, 33500, 7160, 30485, 0, 0), -- sniffed spell is 77720 instead of 7160
(18633, 2, 0, 0, 12039, 25058, 33482, 0, 0),
(18634, 2, 0, 0, 0, 14034, 0, 0, 0),
(18635, 2, 0, 0, 33480, 11428, 0, 0, 0),
(18637, 2, 0, 0, 16592, 17165, 14032, 0, 0),
(18638, 2, 0, 0, 12471, 0, 0, 0, 0),
(18639, 2, 0, 0, 32691, 0, 0, 0, 0),
(18640, 2, 0, 0, 32863, 12471, 13787, 0, 0),
(19208, 2, 0, 0, 12039, 25058, 33482, 0, 0),
(19209, 2, 0, 0, 33480, 11428, 0, 0, 0),
-- Heroic
(20638, 2, 0, 0, 38209, 38210, 33482, 0, 0),
(20646, 2, 0, 0, 16592, 38243, 17146, 0, 0),
(20647, 2, 0, 0, 32691, 0, 0, 0, 0),
(20648, 2, 0, 0, 0, 15228, 0, 0, 0),
(20649, 2, 0, 0, 38252, 15232, 13787, 0, 0),
(20650, 2, 0, 0, 15472, 0, 0, 0, 0),
(20660, 2, 0, 0, 38209, 38210, 33482, 0, 0),
(20661, 2, 0, 0, 38226, 11428, 0, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (18631,18632,18633,18634,18635,18637,18638,18639,18640,19208,19209,20638,20646,20647,20648,20649,20650,20660,20661);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
-- Normal
(18631, 3391, 8566, 10983),
(18631, 15614, 3649, 6262),
(18632, 30485, 60000, 60000),
(18632, 33500, 19125, 22657),
(18632, 7160, 9992, 9992),
(18633, 12039, 10553, 18866),
(18633, 25058, 11946, 14162),
(18634, 14034, 1268, 1287),
(18635, 11428, 11330, 16092),
(18635, 33480, 10270, 14451),
(18637, 14032, 3147, 4253),
(18637, 17165, 1042, 3120),
(18639, 32691, 8272, 14752),
(18640, 13787, 26117, 32354),
(18640, 32863, 18536, 28177),
(19208, 12039, 15906, 18250),
(19208, 25058, 10165, 12119),
(19209, 11428, 10547, 18848),
(19209, 33480, 12825, 14200),
-- Heroic
(20638, 38209, 14132, 14132),
(20638, 38210, 10781, 10781),
(20646, 17146, 4471, 4471),
(20646, 38243, 3183, 3715),
(20647, 32691, 11336, 11336),
(20648, 15228, 1713, 2357),
(20649, 13787, 33193, 33193),
(20649, 15232, 4000, 4000),
(20649, 38252, 4000, 25786),
(20660, 38209, 11134, 11134),
(20660, 38210, 14760, 14760),
(20661, 11428, 19594, 19594),
(20661, 38226, 10568, 10568);

-- ------------------------------
-- * Old Hillsbrad Foothills * --
-- ------------------------------
DELETE FROM creature_template_spells WHERE entry IN (17814,17815,17819,17820,17833,17833,17860,18934,23175,23177,23180,20525,20526,20530,20537,20546);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
-- Normal
(17814, 2, 0, 0, 12169, 11976, 0, 0, 0),
(17815, 2, 0, 0, 15620, 8279, 0, 0, 0),
(17819, 2, 0, 0, 9080, 15496, 14895, 0, 0),
(17820, 2, 0, 0, 16100, 31942, 23601, 0, 0), -- using 23601 instead of 115119
(17833, 2, 0, 0, 15586, 15654, 22884, 0, 0),
(17860, 2, 0, 0, 0, 0, 15581, 15582, 0),
(18934, 2, 0, 0, 12466, 13341, 15244, 12544, 0),
(23175, 2, 0, 0, 15749, 0, 0, 0, 0),
(23177, 2, 0, 0, 15620, 17174, 35511, 0, 0),
(23180, 2, 0, 0, 32588, 17843, 0, 0, 0),
-- Heroic
(20525, 2, 0, 0, 17290, 16144, 38384, 12544, 0),
(20526, 2, 0, 0, 22907, 38383, 23601, 0, 0),
(20530, 2, 0, 0, 22883, 34941, 22884, 17201, 0),
(20537, 2, 0, 0, 16100, 8279, 0, 0, 0),
(20546, 2, 0, 0, 16100, 17174, 35511, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (17814,17815,17819,17820,17833,17833,17860,18934,23175,23177,23180,20525,20526,20530,20537,20546);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
-- Normal
(17814, 11976, 5000, 5000),
(17814, 12169, 15000, 15000),
(17819, 9080, 10000, 10000),
(17819, 14895, 5000, 5000),
(17819, 15496, 12000, 12000),
(17820, 31942, 10064, 13343),
(17820, 23601, 22200, 24187), -- using 23601 instead of 115119
(17833, 15586, 8000, 8000),
(17833, 15654, 10000, 10000),
(17833, 22884, 30000, 30000),
(17860, 15581, 3021, 3596),
(17860, 15582, 4785, 5286),
(18934, 12544, 11391, 11712),
(18934, 13341, 8251, 9760),
(18934, 15244, 11389, 14883),
(23175, 15749, 15000, 15000),
(23177, 17174, 8000, 8000),
(23177, 35511, 6529, 7423),
(23180, 17843, 8000, 8000),
(23180, 32588, 10000, 10000),
-- Heroic
(20525, 12544, 13504, 13504),
(20525, 16144, 9867, 9867),
(20525, 38384, 13244, 13244),
(20526, 23601, 20420, 20420),
(20526, 38383, 11732, 11732),
(20530, 17201, 5000, 5000),
(20530, 22883, 8000, 8000),
(20530, 22884, 30000, 30000),
(20530, 34941, 10000, 10000),
(20546, 17174, 8000, 8000),
(20546, 35511, 6127, 7386);

-- ---------------
-- * Arcatraz * --
-- ---------------
DELETE FROM creature_template_spells WHERE entry IN (20857,20859,20896,20897,21702,21587);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
-- Normal
(20857, 2, 0, 0, 0, 0, 0, 0, 0),
(20859, 2, 0, 0, 15620, 36609, 36608, 0, 0),
(20896, 2, 0, 0, 36838, 36839, 0, 0, 0),
(20897, 2, 0, 0, 36840, 38897, 32693, 0, 0),
(21702, 2, 0, 0, 37479, 15654, 37480, 0, 0),
-- Heroic
(21587, 2, 0, 0, 22907, 38807, 38808, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (20857,20859,20896,20897,21702,21587);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
-- Normal
(20859, 36608, 18107, 19829),
(20859, 36609, 16070, 19377),
(20896, 36838, 14107, 14610),
(20896, 36839, 17276, 18112),
(20897, 32693, 28586, 30561),
(20897, 36840, 16246, 17397),
(20897, 38897, 10185, 13644),
(21702, 15654, 6109, 7209),
(21702, 37479, 7419, 8773),
(21702, 37480, 16421, 17861),
-- Heroic
(21587, 38807, 18204, 18204),
(21587, 38808, 15450, 15450);

-- ---------------
-- * Botanica * --
-- ---------------
DELETE FROM creature_template_spells WHERE entry IN (17993,17994,18404,18419,18421,18422,19486,19505,19507,19508,19509,19633,20078,20083,21546,21547,21568,21569,21570,21572,21573,21577);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
-- Normal
(17993, 2, 0, 0, 0, 34784, 29765, 0, 0),
(17994, 2, 0, 0, 31567, 32908, 35401, 34879, 0),
(18404, 2, 0, 0, 34821, 0, 0, 0, 0),
(18419, 2, 0, 0, 34797, 34798, 34800, 0, 0),
(18421, 2, 0, 0, 34352, 34354, 34353, 34355, 0),
(18422, 2, 0, 0, 34254, 34350, 34361, 0, 0),
(19486, 2, 0, 0, 34359, 34358, 0, 0, 0),
(19505, 2, 0, 0, 34634, 34637, 0, 0, 0),
(19507, 2, 0, 0, 34642, 0, 0, 0, 0),
(19508, 2, 0, 0, 22127, 34641, 0, 0, 0),
(19509, 2, 0, 0, 0, 34639, 34640, 0, 0),
(19633, 2, 0, 0, 17194, 35096, 34809, 0, 0),
(20078, 2, 0, 0, 34820, 0, 0, 0, 0),
(20083, 2, 0, 0, 17194, 35096, 34809, 0, 0),
-- Heroic
(21546, 2, 0, 0, 39120, 39121, 34800, 0, 0),
(21577, 2, 0, 0, 34352, 34354, 34353, 34355, 0),
(21570, 2, 0, 0, 39126, 34350, 39125, 0, 0),
(21572, 2, 0, 0, 39128, 39127, 0, 0, 0),
(21573, 2, 0, 0, 39347, 0, 0, 0, 0),
(21547, 2, 0, 0, 17287, 35096, 34809, 0, 0),
(21569, 2, 0, 0, 34820, 0, 0, 0, 0),
(21568, 2, 0, 0, 17287, 35096, 34809, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (17993,17994,18404,18419,18421,18422,19486,19505,19507,19508,19509,19633,20078,20083,21546,21547,21568,21569,21570,21572,21573,21577);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
-- Normal
(17993, 29765, 5551, 8532),
(17994, 31567, 10525, 17067),
(17994, 32908, 11063, 19359),
(17994, 34879, 10642, 13801),
(17994, 35401, 10754, 12841),
(18404, 34821, 16186, 23456),
(18419, 34797, 6000, 9384),
(18419, 34798, 3099, 6000),
(18419, 34800, 6000, 24550),
(18421, 34352, 12033, 13797),
(18421, 34353, 8775, 9945),
(18421, 34354, 8391, 10680),
(18421, 34355, 14960, 16718),
(18422, 34254, 10226, 13168),
(18422, 34350, 16025, 18779),
(18422, 34361, 10019, 14829),
(19486, 34358, 20134, 23840),
(19486, 34359, 13968, 17399),
(19505, 34634, 16212, 19834),
(19505, 34637, 11019, 14981),
(19507, 34642, 16175, 19174),
(19508, 22127, 10302, 11354),
(19508, 34641, 4142, 7216),
(19509, 34639, 16693, 19650),
(19509, 34640, 5021, 9639),
(19633, 17194, 16799, 19138),
(19633, 34809, 11184, 14979),
(19633, 35096, 13103, 22500),
(20078, 34820, 9615, 9901),
(20083, 17194, 15083, 18256),
(20083, 34809, 12360, 13581),
(20083, 35096, 12945, 19561),
-- Heroic
(21546, 34800, 16556, 16556),
(21546, 39120, 5936, 8584),
(21547, 17287, 9773, 9773),
(21547, 34809, 11139, 12744),
(21547, 35096, 23817, 23817),
(21568, 17287, 10157, 10157),
(21568, 34809, 11283, 11993),
(21568, 35096, 12608, 12608),
(21569, 34820, 5019, 9234),
(21570, 34350, 19573, 19573),
(21570, 39125, 14079, 14079),
(21570, 39126, 14281, 14281),
(21572, 39127, 16408, 16408),
(21572, 39128, 12595, 12595),
(21573, 39347, 18702, 18702),
(21577, 34352, 6366, 6366),
(21577, 34353, 4365, 4365),
(21577, 34354, 4972, 4972),
(21577, 34355, 13950, 13950);

-- ---------------
-- * Mechanar * --
-- ---------------
DELETE FROM creature_template_spells WHERE entry IN (19167,19168,19510,20059,20988,20990,21523,21539,21540,21541);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
-- Normal
(19167, 2, 0, 0, 35189, 13736, 0, 0, 0),
(19168, 2, 0, 0, 35265, 35267, 17195, 0, 0),
(19510, 2, 0, 0, 35178, 0, 0, 0, 0),
(20059, 2, 0, 0, 35243, 35261, 0, 0, 0),
(20988, 2, 0, 0, 36341, 36345, 36346, 0, 0),
(20990, 2, 0, 0, 36333, 36348, 36340, 0, 0),
-- Heroic
(21523, 2, 0, 0, 36333, 38919, 38921, 0, 0),
(21539, 2, 0, 0, 38933, 38930, 36807, 0, 0),
(21540, 2, 0, 0, 36341, 39196, 36346, 0, 0),
(21541, 2, 0, 0, 38935, 38936, 17201, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (19167,19168,19510,20059,20988,20990,21523,21539,21540,21541);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
-- Normal
(19167, 13736, 12039, 16355),
(19167, 35189, 10295, 14684),
(19168, 17195, 11417, 14675),
(19168, 35265, 15760, 24718),
(19168, 35267, 10800, 14476),
(19510, 35178, 10510, 12893),
(20059, 35243, 10090, 12284),
(20059, 35261, 10956, 13525),
(20988, 36341, 20406, 21439),
(20988, 36345, 11058, 13624),
(20988, 36346, 17080, 19652),
(20990, 36333, 15000, 15000),
(20990, 36340, 5614, 8956),
(20990, 36348, 15000, 15000),
-- Heroic
(21523, 36333, 15000, 15000),
(21523, 38919, 15000, 15000),
(21523, 38921, 6179, 9124),
(21539, 36807, 12464, 12464),
(21539, 38930, 13662, 13662),
(21539, 38933, 24333, 24333),
(21540, 36341, 21825, 21825),
(21540, 36346, 18278, 18278),
(21540, 39196, 10168, 10168),
(21541, 17201, 8850, 26210),
(21541, 38935, 11226, 12859),
(21541, 38936, 10608, 14785);

-- ==========================================================================
-- ENSLAVE
-- ==========================================================================
-- HELLFIRE PENINSULA
DELETE FROM creature_template_spells WHERE entry IN (16946,16947,16950,16951,16954,16959,16960,16974,16975,17014,17014,17058,18827,18975,18977,19136,19190,19192,19261,19299,19408,19527);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(16946, 2, 1, 4, 32735, 3, 4, 0, 0),
(16947, 2, 1, 4, 0, 0, 0, 0, 3),
(16950, 2, 1, 4, 11981, 3, 4, 0, 0),
(16951, 2, 1, 4, 45, 37488, 3, 4, 0),
(16954, 2, 1, 4, 32736, 15496, 32737, 3, 4),
(16959, 2, 1, 4, 12098, 33678, 33679, 3, 4),
(16960, 2, 1, 4, 21987, 30850, 3, 4, 0),
(16974, 2, 1, 4, 33914, 3, 4, 0, 0),
(16975, 2, 1, 4, 33914, 33916, 3, 4, 0),
(17014, 2, 1, 4, 34259, 3, 4, 0, 0),
(17058, 2, 1, 4, 16244, 3, 4, 0, 0),
(18827, 2, 1, 4, 0, 0, 0, 0, 3),
(18975, 2, 1, 4, 3, 4, 0, 0, 0),
(18977, 2, 1, 4, 33971, 3, 4, 0, 0),
(19136, 2, 1, 4, 9053, 3, 4, 0, 0),
(19190, 2, 1, 4, 32736, 3, 4, 0, 0),
(19192, 2, 1, 4, 34017, 3, 4, 0, 0),
(19261, 2, 1, 4, 12743, 3, 4, 0, 0),
(19299, 2, 1, 4, 32417, 3, 4, 0, 0),
(19408, 2, 1, 4, 15968, 34086, 3, 4, 0),
(19527, 2, 1, 4, 34344, 3, 4, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (16946,16947,16950,16951,16954,16959,16960,16974,16975,17014,17014,17058,18827,18975,18977,19136,19190,19192,19261,19299,19408,19527);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(16946, 32735, 20000, 20000),
(16950, 11981, 6000, 6000),
(16951, 45, 20000, 20000),
(16951, 37488, 12000, 12000),
(16954, 15496, 12000, 12000),
(16954, 32736, 8000, 8000),
(16959, 12098, 10000, 10000),
(16959, 33678, 20000, 20000),
(16959, 33679, 30000, 30000),
(16960, 21987, 14341, 18580),
(16960, 30850, 30000, 30000),
(16974, 33914, 9000, 9000),
(16975, 33914, 8000, 8000),
(16975, 33916, 25000, 25000),
(17014, 34259, 25058, 29459),
(19190, 32736, 8000, 8000),
(19192, 34017, 15000, 15000),
(19299, 32417, 15000, 15000),
(19408, 15968, 4264, 5962);

-- TERROKAR FOREST
DELETE FROM creature_template_spells WHERE entry IN (18676,18977,21963,22381);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(18676, 2, 1, 4, 0, 0, 0, 0, 3),
(18977, 2, 1, 4, 33971, 3, 4, 0, 0),
(21963, 2, 1, 4, 11443, 11876, 31598, 3, 4),
(22381, 2, 1, 4, 34017, 36541, 3, 4, 0);
DELETE FROM creature_cooldowns WHERE entry IN (18676,18977,21963,22381);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(21963, 11443, 11125, 12986),
(21963, 11876, 15853, 19571),
(21963, 31598, 14345, 19489),
(22381, 34017, 13000, 13000),
(22381, 36541, 25000, 25000);

-- NAGRAND
DELETE FROM creature_template_spells WHERE entry IN (16945,17151,17152,17981,18660,18661);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(16945, 2, 1, 4, 3, 4, 0, 0, 0),
(17151, 2, 1, 4, 0, 0, 0, 0, 3),
(17152, 2, 1, 4, 15496, 32009, 3, 4, 0),
(17981, 2, 1, 4, 36447, 32026, 3, 4, 0),
(18660, 2, 1, 4, 0, 0, 0, 0, 3),
(18661, 2, 1, 4, 11443, 11876, 3, 4, 0);
DELETE FROM creature_cooldowns WHERE entry IN (16945,17151,17152,17981,18660,18661);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(17152, 15496, 8000, 8000),
(17152, 32009, 14000, 14000),
(17981, 32026, 10000, 10000),
(17981, 36447, 6000, 6000),
(18661, 11443, 30000, 30000),
(18661, 11876, 16000, 16000);

-- BLADE'S EDGE MOUNTAINS
DELETE FROM creature_template_spells WHERE entry IN (16952,19960,19961,19973,19978,19979,19980,20557,21021,21516,21519,22195,22204,22282,22291,23385);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(16952, 2, 1, 4, 15496, 22911, 3, 4, 0),
(19960, 2, 1, 4, 36251, 36253, 3, 4, 0),
(19961, 2, 1, 4, 36208, 36846, 3, 4, 0),
(19973, 2, 1, 4, 12743, 37633, 3, 4, 0),
(19978, 2, 1, 4, 36486, 3, 4, 0, 0),
(19979, 2, 1, 4, 36250, 36825, 3, 4, 0),
(19980, 2, 1, 4, 36405, 36406, 3, 4, 0),
(20557, 2, 1, 4, 22911, 36406, 3, 4, 0),
(21021, 2, 1, 4, 9053, 37844, 3, 4, 0),
(21516, 2, 1, 4, 36398, 37621, 3, 4, 0),
(21519, 2, 1, 4, 15496, 32736, 3, 4, 0),
(22195, 2, 1, 4, 34017, 11980, 3, 4, 0),
(22204, 2, 1, 4, 36248, 34259, 3, 4, 0),
(22282, 2, 1, 4, 8279, 3, 4, 0, 0),
(22291, 2, 1, 4, 32736, 3, 4, 0, 0),
(23385, 2, 1, 4, 0, 0, 0, 0, 3);
DELETE FROM creature_cooldowns WHERE entry IN (16952,19960,19961,19973,19978,19979,19980,20557,21021,21516,21519,22195,22204,22282,22291,23385);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(16952, 15496, 5000, 5000),
(16952, 22911, 25435, 34119),
(19960, 36251, 16356, 19799),
(19960, 36253, 25338, 29141),
(19961, 36208, 8884, 14908),
(19961, 36846, 16183, 19956),
(19973, 37633, 12133, 18910),
(19978, 36486, 25366, 32518),
(19979, 36250, 12000, 12000),
(19979, 36825, 10374, 11327),
(19980, 36405, 8005, 12422),
(19980, 36406, 10784, 11903),
(20557, 22911, 25068, 29755),
(20557, 36406, 10407, 12760),
(21021, 37844, 120000, 120000),
(21516, 36398, 8002, 11555),
(21516, 37621, 10000, 10000),
(21519, 15496, 6071, 7828),
(21519, 32736, 16693, 23664),
(22195, 11980, 25000, 25000),
(22195, 34017, 13000, 13000),
(22204, 34259, 25766, 34111),
(22204, 36248, 10215, 11887),
(22291, 32736, 15108, 23328);

-- NETHERSTORM
DELETE FROM creature_template_spells WHERE entry IN (16943,16944,16948,16949,18858,18859,18860,18869,18870,19738,19852,19853,20141,20215,20285,20326,20394,20404,20685,20800,20801,20929,20930,21923);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(16943, 2, 1, 4, 36255, 38920, 3, 4, 0),
(16944, 2, 1, 4, 3, 4, 0, 0, 0),
(16948, 2, 1, 4, 3, 4, 0, 0, 0),
(16949, 2, 1, 4, 36208, 36825, 3, 4, 0),
(18858, 2, 1, 4, 3, 4, 0, 0, 0),
(18859, 2, 1, 4, 34017, 3, 4, 0, 0),
(18860, 2, 1, 4, 36225, 36844, 3, 4, 0),
(18869, 2, 1, 4, 0, 0, 0, 0, 3),
(18870, 2, 1, 4, 34344, 3, 4, 0, 0),
(19738, 2, 1, 4, 34261, 36205, 3, 4, 0),
(19852, 2, 1, 4, 11981, 30849, 3, 4, 0),
(19853, 2, 1, 4, 35238, 32736, 3, 4, 0),
(20141, 2, 1, 4, 36405, 36406, 3, 4, 0),
(20215, 2, 1, 4, 36039, 20663, 3, 4, 0),
(20285, 2, 1, 4, 36208, 36846, 3, 4, 0),
(20326, 2, 1, 4, 36486, 3, 4, 0, 0),
(20394, 2, 1, 4, 36398, 36414, 3, 4, 0),
(20404, 2, 1, 4, 35147, 3, 4, 0, 0), -- using 35147 instead of 84867
(20685, 2, 1, 4, 35491, 3, 4, 0, 0),
(20800, 2, 1, 4, 34261, 36228, 3, 4, 0),
(20801, 2, 1, 4, 36252, 36253, 3, 4, 0),
(20929, 2, 1, 4, 15496, 3, 4, 0, 0),
(20930, 2, 1, 4, 34017, 36541, 3, 4, 0),
(21923, 2, 1, 4, 15496, 37488, 3, 4, 0);
DELETE FROM creature_cooldowns WHERE entry IN (16943,16944,16948,16949,18858,18859,18860,18869,18870,19738,19852,19853,20141,20215,20285,20326,20394,20404,20685,20800,20801,20929,20930,21923);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(16943, 36255, 15000, 15000),
(16949, 36208, 18000, 18000),
(16949, 36825, 15298, 19779),
(18859, 34017, 10055, 18038),
(18860, 36225, 18626, 19879),
(18870, 22884, 17470, 17470),
(19738, 34261, 16388, 24398),
(19738, 36205, 16166, 17919),
(19852, 11981, 15000, 15000),
(19852, 30849, 19000, 19000),
(19853, 32736, 20000, 20000),
(19853, 35238, 15000, 15000),
(20141, 36405, 15000, 15000),
(20141, 36406, 4573, 8843),
(20215, 20663, 25000, 25000),
(20215, 36039, 25000, 25000),
(20285, 36208, 15000, 15000),
(20285, 36846, 20000, 20000),
(20326, 36486, 15318, 19991),
(20394, 36398, 6516, 11080),
(20404, 35147, 10015, 13413), -- using 35147 instead of 84867
(20685, 35491, 18000, 18000),
(20800, 34261, 16795, 19925),
(20800, 36228, 9075, 11970),
(20801, 36252, 10000, 10000),
(20801, 36253, 9157, 11981),
(20929, 15496, 8853, 9342),
(20930, 34017, 13000, 13000),
(20930, 36541, 25000, 25000),
(21923, 15496, 16000, 16000),
(21923, 37488, 14000, 14000);

-- SHADOWMOON VALLEY
DELETE FROM creature_template_spells WHERE entry IN (19740,19744,19755,19799,19800,19801,19802,20683,21309,21314,21337,21419,21499,21520,21656,21808,21908,21960,21961,22134,22857,22858,22859,22860);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(19740, 2, 1, 4, 3, 4, 0, 0, 0),
(19744, 2, 1, 4, 32736, 11443, 3, 4, 0),
(19755, 2, 1, 4, 37580, 36253, 3, 4, 0),
(19799, 2, 1, 4, 38167, 38166, 3, 4, 0),
(19800, 2, 1, 4, 15968, 3, 4, 0, 0),
(19801, 2, 1, 4, 36227, 3, 4, 0, 0),
(19802, 2, 1, 4, 22120, 15496, 3, 4, 0),
(20683, 2, 1, 4, 37629, 37997, 3, 4, 0),
(21309, 2, 1, 4, 38169, 38048, 3, 4, 0),
(21314, 2, 1, 4, 38154, 15496, 3, 4, 0),
(21337, 2, 1, 4, 5916, 7159, 3, 4, 0),
(21419, 2, 1, 4, 0, 0, 0, 0, 3),
(21499, 2, 1, 4, 35321, 32735, 3, 4, 0),
(21520, 2, 1, 4, 38051, 3, 4, 0, 0),
(21656, 2, 1, 4, 38048, 3, 4, 0, 0),
(21808, 2, 1, 4, 32736, 11977, 3, 4, 0),
(21908, 2, 1, 4, 37488, 31553, 3, 4, 0),
(21960, 2, 1, 4, 0, 0, 0, 0, 3),
(21961, 2, 1, 4, 0, 0, 0, 0, 3),
(22134, 2, 1, 4, 3, 4, 0, 0, 0),
(22857, 2, 1, 4, 15496, 16244, 32009, 3, 4),
(22858, 2, 1, 4, 14873, 37577, 3, 4, 0),
(22859, 2, 1, 4, 9613, 13338, 3, 4, 0),
(22860, 2, 1, 4, 32202, 31865, 3, 4, 0);
DELETE FROM creature_cooldowns WHERE entry IN (19740,19744,19755,19799,19800,19801,19802,20683,21309,21314,21337,21419,21499,21520,21656,21808,21908,21960,21961,22134,22857,22858,22859,22860);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(19744, 11443, 30000, 30000),
(19744, 32736, 9867, 11457),
(19755, 36253, 25543, 29928),
(19755, 37580, 20000, 20000),
(19799, 38166, 30000, 30000),
(19799, 38167, 30000, 30000),
(19800, 15968, 4304, 7646),
(19802, 15496, 6134, 9624),
(19802, 22120, 30000, 30000),
(20683, 37629, 16000, 16000),
(20683, 37997, 16000, 16000),
(21309, 38048, 4314, 5841),
(21309, 38169, 10279, 13608),
(21314, 15496, 9218, 11903),
(21314, 38154, 30000, 30000),
(21499, 32735, 8000, 8000),
(21499, 35321, 16000, 16000),
(21520, 38051, 12024, 15523),
(21656, 38048, 30000, 30000),
(21808, 11977, 20000, 20000),
(21808, 32736, 18000, 18000),
(21908, 31553, 16000, 16000),
(21908, 37488, 30000, 30000),
(22857, 15496, 8000, 8000),
(22857, 16244, 4188, 5875),
(22857, 32009, 14000, 14000),
(22858, 14873, 8000, 8000),
(22858, 37577, 8000, 8000),
(22859, 13338, 30000, 30000),
(22860, 31865, 10000, 10000),
(22860, 32202, 9790, 14120);

-- SHADOW LABS (NORMAL)
-- shadow labyrinth normal.pkt - tool crash revisit

-- SHADOW LABS (HEROIC)
-- shadow labyrinth heroic.pkt - tool crash revisit

-- HELLFIRE RAMPARTS (NORMAL)
DELETE FROM creature_template_spells WHERE entry IN (17540,18056);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(17540, 2, 1, 4, 35748, 3, 4, 0, 0),
(18056, 2, 1, 4, 15785, 3, 4, 0, 0);
DELETE FROM creature_cooldowns WHERE entry IN (17540,18056);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(17540, 35748, 1020, 1805),
(17540, 15785, 6000, 6000);

-- BLOOD FURNACE (NORMAL)
-- revisit - tool crash

-- BLOOD FURNACE (HEROIC)
DELETE FROM creature_template_spells WHERE entry IN (18605,18606,18614,21646);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(18605, 2, 1, 4, 13321, 30849, 3, 4, 0),
(18606, 2, 1, 4, 17290, 16144, 3, 4, 0),
(18614, 2, 1, 4, 32202, 31865, 3, 4, 0),
(21646, 2, 1, 4, 14034, 13341, 3, 4, 0);
DELETE FROM creature_cooldowns WHERE entry IN (18605,18606,18614,21646);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(18605, 13321, 7076, 7983),
(18605, 30849, 6297, 9665),
(18606, 16144, 6000, 6000),
(18606, 17290, 6000, 6000),
(18614, 31865, 10000, 10000),
(18614, 32202, 8464, 12140),
(21646, 13341, 8000, 8000);

-- BOTANICA (NORMAL)
DELETE FROM creature_template_spells WHERE entry IN (19511,19512,19843);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(19511, 2, 1, 4, 34615, 34616, 30621, 3, 4),
(19512, 2, 1, 4, 15284, 34626, 3, 4, 0),
(19843, 2, 1, 4, 34614, 30991, 3, 4, 0);
DELETE FROM creature_cooldowns WHERE entry IN (19511,19512,19843);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(19511, 34615, 3000, 26309);

-- MECHANAR (NORMAL)
DELETE FROM creature_template_spells WHERE entry IN (19712,19713,19716);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(19712, 2, 1, 4, 35047, 35056, 3, 4, 0),
(19713, 2, 1, 4, 35049, 35056, 3, 4, 0),
(19716, 2, 1, 4, 35057, 35062, 3, 4, 0);
DELETE FROM creature_cooldowns WHERE entry IN (19712,19713,19716);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(19712, 35047, 5858, 13238),
(19712, 35056, 23741, 38003),
(19713, 35049, 16469, 19914),
(19713, 35056, 22932, 39920),
(19716, 35062, 60000, 60000);

-- MECHANAR (HEROIC)
DELETE FROM creature_template_spells WHERE entry IN (21531);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(21531, 2, 1, 4, 38925, 35062, 3, 4, 0);
DELETE FROM creature_cooldowns WHERE entry IN (21531);
INSERT INTO creature_cooldowns (Entry, SpellId, CooldownMin, CooldownMax) VALUES
(21531, 35062, 60000, 60000);

