DELETE FROM `creature` WHERE `guid` IN (96602, 96597, 96601, 96615, 96608, 96606, 96605, 96617, 96609, 96599, 96607, 96613, 96642, 96598, 96614, 96618, 96616);
DELETE FROM `creature_addon` WHERE `guid` IN (96602, 96597, 96601, 96615, 96608, 96606, 96605, 96617, 96609, 96599, 96607, 96613, 96642, 96598, 96614, 96618, 96616);
DELETE FROM `creature_movement` WHERE `Id` IN (96602, 96597, 96601, 96615, 96608, 96606, 96605, 96617, 96609, 96599, 96607, 96613, 96642, 96598, 96614, 96618, 96616);
DELETE FROM `game_event_creature` WHERE `guid` IN (96602, 96597, 96601, 96615, 96608, 96606, 96605, 96617, 96609, 96599, 96607, 96613, 96642, 96598, 96614, 96618, 96616);
DELETE FROM `game_event_creature_data` WHERE `guid` IN (96602, 96597, 96601, 96615, 96608, 96606, 96605, 96617, 96609, 96599, 96607, 96613, 96642, 96598, 96614, 96618, 96616);
DELETE FROM `creature_battleground` WHERE `guid` IN (96602, 96597, 96601, 96615, 96608, 96606, 96605, 96617, 96609, 96599, 96607, 96613, 96642, 96598, 96614, 96618, 96616);
DELETE FROM `creature_linking` WHERE `guid` IN (96602, 96597, 96601, 96615, 96608, 96606, 96605, 96617, 96609, 96599, 96607, 96613, 96642, 96598, 96614, 96618, 96616) OR `master_guid` IN (96602, 96597, 96601, 96615, 96608, 96606, 96605, 96617, 96609, 96599, 96607, 96613, 96642, 96598, 96614, 96618, 96616);;

REPLACE INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`) VALUES
(19216, 2, 1, -1835.490112, 5373.965820, -12.428184, 100, 0),
(19216, 2, 2, -1828.490601, 5361.490234, -12.428184, 100, 0),
(19216, 2, 3, -1807.774414, 5336.074219, -12.428184, 100, 0),
(19216, 2, 4, -1791.943359, 5327.945312, -12.428184, 100, 0),
(19216, 2, 5, -1784.487183, 5325.496582, -12.428184, 100, 0),
(19216, 2, 6, -1776.261, 5327.029, -12.42814, 2.373648, 30000),
(19216, 2, 7, -1782.105, 5328.545, -12.42814, 2.042035, 12000),
(19216, 2, 8, -1772.711, 5337.238, -12.42814, 2.96706, 17000),
(19216, 2, 9, -1776.105, 5327.44, -12.42814, 2.391101, 36000),
(19216, 2, 10, -1776.260010, 5327.029785, -12.428100, 100, 0),
(19216, 2, 11, -1797.437988, 5327.554688, -12.428184, 100, 0),
(19216, 2, 12, -1838.369995, 5373.470215, -12.428100, 100, 0),
(19216, 2, 13, -1853.137, 5424.863, -10.47479, 2.6529, 0);

REPLACE INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`) VALUES
(19216, 1, 1, -1853.137, 5424.863, -10.47479, 5.654867, 30000),
(19216, 1, 2, -1854.598, 5411.998, -12.43531, 5.183628, 54000),
(19216, 1, 3, -1848.775, 5412.809, -12.43532, 4.276057, 12000),
(19216, 1, 4, -1856.307, 5410.265, -12.43532, 100, 0),
(19216, 1, 5, -1859.001, 5406.959, -12.43532, 5.707227, 23000),
(19216, 1, 6, -1853.396, 5409.705, -12.43531, 100, 19000),
(19216, 1, 7, -1849.053, 5415.074, -12.43532, 5.340707, 20000),
(19216, 1, 8, -1854.913, 5412.682, -12.43531, 100, 0),
(19216, 1, 9, -1854.407, 5411.227, -12.43533, 5.183628, 70000),
(19216, 1, 10, -1853.137, 5424.863, -10.47479, 2.6529, 0);

