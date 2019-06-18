-- Darnassus Civilians

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES
(46560, 0, 0, 0, 27654, 0, 8), -- Mythrin'dir *
(46723, 0, 0, 0, 27654, 0, 8), -- Mydrannul
(48217, 0, 0, 0, 27654, 0, 8), -- Shylenai *
(46346, 0, 0, 0, 27654, 0, 8), -- Fyrenna *
(46905, 0, 0, 0, 27654, 0, 8), -- Jareth Wildwoods *
(46333, 0, 0, 0, 27654, 0, 8), -- Jaeana *
(46569, 0, 0, 0, 27654, 0, 8), -- Andrus *
(46338, 0, 0, 0, 27654, 0, 8), -- Anadyia *
(46576, 0, 0, 0, 27654, 0, 8), -- Cyridan *
(46344, 0, 0, 0, 27654, 0, 8), -- Melea *
(46720, 0, 0, 0, 27654, 0, 8), -- Caynrus (Needs correct equip) *
(46342, 0, 0, 0, 27654, 0, 8), -- Vinasia *
(46345, 0, 0, 0, 27654, 0, 8), -- Dewwhisper *
(46340, 0, 0, 0, 27654, 0, 8), -- Landria *
(46571, 0, 0, 0, 27654, 0, 8), -- Turian *
(46565, 0, 0, 0, 27654, 0, 8), -- Glorandiir *
(46337, 0, 0, 0, 27654, 0, 8), -- Merelyssa *
(46568, 0, 0, 0, 27654, 0, 8), -- Mythidan *
(46564, 0, 0, 0, 27654, 0, 8), -- Kieran *
(46335, 0, 0, 0, 27654, 0, 8), -- Ellandrieth *
(46562, 0, 0, 0, 27654, 0, 8), -- Yldan *
(46412, 0, 0, 0, 27654, 0, 8), -- Ariyell Skyshadow *
(46315, 0, 0, 0, 27654, 0, 8), -- Cylania *
(46329, 0, 0, 0, 27654, 0, 8), -- Shalumon
(46330, 0, 0, 0, 27654, 0, 8), -- Elynna *
(46501, 0, 0, 0, 27654, 0, 8), -- Saenorion *
(46508, 0, 0, 0, 27654, 0, 8), -- Vaean *
(46482, 0, 0, 0, 27654, 0, 8), -- Fyldan *
(46503, 0, 0, 0, 27654, 0, 8), -- Ulthir *
(46326, 0, 0, 0, 27654, 0, 8), -- Dendrythis *
(46477, 0, 0, 0, 27654, 0, 8), -- Cyroen *
(49519, 0, 0, 0, 27654, 0, 8), -- Kyrai *
(46481, 0, 0, 0, 27654, 0, 8), -- Voloren *
(46479, 0, 0, 0, 27654, 0, 8), -- Talaelar *
(49525, 0, 0, 0, 27654, 0, 8), -- Alaindia *
(46471, 0, 0, 0, 27654, 0, 8), -- Chardryn *
(46885, 0, 0, 0, 27654, 0, 8), -- Treshala Fallowbrook *
(46480, 0, 0, 0, 27654, 0, 8), -- Herald Moonstalker
(46898, 0, 0, 0, 27654, 0, 8), -- Sarin Starlight *
(46904, 0, 0, 0, 27654, 0, 8), -- Rellian Greenspyre * (Although wowwiki say added 1.12)
(46802, 0, 0, 0, 27654, 0, 8), -- Lotherias *
(46899, 0, 0, 0, 27654, 0, 8), -- Ellaercia *
(49935, 0, 0, 0, 27654, 0, 8), -- Mathiel *
(49540, 0, 0, 0, 27654, 0, 8), -- Faelyssa *
(49854, 0, 0, 0, 27654, 0, 8), -- Elanaria *
(46816, 0, 0, 0, 27654, 0, 8), -- Crildor *
(46812, 0, 0, 0, 27654, 0, 8), -- Sister Aquinne *
(46353, 0, 0, 0, 27654, 0, 8), -- Greywhisker *
(46238, 0, 0, 0, 27654, 0, 8), -- Gracina Spiritmight *
(46721, 0, 0, 0, 27654, 0, 8), -- Priestess A'moora *
(46348, 0, 0, 0, 27654, 0, 8); -- Thyn'tel Bladeweaver *


-- Adding Gossip option during event and removing outside of event
-- Vendors
-- Shylenai
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=8665;

-- Fyrenna
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4181;

-- Ellandrieth
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4170;

-- Yldan
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4230;

-- Glorandiir
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4232;

-- Merelyssa
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4171;

-- Mythidan
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4233;

-- Kieran
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4231;

-- Jaeana
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4169;

-- Landria
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4173;

-- Turian
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4235;

-- Vinasia
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4175;

-- Dewwhisper
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4180;

-- Melea
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4177;

-- Caynrus
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4240;

-- Cyridan
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4236;

-- Andrus
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4234;

-- Anadyia
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4172;

-- Elynna
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4168;

-- Saenorion
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4225;

-- Mythrin'dir
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4229;

-- Vaean
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4228;

-- Fyldan
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4223;

-- Ulthir
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4226;

-- Kyrai
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=3561;

-- Cyroen
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4220;

-- Ariyell Skyshadow
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4203;

-- Cylania
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4164;

-- Talaelar
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4221;

-- Voloren
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4222;

-- Alaindia
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=3562;

-- Chardryn
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=4216;

-- Dendrythis
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4167;


-- Questgiver
-- Treshala Fallowbrook
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4521;

-- Lotherias
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=6034;

-- Rellian Greenspyre
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=3517;

-- Elanaria
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=4088;

-- Mathiel
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=6142;

-- Sister Aquinne
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=7316;

-- Greywhisker
UPDATE creature_template SET GossipMenuId=12851 WHERE Entry=2912;

-- Gracina Spiritmight
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=7740;

-- Priestess A'moora
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=7313;

-- Thyn'tel Bladewever
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=8026;

-- Non Questgiver/Vendor
-- Jareth Wildwoods
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=11709;

-- Ellaercia
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=5407;

-- Faelyssa
UPDATE creature_template SET GossipMenuId=12852 WHERE Entry=2796;

-- Crildor
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=5782;

-- Sarin Starlight
UPDATE creature_template SET GossipMenuId=12853 WHERE Entry=11700;


-- Sentinel Dalia Sunblade (faction 124), Lysheana, Shalumon, Jenal (specific gossips)


