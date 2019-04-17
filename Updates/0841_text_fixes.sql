DELETE FROM `questgiver_greeting` WHERE `Entry`=2546;
INSERT INTO `questgiver_greeting` (`Entry`, `Type`, `Text`, `EmoteId`, `EmoteDelay`) VALUES
('2546', '0', 'Yarrr... ye best not be trifling with my time, matey!', '0', '0');

-- https://github.com/TrinityCore/TrinityCore/commit/9cbacb56da20b4242d6acd65c4a1babfec4e8158
UPDATE `quest_template` SET `RequestItemsText`= 'You have something for me, $N?$b$b' WHERE `entry` IN (8496,8810);

-- https://github.com/TrinityCore/TrinityCore/commit/20fe8cad9427a9769eb8f0e7d378919869f05cf9
-- they -> the
UPDATE `quest_template` SET `OfferRewardText`= "Yes, $C, the High Executor mentioned you might be the one to trust in the matter of the key. I've dedicated a fair portion of my recent studies to the Scholomance, and I believe I know a means by which you can acquire one that will let you past the front door at will.$b$bThis task will not be easy, but such tasks seldom are. You most assuredly look like the type to know this as fact." WHERE `entry` = 838;

-- https://github.com/TrinityCore/TrinityCore/commit/b0eb42d05b25ce34a64ea32a171b6a6b9c073f70
-- 10972 - Ethereum Prisoner I.D. Catalogue
UPDATE `quest_template` SET `RequestItemsText`="I am in need of more I.D. tags, $N. What I've discovered thus far is that this is not just a way to catalogue prisoners but it also documents locations!$B$BOnce this code is broken we'll be able to pinpoint exactly where all of our allies are held and free them with minimal hostile action received." WHERE `entry` = 10972;
-- 10977 - Stasis Chambers of the Mana-Tombs
UPDATE `quest_template` SET `RequestItemsText`="I would understand if you chose not to continue, $N." WHERE `entry` = 10977;

-- https://github.com/TrinityCore/TrinityCore/commit/33f61bd57ef942c4d2d79d5ed018d70ec564461b
UPDATE `quest_template` SET `OfferRewardText`="To'gun was here earlier giving me his report. He should have stayed with you to help!$B$BI sent him back out there to assist Grik'tha. I think they make a cute couple.$B$BSo, these are the soul devices that the Shadow Council were using to enhance their summoning power? They look dangerous to me - maybe the Scryers will know what to do with them?$B$BPlease, take one of these as a reward for crippling the Shadow Council's operation in the labyrinth." WHERE `entry`=10091;

-- https://github.com/TrinityCore/TrinityCore/commit/e70531bc2ec218985475ae4b43bfbdddf944690e
UPDATE `quest_template` SET `OfferRewardEmote1`=1, `OfferRewardText`="A young $c, I see. Yes, I can bestow you with the skills you need to train and guide your pet. Not only will you be able to teach your pet new abilities, you will now be able to feed your pet, as well as revive it, should it fall in battle.$B$BNow, go forth. May the Earthmother guide you on your path. We shall speak again, at a later date." WHERE `entry`=6089;

-- https://github.com/TrinityCore/TrinityCore/commit/3bf33d1987aa36bf5e2436b354a7b0433289757b
UPDATE `quest_template` SET `OfferRewardText`="Do not distress the bewilderment shown by those you have helped. It is common for those recently brought back to the world of the living to experience disorientation, but imagine the shock of meeting with a strange being at the same time.$B$BThe young shaman is blessed to have survived such a harsh lesson thanks to you, and it is befitting you be allowed to call upon this power as you see fit." WHERE `entry`=9600;

-- https://github.com/TrinityCore/TrinityCore/commit/f6a4065f5ec0d5f263e31b080a395a98ee31ec4f
-- Put "claw" instead of "head" in the Progress gossip of quest 6162, A Husband's Last Battle
UPDATE `quest_template` SET `RequestItemsText` = "Do you have the beast's claw yet, $N? It will pay for its crimes. I don't care if it's corrupt or just angry for living in such a dismal forest. No furbolg will live for long committing such crimes against my family!" WHERE `entry`=6162;

-- https://github.com/TrinityCore/TrinityCore/commit/60e6f2ba901ef3441667505196c5fc68c282ab09
-- Show the complete text for page 11 in the book 'Legacy of the Aspects'
UPDATE `page_text` SET `next_page` = 466 WHERE `next_page` = 459 AND `entry` = 458;

