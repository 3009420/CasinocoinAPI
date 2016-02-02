ALTER TABLE `csc_public_api`.`coin_info` 
ADD COLUMN `marketcapital` DECIMAL(20,8) NULL DEFAULT NULL AFTER `coinsupply`,
ADD COLUMN `blockhash` CHAR(65) NULL DEFAULT NULL AFTER `blockheight`,
ADD COLUMN `blocktime` TIMESTAMP NULL DEFAULT NULL AFTER `blockhash`,
ADD COLUMN `block_tx_count` INT(10) NULL DEFAULT NULL AFTER `blocktime`;
