-- Delete static creatures that should be spawned by q.10544 script (see https://github.com/cmangos/tbc-db/commit/ba8404049efe727912d9dcc5610aea573004f049)
DELETE FROM creature WHERE id=21446; -- Bladespire Evil Spirit
DELETE FROM creature WHERE id=21452; -- Bloodmaul Evil Spirit