REPLACE INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`) VALUES
(25141, 0, 1, -1784.243, 5318.414, -12.43613, 100, 0),
(25141, 0, 2, -1784.243, 5318.414, -12.43613, 3.682645, 0),
(25141, 0, 3, -1784.243, 5318.414, -12.43613, 3.892084, 73000),
(25141, 0, 4, -1784.243, 5318.414, -12.43613, 2.373648, 7000),
(25141, 0, 5, -1775.837, 5327.271, -12.43613, 100, 0),
(25141, 0, 6, -1775.837, 5327.271, -12.43613, 2.373648, 42000),
(25141, 0, 7, -1785.949, 5325.602, -12.43613, 100, 0),
(25141, 0, 8, -1792.67, 5331.365, -12.43613, 100, 0),
(25141, 0, 9, -1792.67, 5331.365, -12.43613, 0.5934119, 2500),
(25141, 0, 10, -1792.12, 5344.183, -12.43532, 100, 0),
(25141, 0, 11 ,-1792.12, 5344.183, -12.43532, 5.445427, 2500),
(25141, 0, 12 ,-1781.29, 5343.911, -12.43531, 100, 2500),
(25141, 0, 13 ,-1771.172, 5334.041, -12.43531, 100, 0), 
(25141, 0, 14 ,-1776.221, 5326.206, -12.43613, 100, 0),
(25141, 0, 15 ,-1776.221, 5326.206, -12.43613, 2.356194, 30000),
(25141, 0, 16 ,-1787.241, 5327.917, -12.43613, 100, 0),
(25141, 0, 17 ,-1791.911, 5331.917, -12.43613, 100, 3500),
(25141, 0, 18 ,-1789.994, 5342.385, -12.43532, 100, 3500),
(25141, 0, 19 ,-1780.449, 5343.248, -12.43531, 100, 3500),
(25141, 0, 20 ,-1775.904, 5327.735, -12.43613, 100, 0),
(25141, 0, 21 ,-1777.184, 5329.311, -12.43613, 100, 3000),
(25141, 0, 22 ,-1781.176, 5331.267, -12.43613, 100, 5000),
(25141, 0, 23 ,-1775.633, 5329.525, -12.43613, 100, 0),
(25141, 0, 24 ,-1775.633, 5329.525, -12.43613, 2.373648, 24000),
(25141, 0, 25 ,-1768.048, 5337.641, -12.43531, 100, 81000),
(25141, 0, 26 ,-1768.048, 5337.641, -12.43531, 3.752458, 17000),
(25141, 0, 27 ,-1768.048, 5337.641, -12.43531, 2.373648, 10000),
(25141, 0, 28 ,-1784.243, 5318.414, -12.43613, 100, 0),
(25141, 0, 29 ,-1784.243, 5318.414, -12.43613, 3.682645, 0),
(25141, 0, 30 ,-1784.243, 5318.414, -12.43613, 3.892084, 105000),
(25141, 0, 31 ,-1815.125, 5338.09, -12.43531, 100, 0),
(25141, 0, 32 ,-1831.908, 5365.892, -12.43532, 100, 0),
(25141, 0, 33 ,-1838.274, 5381.49, -12.43531, 100, 0),
(25141, 0, 34 ,-1844.184, 5401.22, -12.43532, 100, 0),
(25141, 0, 35 ,-1850.97, 5423.331, -10.80409, 100, 0),
(25141, 0, 36 ,-1850.97, 5423.331, -10.80409, 2.792527, 37000),
(25141, 0, 37 ,-1850.38, 5406.983, -12.43532, 2.181662, 228000),
(25141, 0, 38 ,-1822.661, 5348.983, -12.43531, 100, 0),
(25141, 0, 39 ,-1801.548, 5331.875, -12.43613, 100, 0);

UPDATE `creature` SET `MovementType`=2 WHERE `id`=25141;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=25141;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` LIKE "25141%" OR `id` LIKE "19216%";

