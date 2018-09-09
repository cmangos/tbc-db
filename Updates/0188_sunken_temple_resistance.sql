-- Remove wrong Shadow Resistance from Sunken Temple Dragonkin (Source: Bestiary) (Nature: 200)
UPDATE `creature_template` SET `ResistanceShadow` = 0 WHERE `entry` IN (
5277, -- Nightmare Scalebane
5280, -- Nightmare Wyrmkin
5283, -- Nightmare Wanderer
8319, -- Nightmare Whelp
8497 -- Nightmare Suppressor
);

