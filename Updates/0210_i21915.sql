-- Remove incorrect creature drop of Pattern: Ebon Shadowbag i.21915
DELETE FROM creature_loot_template WHERE item=21915; -- Dropped from c.20872, but should only be sold by vendor in Shattrath c.22212

