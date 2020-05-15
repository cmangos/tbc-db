-- Fix quest Decoy! q.8606 not starting the event because the terminate condition ID was incorrect
UPDATE dbscripts_on_event SET datalong=11150 WHERE id=9527 AND delay=0 AND command=34; -- (1150 -> 11150)

