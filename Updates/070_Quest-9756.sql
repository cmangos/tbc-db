-- ===================================
-- Quest: 9756 "What We Don't Know..."
-- ===================================
UPDATE quest_template SET RequiredRaces='1101' WHERE entry IN (9753,9756,9760,9761); -- Entire Chain is open to All Alliance Players
UPDATE gossip_menu_option SET condition_id='410' WHERE menu_id IN (7531); -- Correct Wrong Condition being used to allow proper Gossip (Used Same Conditions as Initial Required for Gossip)