-- https://github.com/TrinityCore/TrinityCore/commit/446ea121271c77407429368e5491a84eef7fc19b
-- 'Clues in the Thicket' (Quest ID 9971) RewardText typo (Is it was/Is it what)
UPDATE `quest_template` SET `OfferRewardText`="So, I was right.  That was the corpse of one of the Broken?  And you can confirm that there was a strange object on the ground next to him?$B$BThis doesn't make any sense.  What would one of the Broken be doing here?  And what is that thing it had with him?$B$BIs it what caused all of this death?" WHERE `entry`=9971;
-- `An Unseen Hand` (Quest ID 10013) RewardText typo (2x "it to me")
UPDATE `quest_template` SET `OfferRewardText`="<Rokag takes the plans from you and looks them over.>$B$BSo Kaide was right! Those fel orc scum are up to something. I never would've guessed they were colluding with the blood elves, though.$B$BAccording to this map, the fel orcs are to keep us busy... but why? This is disturbing news, $N. You were correct in bringing it to me right away." WHERE `entry` = 10013;
-- 'Evil Draws Near' (Quest ID 10923) Progress typo (ben/been)
UPDATE `quest_template` SET `RequestItemsText` = "Has Teribus the Cursed been purged from the skies of Terokkar?" WHERE `entry` = 10923;

-- https://github.com/TrinityCore/TrinityCore/commit/f27c4806fda099f18edf007de704f58ecf128520
-- Sabotage the Warp-Gate! (quest ID 10310): add missing end half of RewardText
UPDATE `quest_template` SET `OfferRewardText`="That is most excellent news, my friend!$B$BYou and Drijya have done us a great service.  With that warp-gate out of commission, the nearby demons will not be getting any further reinforcements.$B$BPlease allow me to reward you in the proper manner of the Consortium." WHERE `entry` = 10310;

-- https://github.com/TrinityCore/TrinityCore/commit/b5876c7664e99cc4619900c9204cc2180676626d
-- In A Scrap With The Legion (quest ID 10232): add missing end half of RewardText
UPDATE `quest_template` SET `OfferRewardText`="Well, that's good and bad news, now isn't it? We've dealt them a blow, but with the Burning Legion running free all over the Netherstorm - and getting closer to us here - well, I don't know how it's going to go.$B$BI have a feeling that we're going to have to change gears here for a while. Hope you'll be able to help us out, $N." WHERE `entry`=10232;

-- https://github.com/TrinityCore/TrinityCore/commit/8de9f1c3592e1c988842cedf8f9c6dd32f75ad33
-- Surveying the Ruins (quest ID 10335): add missing last half of RewardText
UPDATE `quest_template` SET `OfferRewardText`="You're not just pulling my bandage, right? That's most excellent news!$B$BNow that you've done the surveying grunt-work, I'll be able to take my team up to the ruins and see what's there to be procured.$B$BYou have my thanks, $c." WHERE `entry`=10335;

-- https://github.com/TrinityCore/TrinityCore/commit/dbda060ae7a31135044495470e46276dad0bcc0e
 -- A Boaring Time for Grulloc (quest ID 10721): use RewardText instead of QuestDescription
UPDATE `quest_template` SET `OfferRewardText`="<Baron Sablemane peers inside the gronn's sack and seems satisfied.>$B$BVery well, you have upheld your end of the bargain. With that price paid, I will give Rexxar what he seeks." WHERE `entry`=10721;

-- https://github.com/TrinityCore/TrinityCore/commit/f9f5a701f48bbb703658a99d689270d6bd7469c6
-- DB/Quest: You, Robot (quest ID 10248): add missing end of RewardText
UPDATE `quest_template` SET `OfferRewardText`="Well, my boy that certainly was exciting! And for my money, I'd say that the Scrap Reaver X6000 performed admirably, despite its rookie pilot.$B$BHehe, no, don't take offense, I was just kidding.  After all, you just saved Area 52 and the X-52 Nether-Rocket from certain doom!" WHERE `entry`=10248;

-- https://github.com/TrinityCore/TrinityCore/commit/d09de6425ca789bed991f1e80652d57a7c5ff37b
-- A Haunted History (10624): add missing bits of Progress text & Reward text
UPDATE `quest_template` SET `RequestItemsText`="What do you mean? I'm going to make something out of the ash - obviously.", `OfferRewardText`="Your world is about to change, $N.$B$B<Hildagard begins crafting something out of the ash.>" WHERE `entry` = 10624;

