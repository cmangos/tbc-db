-- There is not failed text for this area trigger as proven in DBC. Thanks @ratkosrb for pointing out.
-- https://github.com/cmangos/classic-db/commit/4ad219fca0f5176fe844a0ffd86a1002d0effe14
UPDATE areatrigger_teleport SET status_failed_text=NULL WHERE id=3529;