REPLACE INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `comments`) VALUES
(2514103, 73000, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele summons recruits"),
(2514103, 73000, 35, 9, 0, 1, 0, 0, 4, 0, "Commander Steele summons recruits"),
(2514104, 22000, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514104, 22000, 35, 5, 20, 66, 0, 0, 0, 0, "Commander Steele makes recruits salute"),
(2514104, 39000, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514104, 39000, 35, 6, 20, 1, 0, 0, 0, 0, "Commander Steele makes recruits turn 90° Clockwise"),
(2514104, 45000, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514104, 45000, 35, 6, 20, 2, 0, 0, 0, 0, "Commander Steele makes recruits turn 90° Clockwise"),
(2514104, 51000, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514104, 51000, 35, 6, 20, 0, 0, 0, 0, 0, "Commander Steele makes recruits turn 180° Clockwise"),
(2514109, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514109, 0, 35, 6, 20, 2, 0, 0, 0, 0, "Commander Steele makes recruits turn 180° Counter-Clockwise"),
(2514111, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514111, 0, 35, 6, 20, 3, 0, 0, 0, 0, "Commander Steele makes recruits turn 90° Clockwise"),
(2514112, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514112, 0, 35, 6, 20, 1, 0, 0, 0, 0, "Commander Steele makes recruits turn 180° Counter-Clockwise"),
(2514115, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514115, 0, 35, 6, 20, 0, 0, 0, 0, 0, "Commander Steele makes recruits turn 90° Counter-Clockwise"),
(2514115, 27000, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514115, 27000, 35, 5, 20, 36, 0, 0, 0, 0, "Commander Steele makes recruits attack"),
(2514115, 29000, 35, 5, 20, 43, 0, 0, 0, 0, "Commander Steele makes recruits block"),
(2514115, 32000, 35, 5, 20, 60, 0, 0, 0, 0, "Commander Steele makes recruits kick"),
(2514117, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514117, 0, 35, 5, 20, 36, 0, 0, 0, 0, "Commander Steele makes recruits attack"),
(2514118, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514118, 0, 35, 5, 20, 60, 0, 0, 0, 0, "Commander Steele makes recruits kick"),
(2514118, 0, 20, 2, 2, 0, 19216, 150, 7, 0, "Almonen starts moving to the recruit-event"),
(2514119, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514119, 0, 35, 5, 20, 43, 0, 0, 0, 0, "Commander Steele makes recruits block"),
(2514121, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514121, 0, 35, 5, 20, 36, 0, 0, 0, 0, "Commander Steele makes recruits attack"),
(2514122, 0, 1, 22, 0, 0, 0, 0, 4, 0, "Commander Steele shouts at recruits"),
(2514122, 0, 35, 5, 20, 60, 0, 0, 0, 0, "Commander Steele makes recruits kick"),
(2514124, 4000, 1, 253, 0, 0, 0, 0, 4, 0, "Commander Steele applauds"),
(2514124, 6000, 35, 5, 20, 66, 0, 0, 0, 0, "Commander Steele makes recruits salute"),
(2514124, 6000, 1, 30, 0, 0, 0, 0, 4, 0, "Commander Steele stops applauding"),
(2514125, 0, 28, 8, 0, 0, 0, 0, 4, 0, "Commander Steele kneels at Almonen's speech"),
(2514126, 0, 28, 0, 0, 0, 0, 0, 4, 0, "Commander Steele stands up"),
(2514126, 0, 1, 253, 0, 0, 0, 0, 4, 0, "Commander Steele applauds"),
(2514126, 9000, 1, 30, 0, 0, 0, 0, 4, 0, "Commander Steele stops applauding"),
(2514127, 0, 0, 0, 0, 0, 0, 0, 4, 16448, "Listen up Men!"),
(2514127, 4000, 0, 0, 0, 0, 0, 0, 4, 16449, "Your training is now complete. You each have your assignments. May the Light guide you."),
(2514127, 9900, 35, 5, 25, 30, 0, 0, 0, 0, "Recruits stop applauding"),
(2514127, 10000, 0, 0, 0, 0, 0, 0, 4, 16446, "Troops! Fall out!"),
(2514127, 10000, 35, 9, 0, 0, 0, 0, 4, 0, "Commander Steele sends off recruits"),
(2514130, 0, 1, 2, 0, 0, 0, 0, 4, 0, "Commander Steele bows to Lord Torvos"),
(2514130, 3000, 0, 0, 0, 0, 0, 0, 4, 16401, "DIALOGUE-REPLACEME - 16401"),
(2514130, 8000, 0, 0, 0, 0, 25140, 5, 7, 16406, "->Guessed Torvos response<-"),
(2514130, 15000, 0, 0, 0, 0, 25140, 5, 7, 16407, "->Guessed Torvos response<-"),
(2514130, 22000, 0, 0, 0, 0, 0, 0, 4, 16403, "DIALOGUE-REPLACEME - 16403"),
(2514130, 28000, 0, 0, 0, 0, 0, 0, 4, 16404, "DIALOGUE-REPLACEME - 16404"),
(2514130, 38000, 0, 0, 0, 0, 19202, 5, 7, 16412, "DIALOGUE-REPLACEME(Mordin's response) 16412"),
(2514130, 38000, 35, 9, 5, 0, 19202, 5, 7, 0, "Make Mordin face Steele"),
(2514130, 42000, 0, 0, 0, 0, 25140, 5, 7, 16408, "->Guessed Torvos response<-"),
(2514130, 46000, 35, 10, 5, 0, 25140, 5, 7, 0, "Make Mordin face Torvos"),
(2514130, 51000, 0, 0, 0, 0, 25140, 5, 7, 16409, "->Guessed Torvos response<-"),
(2514130, 59000, 0, 0, 0, 0, 25140, 5, 7, 16410, "->Guessed Torvos response<-"),
(2514130, 66000, 0, 0, 0, 0, 19202, 5, 7, 16413, "DIALOGUE-REPLACEME(Mordin's response) 16413"),
(2514130, 67000, 35, 11, 5, 0, 19202, 5, 7, 0, "Reset Mordin Orientation"),
(2514130, 81000, 0, 0, 0, 0, 0, 0, 4, 16405, "DIALOGUE-REPLACEME - 16405"),
(2514130, 96000, 0, 0, 0, 0, 25140, 5, 7, 16411, "->Guessed Torvos response<-"),
(2514130, 100000, 1, 2, 0, 0, 0, 0, 4, 0, "Commander Steele bows to Lord Torvos"),
(2514136, 0, 20, 2, 1, 0, 19216, 10, 7, 0, "Commander Steele talks to Almonen and starts Sermon event"),
(2514136, 0, 0, 0, 0, 0, 0, 0, 4, 16725, "Thank you for speaking to the men, Almonen. They'll be better for it."),
(2514136, 31000, 0, 0, 0, 0, 0, 0, 4, 16726, "It would be an honor, Grand Anchorite."),
(2514137, 35000, 28, 1, 0, 0, 0, 0, 4, 0, "Commander Steele sits down"),
(2514137, 215000, 28, 0, 0, 0, 0, 0, 4, 0, "Commander Steele stands up"),
(2514137, 222000, 0, 0, 0, 0, 0, 0, 4, 16779, "May it be as you say, Grand Anchorite.");

REPLACE INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `comments`) VALUES
(1921651, 8000, 0, 0, 0, 0, 0, 0, 4, 16733, "Your thanks are unnecessary, my friend. I consider it a privilege to speak to your recruits."),
(1921651, 17000, 0, 0, 0, 0, 0, 0, 4, 16734, "A'dal has opened my mind to truths that I am to impart to our patrons today."),
(1921651, 26000, 0, 0, 0, 0, 0, 0, 4, 16745, "You are welcome to remain in attendance."),
(1921652, 0, 35, 10, 100, 0, 0, 0, 0, 0, "Summon Shattered Sun members to sermon"),
(1921652, 0, 0, 0, 0, 0, 0, 0, 4, 16735, "Friends, it is my great pleasure to welcome you to the temple today."),
(1921652, 9000, 0, 0, 0, 0, 0, 0, 4, 16740, "A'dal has been most generous in his revelations to me, a humble servant of the Light."),
(1921652, 17000, 0, 0, 0, 0, 0, 0, 4, 16741, "In accordance with my divine calling, I must share these revealed truths to all who would hear."),
(1921652, 43000, 0, 0, 0, 0, 0, 0, 4, 16742, "It has been made known to me that inside each of us, the Light resides..."),
(1921652, 54000, 0, 0, 0, 0, 0, 0, 4, 16743, "...that it is a gift, given freely to all naturally born beings."),
(1921653, 4000, 0, 0, 0, 0, 0, 0, 4, 16752, "It manifests itself as a feeling, small at first and easily ignored, that confirms truths and subtly prods one to do good."),
(1921655, 0, 0, 0, 0, 0, 0, 0, 4, 16753, "Simple kindnesses, charitable deeds, service to those in need. These are all fruits of the Light."),
(1921655, 8000, 0, 0, 0, 0, 0, 0, 4, 16754, "It rewards those who heed its promptings with blessings, both seen and unseen."),
(1921655, 16000, 0, 0, 0, 0, 0, 0, 4, 16755, "Personal reservoirs of hope and faith are strengthened, and one's capacity for greater light increases."),
(1921656, 0, 0, 0, 0, 0, 0, 0, 4, 16756, "Over the course of time, through obedience to the Light's guidance, one becomes more sensitive to its voice, and its power."),
(1921656, 11000, 0, 0, 0, 0, 0, 0, 4, 16757, "Great is the healing and blessing power of the Light's most diligent followers."),
(1921656, 19000, 0, 0, 0, 0, 0, 0, 4, 16761, "Sadly, there are those who wander through mortality in defiance of the Light."),
(1921657, 4000, 0, 0, 0, 0, 0, 0, 4, 16762, "From these the Light withdraws, until only darkness remains."),
(1921657, 15000, 0, 0, 0, 0, 0, 0, 4, 16763, "Where there is no light, despair, loathing and rage thrive."),
(1921659, 0, 0, 0, 0, 0, 0, 0, 4, 16764, "We are born into a perilous age, where the forces of darkness are determined to bring about our destruction."),
(1921659, 11000, 0, 0, 0, 0, 0, 0, 4, 16765, "These are the times to find yourselves in unison with the Light."),
(1921659, 17000, 0, 0, 0, 0, 0, 0, 4, 16766, "Hear my words, and let the Light inside of you confirm the truth of them."),
(1921659, 28000, 0, 0, 0, 0, 0, 0, 4, 16775, "Embrace the light that is in you, my friends! Deny yourself all darkness..."),
(1921659, 39000, 0, 0, 0, 0, 0, 0, 4, 16776, "We must endure these trying times faithfully, and one day we will find ourselves victorious."),
(1921659, 49000, 0, 0, 0, 0, 0, 0, 4, 16778, "By the naaru, may it be so."),
(1921659, 49000, 35, 8, 50, 11, 0, 0, 0, 0, "Dismiss the Shattered Sun members"),
(1921605, 1000, 35, 5, 20, 68, 0, 0, 0, 0, "Make recruits kneel"),
(1921605, 0, 0, 0, 0, 0, 25141, 10, 7, 16294, "We are graced to hear from our revered Grand Anchorite Almonen. Take a knee men."),
(1921606, 8000, 0, 0, 0, 0, 0, 0, 4, 16299, "I have been observing your training, my young brothers and sisters."),
(1921606, 15000, 0, 0, 0, 0, 0, 0, 4, 16300, "I've not seen a more well-trained group of soldiers in all my years."),
(1921606, 22000, 0, 0, 0, 0, 0, 0, 4, 16301, "The time has now come for you to face our enemies on the field of battle. As I speak our brothers and sisters fight to fend off the forces of Kil'jaeden on the isle of Quel'Danas."),
(1921607, 0, 0, 0, 0, 0, 0, 0, 4, 16303, "As you all well know, the path of our people has not been an enviable one. Blood elf and draenei alike have been tested."),
(1921607, 6000, 0, 0, 0, 0, 0, 0, 4, 16305, "Conflict and strife have been our constant companions for as long as any of us can remember."),
(1921608, 0, 0, 0, 0, 0, 0, 0, 4, 16306, "For countless years, and across the faces of many worlds, draenei have yearned to better embrace the Light and put an end to the darkness. So too have our Scryer brethren held such ambition."),
(1921608, 9000, 0, 0, 0, 0, 0, 0, 4, 16308, "At last my noble brothers and sisters, our time is at hand!"),
(1921609, 0, 0, 0, 0, 0, 0, 0, 4, 16309, "A moment ago, you knelt as recruits..."),
(1921609, 5000, 0, 0, 0, 0, 0, 0, 4, 16310, "Now, with my blessing, you arise as true sons of the Light!"),
(1921609, 8000, 35, 5, 20, 26, 0, 0, 0, 0, "Recruits stand up again"),
(1921609, 10000, 35, 5, 20, 253, 0, 0, 0, 0, "Recruits begin applauding"),
(1921609, 12000, 0, 0, 0, 0, 0, 0, 4, 16311, "Go forth my brothers, and may your light pierce the darkness! The Deceiver must be brought to justice!"),
(1921660, 0, 20, 0, 0, 0, 0, 0, 4, 0, "Grand Anchorite Almonen reaches his final waypoint and waits for reactivation"),
(1921613, 0, 20, 0, 0, 0, 0, 0, 4, 0, "Grand Anchorite Almonen reaches his final waypoint and waits for reactivation");

