-- Correct Text for SAY_COMPLETE_QUEST -1509017, quest 8743 for world event
-- Missing SD implementation
-- Soon you will know the price of your meddling, mortals... The master is nearly whole... And when he rises, your world will be cease!
-- ->
-- Soon you will know the price of your meddling, mortals... The master is nearly whole... And when he rises, your world will cease!
UPDATE `script_texts` SET `content_default` = 'Soon you will know the price of your meddling, mortals... The master is nearly whole... And when he rises, your world will cease!' WHERE `entry` = -1509017;

