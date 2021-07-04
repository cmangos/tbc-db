-- Sage No More, Restorer No More, Champion No More, Defender No More should be repeatable
-- unsure if this is the right way to fix this
UPDATE `quest_template` SET `SpecialFlags` = 1, `PrevQuestId` = 0 WHERE `entry` IN (
11103,
11104,
11105,
11106
);

-- Dont Remove Karazhan / Hyjal Repuation Ring on aborting current reputation standing quest
-- Same as ReqItemId1 but SrcItemId is removed on Quest Abort
UPDATE `quest_template` SET `SrcItemId` = 0, `SrcItemCount` = 0 WHERE `entry` IN (10725,10726,10727,10728,10733,10734,10735,10736,10738,10739,10740,10741); -- Karazhan
UPDATE `quest_template` SET `SrcItemId` = 0, `SrcItemCount` = 0 WHERE `entry` IN (10464,10465,10466,10467,10468,10469,10470,10471,10472,10473,10474,10475); -- Hyjal

