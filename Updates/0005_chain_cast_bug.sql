-- spells with cast time should always be in AI to avoid weird bugs
DELETE FROM creature_template_addon WHERE entry IN(20115);