UPDATE `creature_movement_template` SET `ScriptId`=2514103 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=3;
UPDATE `creature_movement_template` SET `ScriptId`=2514104 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=4;
UPDATE `creature_movement_template` SET `ScriptId`=2514109 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=9;
UPDATE `creature_movement_template` SET `ScriptId`=2514111 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=11;
UPDATE `creature_movement_template` SET `ScriptId`=2514112 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=12;
UPDATE `creature_movement_template` SET `ScriptId`=2514115 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=15;
UPDATE `creature_movement_template` SET `ScriptId`=2514117 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=17;
UPDATE `creature_movement_template` SET `ScriptId`=2514118 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=18;
UPDATE `creature_movement_template` SET `ScriptId`=2514119 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=19;
UPDATE `creature_movement_template` SET `ScriptId`=2514121 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=21;
UPDATE `creature_movement_template` SET `ScriptId`=2514122 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=22;
UPDATE `creature_movement_template` SET `ScriptId`=2514124 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=24;
UPDATE `creature_movement_template` SET `ScriptId`=2514125 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=25;
UPDATE `creature_movement_template` SET `ScriptId`=2514126 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=26;
UPDATE `creature_movement_template` SET `ScriptId`=2514127 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=27;
UPDATE `creature_movement_template` SET `ScriptId`=2514130 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=30;
UPDATE `creature_movement_template` SET `ScriptId`=2514136 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=36;
UPDATE `creature_movement_template` SET `ScriptId`=2514137 WHERE `Entry`=25141 AND `PathId`=0 AND `Point`=37;
UPDATE `creature_movement_template` SET `ScriptId`=1921605 WHERE `Entry`=19216 AND `PathId`=2 AND `Point`=5;
UPDATE `creature_movement_template` SET `ScriptId`=1921606 WHERE `Entry`=19216 AND `PathId`=2 AND `Point`=6;
UPDATE `creature_movement_template` SET `ScriptId`=1921607 WHERE `Entry`=19216 AND `PathId`=2 AND `Point`=7;
UPDATE `creature_movement_template` SET `ScriptId`=1921608 WHERE `Entry`=19216 AND `PathId`=2 AND `Point`=8;
UPDATE `creature_movement_template` SET `ScriptId`=1921609 WHERE `Entry`=19216 AND `PathId`=2 AND `Point`=9;
UPDATE `creature_movement_template` SET `ScriptId`=1921613 WHERE `Entry`=19216 AND `PathId`=2 AND `Point`=13;
UPDATE `creature_movement_template` SET `ScriptId`=1921651 WHERE `Entry`=19216 AND `PathId`=1 AND `Point`=1;
UPDATE `creature_movement_template` SET `ScriptId`=1921652 WHERE `Entry`=19216 AND `PathId`=1 AND `Point`=2;
UPDATE `creature_movement_template` SET `ScriptId`=1921653 WHERE `Entry`=19216 AND `PathId`=1 AND `Point`=3;
UPDATE `creature_movement_template` SET `ScriptId`=1921655 WHERE `Entry`=19216 AND `PathId`=1 AND `Point`=5;
UPDATE `creature_movement_template` SET `ScriptId`=1921656 WHERE `Entry`=19216 AND `PathId`=1 AND `Point`=6;
UPDATE `creature_movement_template` SET `ScriptId`=1921657 WHERE `Entry`=19216 AND `PathId`=1 AND `Point`=7;
UPDATE `creature_movement_template` SET `ScriptId`=1921659 WHERE `Entry`=19216 AND `PathId`=1 AND `Point`=9;
UPDATE `creature_movement_template` SET `ScriptId`=1921660 WHERE `Entry`=19216 AND `PathId`=1 AND `Point`=10;

