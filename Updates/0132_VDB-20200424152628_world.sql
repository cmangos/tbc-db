-- Add your query below.
-- https://github.com/vmangos/core/commit/dd811ea20339c8dae0d45f9355e5c5850ae3a394

-- Add missing quest greetings from classic sniffs.
REPLACE INTO `questgiver_greeting` (`entry`, `type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES
(10321, 0, '<Emberstrife acknowledges your presence.>', 0, 0),
(11596, 0, 'My business plan never accounted for housing giant kodos... maybe I should have gone into the underwater basket weaving business instead.', 1, 0); -- EmoteId

-- End of migration.

