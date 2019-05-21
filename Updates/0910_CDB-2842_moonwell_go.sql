-- Homogeneise spawn time and state (doesnt really matter as it even works with moonwells that have state = 0
UPDATE gameobject SET spawntimesecsmin=900, spawntimesecsmax=900, animprogress=100, state=1 WHERE id IN (177272, 177273, 177274, 177275, 177276, 177277, 177278, 177279, 177280, 177281); -- map 534 ones will be overwritten but does not matter