REPLACE INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(96648, 1, -1819.389, 5436.759, -12.43534, 100, 0, 0),
(96648, 2, -1831.606, 5411.151, -12.43531, 2.932153, 200000, 2515503),
(96648, 3, -1834.485, 5458.763, -12.43533, 100, 0, 0),
(96648, 4, -1825.178, 5457.934, -12.43541, 3.874631, 0, 2515504);

REPLACE INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(96637, 1, -1883.249, 5408.296, -12.43531, 100, 0, 0),
(96637, 2, -1866.127, 5392.317, -12.43531, 100, 0, 0),
(96637, 3, -1847.756, 5391.493, -12.43532, 1.989675, 200000, 2514203),
(96637, 4, -1889.34, 5400.207, -12.4353, 100, 0, 0),
(96637, 5, -1903.966, 5427.564, -12.43531, 2.70526, 0, 2514204);

REPLACE INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(96649, 1, -1886.105, 5417.079, -12.43526, 100, 0, 0),
(96649, 2, -1874.861, 5409.141, -12.43531, 100, 0, 0),
(96649, 3, -1850.414, 5396.335, -12.43532, 1.605703, 200000, 2515503),
(96649, 4, -1874.445, 5400.956, -12.43529, 100, 0, 0),
(96649, 5, -1891.309, 5410.283, -12.43536, 100, 0, 0),
(96649, 6, -1904.824, 5431.208, -12.43535, 4.29351, 0, 2515504);

