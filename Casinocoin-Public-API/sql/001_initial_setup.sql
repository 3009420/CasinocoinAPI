USE DATABASE csc_public_api;

CREATE TABLE csc_public_api.news
(
  id int(255) NOT NULL AUTO_INCREMENT,
  header varchar(1024) NOT NULL,
  content text NOT NULL,
  creation_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  valid_from timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  valid_to timestamp NULL,
  CONSTRAINT NWS_PK PRIMARY KEY (id)
)
COMMENT = 'Casinocoin News table';

CREATE TABLE csc_public_api.exchanges
(
  id int(255) NOT NULL AUTO_INCREMENT,
  exchange_name varchar(1024) NOT NULL,
  access_url varchar(1024) NOT NULL,
  description text NULL,
  creation_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  valid_from timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  valid_to timestamp NULL,
  CONSTRAINT ECS_PK PRIMARY KEY (id)
)
COMMENT = 'Casinocoin available Exchanges table';

CREATE TABLE csc_public_api.casinos
(
  id int(255) NOT NULL AUTO_INCREMENT,
  casino_name varchar(1024) NOT NULL,
  access_url varchar(1024) NOT NULL,
  description text NULL,
  creation_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  valid_from timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  valid_to timestamp NULL,
  CONSTRAINT CSS_PK PRIMARY KEY (id)
)
COMMENT = 'Casinocoin available Casinos table';

CREATE TABLE csc_public_api.bootstraps
(
  id int(255) NOT NULL AUTO_INCREMENT,
  blockheight int(10) DEFAULT NULL,
  download_url varchar(1024) NOT NULL,
  gpg_signature text NULL,
  filename varchar(1024) NULL,
  filesize int(255) NULL,
  creation_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  valid_from timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  valid_to timestamp NULL,
  CONSTRAINT BSS_PK PRIMARY KEY (id)
)
COMMENT = 'Casinocoin Bootstrap files';

CREATE TABLE csc_public_api.promotions
(
  id int(255) NOT NULL AUTO_INCREMENT,
  promotion_title varchar(1024) NOT NULL,
  access_url varchar(1024) NOT NULL,
  description text NULL,
  promotion_image longtext NULL,
  image_mime_type varchar(1024) NULL,
  creation_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  valid_from timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  valid_to timestamp NULL,
  CONSTRAINT PTS_PK PRIMARY KEY (id)
)
COMMENT = 'Casinocoin promotions by casinos';

CREATE TABLE csc_public_api.coin_info
(
  id int(255) NOT NULL AUTO_INCREMENT,
  difficulty DECIMAL(20,8) NULL,
  hashrate DECIMAL(20,8) NULL,
  coinsupply int(10) NULL,
  blockheight int(20) NULL,
  price_btc DECIMAL(20,8) NULL,
  price_usd DECIMAL(20,8) NULL,
  price_eur DECIMAL(20,8) NULL,
  price_cny DECIMAL(20,8) NULL,
  price_jpy DECIMAL(20,8) NULL,
  price_rub DECIMAL(20,8) NULL,
  creation_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT PTS_PK PRIMARY KEY (id)
)
COMMENT = 'Casinocoin coin information';