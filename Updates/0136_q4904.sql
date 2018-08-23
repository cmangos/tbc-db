-- Fix q.4904 'Free at Last' being auto-completed
UPDATE quest_template SET SpecialFlags=2 WHERE entry=4904;

