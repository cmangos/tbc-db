-- natures grasp uses own spell rather than common one - no sense for req spell
UPDATE spell_chain SET req_spell=0 WHERE spell_id IN(16813,16812,16811,16810,16689,17329,27009);

