SELECT 
	magic_wand_creator,
	max(deposit_amount) as max_deposit_amount
FROM wizard_deposits
GROUP BY magic_wand_creator
HAVING max(deposit_amount) < 200000 or max(deposit_amount) > 400000
ORDER BY max_deposit_amount DESC
LIMIT 3