-- Fix i.11828 'Schematic: Pet Bombling' not teaching s.15628 'Pet Bombling' like intended
UPDATE item_template SET spellid_1=483, spellid_2=15628, spelltrigger_2=6 WHERE entry=11828;
