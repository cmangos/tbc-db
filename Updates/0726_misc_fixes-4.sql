# Enable Imp to autocast Blood Pact while in phase shift, since it can cast while it's in phase shift
# not blizzlike, but skips having to change core for 1 edge case to fix the autocast
UPDATE spell_template SET `AttributesEx6` = '8' WHERE (`Id` = '6307');
UPDATE spell_template SET `AttributesEx6` = '8' WHERE (`Id` = '7804');
UPDATE spell_template SET `AttributesEx6` = '8' WHERE (`Id` = '7805');
UPDATE spell_template SET `AttributesEx6` = '8' WHERE (`Id` = '11766');
UPDATE spell_template SET `AttributesEx6` = '8' WHERE (`Id` = '11767');
UPDATE spell_template SET `AttributesEx6` = '8' WHERE (`Id` = '27268');