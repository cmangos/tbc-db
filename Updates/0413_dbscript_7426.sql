-- Target should not be set when setting facing. 
-- Functionality will be removed from SCRIPT_COMMAND_SET_FACING in core since this is not a thing that happens
UPDATE dbscripts_on_gossip SET data_flags=0 WHERE id=7426 AND command=36;
