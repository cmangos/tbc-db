-- http://www.wowhead.com/npc=23699/kevin-browning#sells
-- Black Coffee (33042) should be sold in stacks of 5 (instead of stacks of 1)
-- sold by NPC 23699
UPDATE item_template SET BuyCount = 5 WHERE entry = 33042;

