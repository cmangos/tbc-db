ALTER TABLE creature_template ADD COLUMN CorpseDecay INT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Time before corpse despawns' AFTER VisibilityDistanceType;

-- dragonmaw transporter - needs to respawn very quickly
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00100000 WHERE entry IN(23188);

