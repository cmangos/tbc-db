DELETE FROM creature_immunities WHERE Entry IN(21515,18259,18258,18257,18290) AND type=1 AND value=137;
INSERT INTO creature_immunities VALUES
('21515', '0', '1', '137'), -- trachela
('18259', '0', '1', '137'), -- banthar
('18258', '0', '1', '137'), -- bachlor
('18257', '0', '1', '137'), -- gutripper
('18290', '0', '1', '137'); -- tusker

