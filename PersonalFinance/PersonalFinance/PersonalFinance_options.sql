DROP TABLE IF EXISTS 'options';

CREATE TABLE 'options' (
guid VARCHAR(32) NOT NULL,
broker_guid VARCHAR(32) NOT NULL,
trade_date DATE NULL DEFAULT '00-00-0000',
trade_time TIME NULL DEFAULT '00:00:00',
exchange CHAR(20) NOT NULL,
symbol VARCHAR(50) NOT NULL,
strike_price REAL NOT NULL,
contract_type CHAR(5) NOT NULL,
expiry_date DATE NULL DEFAULT '00-00-0000',
trade_type CHAR(5) NOT NULL,
quantity REAL NOT NULL,
rate REAL NOT NULL
)