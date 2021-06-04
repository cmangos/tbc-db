UPDATE creature a SET modelid=0 WHERE id=0 AND EXISTS (select guid from creature_spawn_entry b where a.guid=b.guid and b.entry IN(772,684));


