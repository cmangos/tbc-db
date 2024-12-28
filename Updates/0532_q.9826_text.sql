-- Contact from Dalaran: https://www.wowhead.com/tbc/quest=9826/contact-from-dalaran
-- Resolves https://github.com/cmangos/tbc-db/pull/1237
-- Progress and Completion text were swapped.
UPDATE `quest_template` SET
`OfferRewardText` = 'Alturus entrusted you with this information? That old fool.$B$BI suppose the damage is done, we might as well make use of you. I suppose you will cooperate?',
`RequestItemsText` = 'You know of the Violet Eye? You do not look familiar.'
WHERE `entry` = 9826;

