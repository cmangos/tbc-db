-- Remove status text pertaining to attunement for Black Temple (not needed after Patch 2.4)
UPDATE areatrigger_teleport SET status_failed_text=NULL WHERE id=4598; -- Black Temple (Entrance)