-- https://github.com/TrinityCore/TrinityCore/commit/b135663dd9a7e866d647199cd64b4e50960e8978
-- RewardText contains typos and invalid text suggesting multiple item rewards.
UPDATE `quest_template` SET `OfferRewardText`="Sweet, mon! Good news, perhaps we will have fewer unwanted dinner guests tonight.$b$bMany thanks, $N. We are forever in your debt." WHERE `entry`=6461;
-- "released them" instead of "released us" (Tor'gan is a Darkspear troll, not an orc).
UPDATE `quest_template` SET `OfferRewardText`="My restless nights will turn to peaceful slumber when I have destroyed this orb. Thank you, $n. It is a chilling reminder of the terrible power the demons held over the orcs before Hellscream released them from their curse." WHERE `entry`=673;
-- Orgrimmar, Delivery to Jes'rimon (3541), misunderstood use of gender alternatives ($gdad:mon). "mon" is a troll slang word, like "dude":
UPDATE `quest_template` SET `RequestItemsText`= "Yes, what you be needin', mon? I got many tings to be takin' care of today, and you not be on me agenda as one of them. Pester me, and I make sure that changes." WHERE `entry`=3541;
-- Blasted Lands, quest "To Serve Kum'Isha" (2521), CompletionText cuts short at the end, as well as 'tau(ren)' is referenced instead of player race.
UPDATE `quest_template` SET `RequestItemsText`= "I have dedicated my life to the search of flawless draenethyst spheres. A lifetime, $r!" WHERE `entry`=2521;

-- https://github.com/TrinityCore/TrinityCore/commit/a41dae09add74ca1f6389906da4a91680597dfb3
UPDATE `page_text` SET `Text`="Diary - Day 4$B$BI have been stranded on the Island now for 4 days, left alone with my thoughts.   Bananas are pretty tasty, but what a long climb to reach them.  When I am not getting food or protecting myself from the periodic rain, all my thoughts are of rescue.$B$BI would not be so hopeful if it were not for the boxes of paper and bottles that washed ashore with me.  I laugh now to think of all the time I spent on that ship cursing that I was stuck with a boatload of Alchemists and Scribes." WHERE `entry`=696;
UPDATE `page_text` SET `Text`="Diary - Day 512$B$BThe bananas have started talking to me and I have learned a great deal about their culture.  I have ceased my senseless destruction of their homes and consumption of the young.  How little I knew then of the great civilization that I was destroying.$B$BOn another topic I seem to be running low on bottles and paper.  When I first looked at those huge stacks of paper that washed ashore I thought they would be inexhaustible.  Woe with me, my diary must end soon." WHERE `entry`=697;

-- https://github.com/TrinityCore/TrinityCore/commit/9e90f7af78842f701f36811d4b3650755794ff45
-- Blood Elf rogue quest Greed (ID 9491)
UPDATE `quest_template` SET `OfferRewardText`="This is the ring, is it? Not much to look at, but you know what they say about one elves' trash...$B$BAnd let's not forget your payment. Don't feel shy about spending it right here sweetie!" WHERE `entry`=9491;

-- https://github.com/TrinityCore/TrinityCore/commit/4c069dfd8aae87cb1bb3bb82701e41597f1522ed
-- quest 'The Shattered Hand (2)' (ID 1858)
UPDATE `quest_template` SET `OfferRewardText`="Hmmm, now this is interesting. You've more than proved your worth with this, $n. I am quite impressed. Consider yourself the newest member of the Shattered Hand. And take this, it will be a great help to you in the future, I think." WHERE `entry`=1858;

-- https://github.com/TrinityCore/TrinityCore/commit/96df58c4f9661a8cc0ee68482dd44137c77704a5
-- The Essence of Aku'Mai (6563)
UPDATE `quest_template` SET `OfferRewardText`="Well done, $N. These are the crystals I spoke of. Intriguing...$B$BI can feel the power within them. The spirits of water cling to them. Whatever the naga were going to use these for... well, let us be glad they are no longer in their hands." WHERE `entry`= 6563;
-- King of the Foulweald (6621)
UPDATE `quest_template` SET `OfferRewardText`="Good work, $N. Issuing that challenge to the Foulwealds and defeating their leader sends them a strong message:$B$BThe Horde is not to be trifled with.$B$BI don't believe that tribe will be giving us much trouble for a long time." WHERE `entry`= 6621;

-- https://github.com/TrinityCore/TrinityCore/commit/0dc42c4185b0d41b665d1a31e1e3f4eea5393e72
-- quest 787 "The New Horde" completion text
UPDATE `quest_template` SET `OfferRewardText`= "Another one of Eitrigg's recruits, hm?$B$BA sorry state of affairs we find ourselves in if this is the best the Horde can produce.  No matter.  By the time we think you're ready to leave the Valley, you'll be a proud warrior of the Horde." WHERE `entry`=787;