REPLACE INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(96643, 1, -1877.482, 5405.594, -12.43532, 100, 0, 0),
(96643, 2, -1859.229, 5398.46, -12.43532, 100, 0, 0),
(96643, 3, -1854.024, 5397.471, -12.43532, 1.361357, 200000, 2515303),
(96643, 4, -1891.164, 5408.998, -12.43535, 100, 0, 0),
(96643, 5, -1907.754, 5428.675, -12.43533, 6.056293, 0, 2515304);

REPLACE INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(96651, 1, -1889.252, 5429.76, -12.43529, 100, 0, 0),
(96651, 2, -1876.924, 5410.979, -12.43533, 100, 0, 0),
(96651, 3, -1867.056, 5404.374, -12.43531, 0.1919862, 200000, 2515503),
(96651, 4, -1887.452, 5418.796, -12.43524, 100, 0, 0),
(96651, 5, -1896.349, 5435.33, -12.43531, 100, 0, 0),
(96651, 6, -1895.296, 5461.377, -12.43531, 0.5585054, 0, 2515504);

REPLACE INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(96647, 1, -1858.028, 5454.61, -12.43532, 100, 0, 0),
(96647, 2, -1846.079, 5443.898, -12.43532, 100, 0, 0),
(96647, 3, -1841.025, 5424.756, -12.43528, 100, 0, 0),
(96647, 4, -1842.968, 5417.011, -12.43532, 3.543018, 200000, 2515503),
(96647, 5, -1841.622, 5438.077, -12.43525, 100, 0, 0),
(96647, 6, -1853.325, 5453.975, -12.4353, 100, 0, 0),
(96647, 7, -1860.869, 5459.371, -12.43532, 100, 0, 0),
(96647, 8, -1891.7, 5463.4, -12.43532, 2.827433, 0, 2515504);

