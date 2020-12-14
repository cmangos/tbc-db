-- Prevent Sneed from being despawned instantly after being summoned due to missing ACTION_T_SET_DESPAWN_AGGREGATION parameter
UPDATE creature_ai_scripts SET action2_type = 62, action2_param1 = 0 WHERE id = 64203;
