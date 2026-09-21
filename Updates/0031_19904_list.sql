-- Apply Correct SpellList for Wastewalker Worker (Heroic) 19904
-- https://github.com/cmangos/tbc-db/commit/02512e1695e5158449d4201e6b524cec932b6a0c#diff-8001d5d7f0af5be7b7debcc4ab43cb9795dfabc31f059276c080feb42a5a4334R191
UPDATE `creature_template` SET `SpellList` = 1990401 WHERE `entry` = 19904;

