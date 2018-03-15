-- https://github.com/TrinityCore/TrinityCore/issues/20903
DELETE FROM `questgiver_greeting` WHERE `entry` IN (264, 344, 392, 900, 2080, 3337, 3339, 3390, 3519, 3567, 3847, 3995, 4049, 5767, 11862);
INSERT INTO `questgiver_greeting` (`entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES
(264, 0, 'At ease, $c. If you are just passing though I suggest you stick to the roads and only travel by day. If your business is here in Darkshire, consider lending your abilities to the Night Watch. Our Skill is unquestionable but our numbers are small.', 0, 0), -- Commander Althea Ebonlocke
(344, 0, 'Redridge is awash in chaos!', 5, 0), -- Magistrate Solomon
(392, 0, 'Do not be alarmed, $r.  I have long since passed from this land but I intend no harm to your kind.  I have witnessed too much death in my time.  My only wish now is for peace.  Perhaps you can help my cause.', 0, 0), -- Captain Grayson
(900, 0, 'What business brings you before the Court of Lakeshire and the Honorable Magistrate Solomon?', 6, 0), -- Bailiff Conacher, only 1 quest though
(2080, 0, 'The creation of Teldrassil was a grand achievement, but now the world must shift to regain its balance.', 1, 0), -- Denalan
(3337, 0, 'The heft of an axe, the battlecry of your allies, the spray of blood in your face. These are the things a warrior craves, $n. I will carve out The Barrens with my sword in the name of the Horde.', 0, 0), -- Kargal Battlescar, only 1 quest though
(3339, 0, 'This had better be good...', 0, 0), -- Captain Thalo'thas Brightsun
(3390, 0, 'The Barrens holds a variety of substances for which we, the apothecaries of Lordaeron may find use.', 1, 1), -- Apothecary Helbrim
(3519, 0, 'I, Arynia Cloudsbreak, have been tasked with protecting the sanctity of the Oracle Grove.', 0, 0), -- Sentinel Arynia Cloudsbreak
(3567, 0, 'Well met, $n. It is good to see that $cs like yourself are taking an active part in protecting the groves.', 1, 0), -- Tallonkai Swiftroot
(3847, 0, 'Ashenvale is a lush forest, brimming with life. It is a pleasure to walk down its secret paths in search of herbs, but one must take care. The forest is not without its dangers.', 0, 0), -- Orendil Broadleaf
(3995, 0, 'The spirits are restless!', 5, 0), -- Witch Doctor Jin'Zil
(4049, 0, 'The spirit of Stonetalon weeps... It weeps from its mountain peaks, to its rivers, to its severed, dying trees.', 0, 0), -- Seereth Stonebreak
(5767, 0, 'Our only hope is to create something good from an already bad situation.', 1, 0), -- Nalpak
(11862, 0, '', 0, 0); -- Tsunaman

-- https://github.com/TrinityCore/TrinityCore/issues/20997
DELETE FROM `questgiver_greeting` WHERE `entry` IN (2216, 2706, 2817, 4046, 4452, 4498, 5412, 5641, 10537);
INSERT INTO `questgiver_greeting` (`entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES
-- valid for TBC?
(2216, 0, 'We are but so close to developing the New Plague that our Dark Lady desires with such fervor.', 0, 0), -- Apothecary Lydon

(2706, 0, 'Thanks to the Warchief, even here in the ruins of our former prison some hope remains, and the Horde rises anew.', 0, 0), -- Tor'gan
(2817, 0, 'You must be hard up to be wandering this Badlands, $c. A hard up like me.$B$BOr maybe you\'re here because you\'re crazy. Crazy, like me.', 0, 0), -- Rigglefuzz
(4046, 0, 'You must listen, young $c.  Listen to the whisperings in the darkness, for they offer guidance in these troubled times.', 1, 0), -- Magatha Grimtotem
(4452, 0, 'Come a little closer.  We have important matters to discuss, you and I.$B$BAnd some of them we don\'t want everyone to hear...', 0, 0), -- Kravel Koalbeard
(4498, 0, 'Greetings, $c.', 0, 0), -- Maurin Bonesplitter
(5412, 0, 'The centaur clans rule the wastes of Desolace. If united, they would be a terrible force. It is then good that the centaur clans are not united but instead bicker and war amongst themselves.', 0, 0), -- Gurda Wildmane
(5641, 0, 'The main threat Thrall wishes dealt with is the Burning Blade---members of the Horde that have given their loyalty to the demons. They seek to practice their dark magic and care little for Thrall\'s visions of the Horde\'s future here in Kalimdor.', 1, 0), -- Takata Steelblade
(10537, 0, 'We cannot take care of all the threats in this area alone. We could use another fighting hand, $n.', 0, 0); -- Cliffwatcher Longhorn

-- https://github.com/TrinityCore/TrinityCore/issues/21547
DELETE FROM `questgiver_greeting` WHERE `entry` IN (1776, 1950, 3441, 4485, 4500, 6986, 7777, 7825, 9536, 5204);
INSERT INTO `questgiver_greeting` (`entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES
(1776, 0, 'We spent so much of our lives in fight, memories of peaceful times grow evermore distant.', 0, 0), -- Magtoor
(1950, 0, 'My brother and I are on a scouting mission, but we are holed up in this farmhouse. The Deathstalkers need your help!', 0, 0), -- Rane Yorick
(3441, 0, 'To hunt a beast, one must know that beast.  One must learn and respect its ways.$B$BTo do otherwise is not to hunt.  To do otherwise is merely to kill.', 0, 0), -- Melor Stonehoof
(4485, 0, 'The days grow long, and still no end to the conflicts of these lands can be seen. It takes no spell caster to know that much. Take up a blade while you can, $c. War can come to our doors at any time, and if I\'m not mistaken, you look to be one who revels in it.', 1, 0), -- Belgrom Rockmaul
(4500, 0, 'Overlord Mok\'Morokk boss. You do what I say.', 0, 0), -- Overlord Mok'Morokk
(7777, 0, '', 0, 0), -- Rok Orhan
(7825, 0, '', 0, 0), -- Oran Snakewrithe
(6986, 0, 'My name is Dran Droffers, and this over here is my dummy son Malton.  If you need salvage, or are looking to sell salvage, then we\'re who you need to be talking to!', 1, 0), -- Dran Droffers
(9536, 0, 'The quest for wealth is the only goal for a respectable goblin.$B$BWell, maybe wealth... and a big, loud death!', 0, 0), -- Maxwort Uberglint
(5204, 0, 'If we are to make our place in this world, then we will do so through study, and through the will to ignore our fading human instincts.', 0, 0); -- Apothecary Zinge


