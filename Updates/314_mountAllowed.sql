ALTER TABLE instance_template
ADD COLUMN mountAllowed tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER ScriptName;

UPDATE instance_template SET mountAllowed = 1 WHERE map IN
(
    36, 209, 269, 309, 509, 534, 560, 564, 568, 580
);


