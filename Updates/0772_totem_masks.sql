-- masks for Totem of ancestral guidance and Totem of the void
DELETE FROM spell_affect WHERE entry IN(34230,41040);
INSERT INTO spell_affect VALUES
(34230,0,0x0000000000000003),
(41040,0,0x0000000000000003);