REPLACE INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(96644, 1, -1878.119, 5469.517, -12.43531, 100, 0, 0),
(96644, 2, -1860.02, 5459.855, -12.43532, 100, 0, 0),
(96644, 3, -1846.98, 5449.573, -12.43529, 100, 0, 0),
(96644, 4, -1838.544, 5426.404, -12.4353, 100, 0, 0),
(96644, 5, -1847.777, 5399.079, -12.43531, 1.919862, 200000, 2515303),
(96644, 6, -1874.764, 5407.823, -12.43531, 100, 0, 0),
(96644, 7, -1887.635, 5428.669, -12.4353, 100, 0, 0),
(96644, 8, -1894.721, 5465.174, -12.43532, 4.869469, 0, 2515304);

UPDATE `creature_template` SET `InhabitType`=3 WHERE `Entry` IN(25141, 25142, 25153, 25155, 19216);

REPLACE INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `comments`) VALUES
(2514203, 2000, 28, 1, 0, 0, 0, 0, 4, 0, "Sit down for sermon"),
(2515303, 2000, 28, 1, 0, 0, 0, 0, 4, 0, "Sit down for sermon"),
(2515503, 2000, 28, 1, 0, 0, 0, 0, 4, 0, "Sit down for sermon"),
(2514203, 195000, 0, 0, 0, 0, 0, 0, 4, 16780, "May it be so."),
(2515303, 195000, 0, 0, 0, 0, 0, 0, 4, 16780, "May it be so."),
(2515503, 195000, 0, 0, 0, 0, 0, 0, 4, 16780, "May it be so."),
(2514203, 197000, 28, 0, 0, 0, 0, 0, 4, 0, "Stand up after sermon"),
(2515303, 197000, 28, 0, 0, 0, 0, 0, 4, 0, "Stand up after sermon"),
(2515503, 197000, 28, 0, 0, 0, 0, 0, 4, 0, "Stand up after sermon"),
(2514204, 0, 35, 11, 0, 0, 0, 0, 4, 0, "Set Phase to 0"),
(2515304, 0, 35, 11, 0, 0, 0, 0, 4, 0, "Set Phase to 0"),
(2515504, 0, 35, 11, 0, 0, 0, 0, 4, 0, "Set Phase to 0"),
(2514204, 0, 20, 0, 0, 0, 0, 0, 4, 0, "Reached spawnpoint and waits for reactivation"),
(2515304, 0, 20, 0, 0, 0, 0, 0, 4, 0, "Reached spawnpoint and waits for reactivation"),
(2515504, 0, 20, 0, 0, 0, 0, 0, 4, 0, "Reached spawnpoint and waits for reactivation");