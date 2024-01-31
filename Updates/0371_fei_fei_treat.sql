-- Remove unnecessary buddy from Fei Fei's scripts when turning in q.10919 "Fei Fei's Treat" 
UPDATE dbscripts_on_quest_end SET buddy_entry=0, search_radius=0 WHERE id=10919;
UPDATE dbscripts_on_creature_movement SET buddy_entry=0, search_radius=0 WHERE id IN (2020601,2020602);


