-- Update Catherine Leland Vendor List
-- using VendorTemplateID (117) for
-- Fishing Pole, Strong Fishing Pole, Shiny Bauble, Nightcrawlers, Bright Baubles, Aquadynamic Fish Attractor
-- npc_vendor for 
-- Recipe: Brilliant Smallfish, Recipe: Rainbow Fin Albacore, Recipe: Bristle Whisker Catfish

DELETE FROM npc_vendor WHERE entry = '5494';
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES 
('5494', '6325', '0', '0', '1', '0', '0', 'Recipe: Brilliant Smallfish'),
('5494', '6368', '0', '0', '2', '0', '0', 'Recipe: Rainbow Fin Albacore'),
('5494', '6330', '0', '0', '3', '0', '0', 'Recipe: Bristle Whisker Catfish');