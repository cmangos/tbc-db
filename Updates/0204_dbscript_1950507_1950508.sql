-- Remove dublicate dbscripts https://github.com/cmangos/tbc-db/commit/e2e180d9d6e49ce129af15e7262a23a43e06202d#diff-a4264dbc6cc1d892a3bf3dc42acdf7de
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1950507,1950508);

