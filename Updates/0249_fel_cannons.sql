-- Update the fel cannon models to make sure they stay stationary
UPDATE creature_model_info SET Speedwalk = 0, SpeedRun = 0  where modelid = 18505 OR modelid = 17035 OR modelid = 11686 OR modelid = 1126 OR modelid = 16480 OR modelid = 19595 OR modelid = 21397 OR modelid = 5187;

-- Update the fel cannons aswell to make sure the template does not overwrites the model info
UPDATE creature_template SET SpeedWalk = 0, SpeedRun = 0 where entry = 22461 OR entry = 19067 OR entry = 19210 OR entry = 19211 OR entry = 19212 OR entry = 19399 OR entry = 21233 OR entry = 22443 OR entry = 22451 OR entry = 22461 OR entry = 22495 OR entry = 23077 OR entry = 23278 OR entry = 23279 OR entry = 23485;