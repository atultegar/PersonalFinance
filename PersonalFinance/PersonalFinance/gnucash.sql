
DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) NOT NULL,
  `account_type` varchar(2048) NOT NULL,
  `commodity_guid` varchar(32) DEFAULT NULL,
  `commodity_scu` int(11) NOT NULL,
  `non_std_scu` int(11) NOT NULL,
  `parent_guid` varchar(32) DEFAULT NULL,
  `code` varchar(2048) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `hidden` int(11) DEFAULT NULL,
  `placeholder` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
)

LOCK TABLES `accounts` WRITE;

INSERT INTO `accounts` VALUES ('011e0d5a55f04dd8c580aab1e26ad6d2','Bonus','INCOME','727862dc02addf3f168aa185c61da103',100,0,'65a113c8f58a131bd3716cf6c8264ee0','','Bonus',0,0),('0576098ead3f04d15053c13ef6b7b54d','Bank Service Charge','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Bank Service Charge',0,0),('057941d0832dd05f4eee6146707a8fc7','Electric','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'bb4e26c5ddb7cacca174bc61f0892c0d','','Electric',0,0),('073ad79d39d73ef8848f058bd46d6543','Gifts Received','INCOME','727862dc02addf3f168aa185c61da103',100,0,'65a113c8f58a131bd3716cf6c8264ee0','','Gifts Received',0,0),('0a5b2661f6356f2ba486c8ba209b50fc','Other Income','INCOME','727862dc02addf3f168aa185c61da103',100,0,'65a113c8f58a131bd3716cf6c8264ee0','','Other Income',0,0),('0d896b203d87ab63289c42ff0412948a','Medical Expenses','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Medical Expenses',0,0),('0e8aa7dd835cdb2ac8cddf726b7dff01','Template Root','ROOT',NULL,0,0,NULL,'','',0,0),('0f1f5e22bddbd715ca3ef9c04d423dd1','Recreation','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'b3db90d3aab3cd73110ef49ca78b45b0','','Recreation',0,0),('104994f1f187c765494d97ae60ccf502','Adjustment','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Adjustment',0,0),('1fb7454836519b1c4beb87ead689f302','CURRENCY','TRADING','727862dc02addf3f168aa185c61da103',100,0,'80ee3bcd6a14e484c029a1c43c0a4a1b','','',0,1),('2486b7fe07dd41f5894d9e2b5672da5c','Checking Account','BANK','727862dc02addf3f168aa185c61da103',100,0,'caa516dd3465255d31fa8c2eeadae874','','Checking Account',0,0),('27fdcb74580853cf2f887dfd110939f5','INR','TRADING','727862dc02addf3f168aa185c61da103',100,0,'1fb7454836519b1c4beb87ead689f302','','',0,0),('29b6d9a4600e07977fa0bad47b9679b7','119661','TRADING','001e05edc77fdb98d60ba6e622df869d',10000,0,'ce0e248a11e07bb37074094b44d0737d','','',0,0),('2ab423c72f4d928d24642f914ac27c72','Groceries','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Groceries',0,0),('2b977b3d60440e561dad14707375fb8d','Medicare','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'8002371dd53a7205906ab57bf75e562d','','Medicare',0,0),('309c0230214b74fa2aeab862e520040b','Credit Card','CREDIT','727862dc02addf3f168aa185c61da103',100,0,'7dbd2cdc7ef838d14cdb4c47ffe7f66e','','Credit Card',0,0),('30d6f08bdee58b622e14060872f6408b','Aditya Birla Su Life Tax Plan Direct - Growth','MUTUAL','001e05edc77fdb98d60ba6e622df869d',10000,0,'dfc714ef9939852fc46c4079571a4a88','ABSL Tax Plan Direct - Growth','ABSL Tax Plan Direct - Growth',0,0),('31f008ecf707a3bd0a0ffe56e9b7349b','Dining','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Dining',0,0),('39b91f69c5ca0a49220430b03bc52648','Dividend Income','INCOME','727862dc02addf3f168aa185c61da103',100,0,'65a113c8f58a131bd3716cf6c8264ee0','','Dividend Income',0,0),('39e7d87a57e5ee32ec2fcaa2b342c6ba','Equity','EQUITY','727862dc02addf3f168aa185c61da103',100,0,'b4632dd7e8a140e4171b501271a991c2','','Equity',0,1),('39fb24b89f7f80ea896fbe89a543c1a4','Savings Account','BANK','727862dc02addf3f168aa185c61da103',100,0,'caa516dd3465255d31fa8c2eeadae874','','Savings Account',0,0),('4660b507b07cf40d96cf8c42cb347645','Interest Income','INCOME','727862dc02addf3f168aa185c61da103',100,0,'65a113c8f58a131bd3716cf6c8264ee0','','Interest Income',0,0),('4ece0e31578283979d10408f46208678','Market Index','ASSET','727862dc02addf3f168aa185c61da103',100,0,'9eee4c72849f82850f4c65a8dbede98e','','Market Index',0,0),('51d2b106b3c337dd53f5807955ee0ea0','Social Security','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'8002371dd53a7205906ab57bf75e562d','','Social Security',0,0),('53bd14d6284b1afc6126596700ba2977','119413','TRADING','94ef769c0b04d5e7f5d9f4e963679cd0',10000,0,'ce0e248a11e07bb37074094b44d0737d','','',0,0),('5694a344f33406ef15d261429e5f9f15','Bond Interest','INCOME','727862dc02addf3f168aa185c61da103',100,0,'4660b507b07cf40d96cf8c42cb347645','','Bond Interest',0,0),('5a82131412ef92f3ea9c55dfb9fa5f6c','Bond','ASSET','727862dc02addf3f168aa185c61da103',100,0,'9eee4c72849f82850f4c65a8dbede98e','','Bond',0,0),('6447c34cb354b9a67682795684d50a71','Charity','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Charity',0,0),('65a113c8f58a131bd3716cf6c8264ee0','Income','INCOME','727862dc02addf3f168aa185c61da103',100,0,'b4632dd7e8a140e4171b501271a991c2','','Income',0,1),('66fb476d0a720eb259f838ca19ca64c4','State/Province','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'8002371dd53a7205906ab57bf75e562d','','State/Province',0,0),('6954c1a6bd675dae57aaea056fda80ae','Laundry/Dry Cleaning','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Laundry/Dry Cleaning',0,0),('696ccff5d97976301ca0f18033c7f399','Auto','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Auto',0,0),('74cce3675720c7db4e77f2b38c7a0123','Fees','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'696ccff5d97976301ca0f18033c7f399','','Fees',0,0),('78629f040c271ba64d802536475238b7','Stocks','ASSET','727862dc02addf3f168aa185c61da103',100,0,'f2aa7abcf33579f9170a473be78e301c','','Stocks',0,0),('78db9cc4fd74be9ddee895ce39626b3b','Gas','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'696ccff5d97976301ca0f18033c7f399','','Gas',0,0),('795e48963228fb7648b982ef32dd1d91','Federal','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'8002371dd53a7205906ab57bf75e562d','','Federal',0,0),('79a52ae34a980bb6fa196b8114070bb8','Subscriptions','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Subscriptions',0,0),('7aa956dce457787ca4fda049902dc1e9','Travel','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'b3db90d3aab3cd73110ef49ca78b45b0','','Travel',0,0),('7c8e1b79db07e79836cf1d6e80b66f0f','Clothes','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Clothes',0,0),('7d6cc5eda2114d0f01d8e5c984ad99fa','Online Services','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Online Services',0,0),('7dbd2cdc7ef838d14cdb4c47ffe7f66e','Liabilities','LIABILITY','727862dc02addf3f168aa185c61da103',100,0,'b4632dd7e8a140e4171b501271a991c2','','Liabilities',0,1),('8002371dd53a7205906ab57bf75e562d','Taxes','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Taxes',0,0),('80ee3bcd6a14e484c029a1c43c0a4a1b','Trading','TRADING','727862dc02addf3f168aa185c61da103',100,0,'b4632dd7e8a140e4171b501271a991c2','','',0,1),('820331589abab8181a995b057c88d53f','Miscellaneous','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Miscellaneous',0,0),('821e3ac5f0706eb939d8094c2c3d388a','Commissions','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Commissions',0,0),('84888fd9b2f99cdcafd5b0eb8b942dd9','Savings Interest','INCOME','727862dc02addf3f168aa185c61da103',100,0,'4660b507b07cf40d96cf8c42cb347645','','Savings Interest',0,0),('84a35c4ae0f9118da06afd0e9388df36','House','ASSET','727862dc02addf3f168aa185c61da103',100,0,'8512ca23366c72e7c05d7dbbb7abe2e1','','House',0,0),('8512ca23366c72e7c05d7dbbb7abe2e1','Fixed Assets','ASSET','727862dc02addf3f168aa185c61da103',100,0,'b2a82e390ce48add38f4c8adf28818a2','','Fixed Assets',0,1),('85e2e1c597ce8fa391438b2fa8a4fdc8','Gas','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'bb4e26c5ddb7cacca174bc61f0892c0d','','Gas',0,0),('9045d902d7f422d6be9e55a31622a7f3','Supplies','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Supplies',0,0),('9172a0025a8519ee9012a35cc9eeacf8','Garbage collection','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'bb4e26c5ddb7cacca174bc61f0892c0d','','Garbage collection',0,0),('929b8c5b90c7f123bbdc2e6ffc749a81','HCC','STOCK','9f8aff5c3fe4ccc1205c4e30e1697384',1,0,'78629f040c271ba64d802536475238b7','HCC','HCC',0,0),('9911c61933ecf7b4ea8a8af33860dc3c','Phone','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Phone',0,0),('9a1dacba95372ef43845a2dcf35929ff','Gifts','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Gifts',0,0),('9b5231252fcf772130e0a1c8da73a53f','Repair and Maintenance','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'696ccff5d97976301ca0f18033c7f399','','Repair and Maintenance',0,0),('9c41ca6a1273eea467a4f1798b9e25c3','Cable','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Cable',0,0),('9d08706cd26ec976592743173d8854fc','Cash in Wallet','CASH','727862dc02addf3f168aa185c61da103',100,0,'caa516dd3465255d31fa8c2eeadae874','','Cash in Wallet',0,0),('9e142d2273d6a6a379b8600f184ccffc','Parking','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'696ccff5d97976301ca0f18033c7f399','','Parking',0,0),('9eee4c72849f82850f4c65a8dbede98e','Brokerage Account','BANK','727862dc02addf3f168aa185c61da103',100,0,'b2b8a9666b916b1892e9c47253727fe8','','Brokerage Account',0,0),('a55244dde5ef0cf6746884959f103ffd','Stock','ASSET','727862dc02addf3f168aa185c61da103',100,0,'9eee4c72849f82850f4c65a8dbede98e','','Stock',0,0),('a687f1b46cbe1386838c23bd7b93604a','Checking Interest','INCOME','727862dc02addf3f168aa185c61da103',100,0,'4660b507b07cf40d96cf8c42cb347645','','Checking Interest',0,0),('ab7433f6be93ba644aa1ccc669c25756','Salary','INCOME','727862dc02addf3f168aa185c61da103',100,0,'65a113c8f58a131bd3716cf6c8264ee0','','Salary',0,0),('aca6ca833af71f0613af3c54dca4b662','Insurance','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Insurance',0,0),('ad4e9e0a25716be8c522ac5e0ae48419','NSE','TRADING','727862dc02addf3f168aa185c61da103',100,0,'80ee3bcd6a14e484c029a1c43c0a4a1b','','',0,1),('b0feab0f1686bb4e0debc96982d1cccf','Computer','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Computer',0,0),('b163ee4e744b670d3afa7ed9f81abcf7','Education','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Education',0,0),('b2a82e390ce48add38f4c8adf28818a2','Assets','ASSET','727862dc02addf3f168aa185c61da103',100,0,'b4632dd7e8a140e4171b501271a991c2','','Assets',0,1),('b2b8a9666b916b1892e9c47253727fe8','Investments','ASSET','727862dc02addf3f168aa185c61da103',100,0,'b2a82e390ce48add38f4c8adf28818a2','','Investments',0,1),('b3043d4096182a434be6a37e220b0841','Childcare','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Childcare',0,0),('b3db90d3aab3cd73110ef49ca78b45b0','Entertainment','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Entertainment',0,0),('b4632dd7e8a140e4171b501271a991c2','Root Account','ROOT','727862dc02addf3f168aa185c61da103',100,0,NULL,'','',0,0),('bb4e26c5ddb7cacca174bc61f0892c0d','Utilities','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Utilities',0,0),('bd969fc715a4a0f71bdd6ae2c85a869a','Hobbies','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Hobbies',0,0),('caa516dd3465255d31fa8c2eeadae874','Current Assets','ASSET','727862dc02addf3f168aa185c61da103',100,0,'b2a82e390ce48add38f4c8adf28818a2','','Current Assets',0,1),('ccca9d39788c91bc577264f1022dbf6d','HCC','TRADING','9f8aff5c3fe4ccc1205c4e30e1697384',1,0,'ad4e9e0a25716be8c522ac5e0ae48419','','',0,0),('ce0e248a11e07bb37074094b44d0737d','FUND','TRADING','727862dc02addf3f168aa185c61da103',100,0,'80ee3bcd6a14e484c029a1c43c0a4a1b','','',0,1),('d1579cecd2aa2d554ff525b0c0d39605','Other Asset','ASSET','727862dc02addf3f168aa185c61da103',100,0,'8512ca23366c72e7c05d7dbbb7abe2e1','','Other Asset',0,0),('d21d0810bcc84f4d7ada02d9f7ff86f3','Rental Insurance','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'aca6ca833af71f0613af3c54dca4b662','','Rental Insurance',0,0),('d8b8031afe839924cc200581dc8f84ce','Life Insurance','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'aca6ca833af71f0613af3c54dca4b662','','Life Insurance',0,0),('d8f9496c7b195039a134126d5f2471f3','Other Interest','INCOME','727862dc02addf3f168aa185c61da103',100,0,'4660b507b07cf40d96cf8c42cb347645','','Other Interest',0,0),('dbee2d29757a6a8c9f87e980a7c679db','Rent','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Rent',0,0),('dfc714ef9939852fc46c4079571a4a88','Mutual Fund','ASSET','727862dc02addf3f168aa185c61da103',100,0,'9eee4c72849f82850f4c65a8dbede98e','','Mutual Fund',0,0),('e13f2358843e687a37d2014de0d93437','Expenses','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'b4632dd7e8a140e4171b501271a991c2','','Expenses',0,1),('e1587c0af86c365b1ed15cea47f67d71','Vehicle','ASSET','727862dc02addf3f168aa185c61da103',100,0,'8512ca23366c72e7c05d7dbbb7abe2e1','','Vehicle',0,0),('ebd3b618a69ad8023c0af333198b094e','Public Transportation','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Public Transportation',0,0),('ede2170bbfa971ea5d54f36a528549b9','Axis Bank Savings Atul','BANK','727862dc02addf3f168aa185c61da103',100,0,'39fb24b89f7f80ea896fbe89a543c1a4','910010027492779','Savings Account',0,0),('ee50cbf621cde78a281cea80a37bbf79','Health Insurance','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'aca6ca833af71f0613af3c54dca4b662','','Health Insurance',0,0),('ef90c69d7a695c5f5c34ede1b4590bd6','Music/Movies','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'b3db90d3aab3cd73110ef49ca78b45b0','','Music/Movies',0,0),('f18ff4c3562436554df140952a925a36','Auto Insurance','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'aca6ca833af71f0613af3c54dca4b662','','Auto Insurance',0,0),('f2aa7abcf33579f9170a473be78e301c','Zerodha','ASSET','727862dc02addf3f168aa185c61da103',100,0,'9eee4c72849f82850f4c65a8dbede98e','','Zerodha',0,0),('f55bee462415696aa509f43130af3688','Other Tax','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'8002371dd53a7205906ab57bf75e562d','','Other Tax',0,0),('f85c46ceb997544fc7aa1cef4b106e0d','Opening Balances','EQUITY','727862dc02addf3f168aa185c61da103',100,0,'39e7d87a57e5ee32ec2fcaa2b342c6ba','','Opening Balances',0,0),('fc74cf8ec52abf924812e1822bdf57bc','Books','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'e13f2358843e687a37d2014de0d93437','','Books',0,0),('fdc748cda295b2da1a6c4d83273d4c6b','Water','EXPENSE','727862dc02addf3f168aa185c61da103',100,0,'bb4e26c5ddb7cacca174bc61f0892c0d','','Water',0,0),('fe47fd24735bb5e047465e7b2792fadf','L&T Infrastructure Fund Direct - Growth','MUTUAL','94ef769c0b04d5e7f5d9f4e963679cd0',10000,0,'dfc714ef9939852fc46c4079571a4a88','L&T Infrastructure Fund Direct - Growth','L&T Infrastructure Fund Direct - Growth',0,0);

UNLOCK TABLES;

DROP TABLE IF EXISTS `billterms`;

CREATE TABLE `billterms` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `refcount` int(11) NOT NULL,
  `invisible` int(11) NOT NULL,
  `parent` varchar(32) DEFAULT NULL,
  `type` varchar(2048) NOT NULL,
  `duedays` int(11) DEFAULT NULL,
  `discountdays` int(11) DEFAULT NULL,
  `discount_num` bigint(20) DEFAULT NULL,
  `discount_denom` bigint(20) DEFAULT NULL,
  `cutoff` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) 

LOCK TABLES `billterms` WRITE;

UNLOCK TABLES;

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `guid` varchar(32) NOT NULL,
  `root_account_guid` varchar(32) NOT NULL,
  `root_template_guid` varchar(32) NOT NULL,
  PRIMARY KEY (`guid`)
) 

LOCK TABLES `books` WRITE;

INSERT INTO `books` VALUES ('92ec9ae41ff7f55b92d42534fc62f4dd','b4632dd7e8a140e4171b501271a991c2','0e8aa7dd835cdb2ac8cddf726b7dff01');

UNLOCK TABLES;

DROP TABLE IF EXISTS `budget_amounts`;

CREATE TABLE `budget_amounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_guid` varchar(32) NOT NULL,
  `account_guid` varchar(32) NOT NULL,
  `period_num` int(11) NOT NULL,
  `amount_num` bigint(20) NOT NULL,
  `amount_denom` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) 

LOCK TABLES `budget_amounts` WRITE;

UNLOCK TABLES;

DROP TABLE IF EXISTS `budgets`;

CREATE TABLE `budgets` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) NOT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `num_periods` int(11) NOT NULL,
  PRIMARY KEY (`guid`)
) 

LOCK TABLES `budgets` WRITE;

UNLOCK TABLES;

DROP TABLE IF EXISTS `commodities`;

CREATE TABLE `commodities` (
  `guid` varchar(32) NOT NULL,
  `namespace` varchar(2048) NOT NULL,
  `mnemonic` varchar(2048) NOT NULL,
  `fullname` varchar(2048) DEFAULT NULL,
  `cusip` varchar(2048) DEFAULT NULL,
  `fraction` int(11) NOT NULL,
  `quote_flag` int(11) NOT NULL,
  `quote_source` varchar(2048) DEFAULT NULL,
  `quote_tz` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) 

LOCK TABLES `commodities` WRITE;

INSERT INTO `commodities` VALUES ('001e05edc77fdb98d60ba6e622df869d','FUND','119661','Aditya Birla Su Life Tax Plan Direct - Growth','INF209K01VV9',10000,1,'amfiindia',NULL),('727862dc02addf3f168aa185c61da103','CURRENCY','INR','Indian Rupee','356',100,1,'currency',''),('7497f03ab421f29e5966f48c4ac94911','NSE','HINDZINC','Hindustan Zinc Ltd','',1,1,'yahoo_asia',NULL),('94ef769c0b04d5e7f5d9f4e963679cd0','FUND','119413','L&T Infrastructure Fund Direct - Growth','INF917K01FW8',10000,1,'amfiindia',NULL),('9f8aff5c3fe4ccc1205c4e30e1697384','NSE','HCC','Hindustan Construction Company Ltd','',1,1,'yahoo_asia',NULL);
/*!40000 ALTER TABLE `commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) NOT NULL,
  `id` varchar(2048) NOT NULL,
  `notes` varchar(2048) NOT NULL,
  `active` int(11) NOT NULL,
  `discount_num` bigint(20) NOT NULL,
  `discount_denom` bigint(20) NOT NULL,
  `credit_num` bigint(20) NOT NULL,
  `credit_denom` bigint(20) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `tax_override` int(11) NOT NULL,
  `addr_name` varchar(1024) DEFAULT NULL,
  `addr_addr1` varchar(1024) DEFAULT NULL,
  `addr_addr2` varchar(1024) DEFAULT NULL,
  `addr_addr3` varchar(1024) DEFAULT NULL,
  `addr_addr4` varchar(1024) DEFAULT NULL,
  `addr_phone` varchar(128) DEFAULT NULL,
  `addr_fax` varchar(128) DEFAULT NULL,
  `addr_email` varchar(256) DEFAULT NULL,
  `shipaddr_name` varchar(1024) DEFAULT NULL,
  `shipaddr_addr1` varchar(1024) DEFAULT NULL,
  `shipaddr_addr2` varchar(1024) DEFAULT NULL,
  `shipaddr_addr3` varchar(1024) DEFAULT NULL,
  `shipaddr_addr4` varchar(1024) DEFAULT NULL,
  `shipaddr_phone` varchar(128) DEFAULT NULL,
  `shipaddr_fax` varchar(128) DEFAULT NULL,
  `shipaddr_email` varchar(256) DEFAULT NULL,
  `terms` varchar(32) DEFAULT NULL,
  `tax_included` int(11) DEFAULT NULL,
  `taxtable` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
)
--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `guid` varchar(32) NOT NULL,
  `username` varchar(2048) NOT NULL,
  `id` varchar(2048) NOT NULL,
  `language` varchar(2048) NOT NULL,
  `acl` varchar(2048) NOT NULL,
  `active` int(11) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `ccard_guid` varchar(32) DEFAULT NULL,
  `workday_num` bigint(20) NOT NULL,
  `workday_denom` bigint(20) NOT NULL,
  `rate_num` bigint(20) NOT NULL,
  `rate_denom` bigint(20) NOT NULL,
  `addr_name` varchar(1024) DEFAULT NULL,
  `addr_addr1` varchar(1024) DEFAULT NULL,
  `addr_addr2` varchar(1024) DEFAULT NULL,
  `addr_addr3` varchar(1024) DEFAULT NULL,
  `addr_addr4` varchar(1024) DEFAULT NULL,
  `addr_phone` varchar(128) DEFAULT NULL,
  `addr_fax` varchar(128) DEFAULT NULL,
  `addr_email` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `guid` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_entered` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(2048) DEFAULT NULL,
  `action` varchar(2048) DEFAULT NULL,
  `notes` varchar(2048) DEFAULT NULL,
  `quantity_num` bigint(20) DEFAULT NULL,
  `quantity_denom` bigint(20) DEFAULT NULL,
  `i_acct` varchar(32) DEFAULT NULL,
  `i_price_num` bigint(20) DEFAULT NULL,
  `i_price_denom` bigint(20) DEFAULT NULL,
  `i_discount_num` bigint(20) DEFAULT NULL,
  `i_discount_denom` bigint(20) DEFAULT NULL,
  `invoice` varchar(32) DEFAULT NULL,
  `i_disc_type` varchar(2048) DEFAULT NULL,
  `i_disc_how` varchar(2048) DEFAULT NULL,
  `i_taxable` int(11) DEFAULT NULL,
  `i_taxincluded` int(11) DEFAULT NULL,
  `i_taxtable` varchar(32) DEFAULT NULL,
  `b_acct` varchar(32) DEFAULT NULL,
  `b_price_num` bigint(20) DEFAULT NULL,
  `b_price_denom` bigint(20) DEFAULT NULL,
  `bill` varchar(32) DEFAULT NULL,
  `b_taxable` int(11) DEFAULT NULL,
  `b_taxincluded` int(11) DEFAULT NULL,
  `b_taxtable` varchar(32) DEFAULT NULL,
  `b_paytype` int(11) DEFAULT NULL,
  `billable` int(11) DEFAULT NULL,
  `billto_type` int(11) DEFAULT NULL,
  `billto_guid` varchar(32) DEFAULT NULL,
  `order_guid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gnclock`
--

DROP TABLE IF EXISTS `gnclock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gnclock` (
  `Hostname` varchar(255) DEFAULT NULL,
  `PID` int(11) DEFAULT NULL
) 

--
-- Dumping data for table `gnclock`
--

LOCK TABLES `gnclock` WRITE;
/*!40000 ALTER TABLE `gnclock` DISABLE KEYS */;
/*!40000 ALTER TABLE `gnclock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `guid` varchar(32) NOT NULL,
  `id` varchar(2048) NOT NULL,
  `date_opened` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `date_posted` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `notes` varchar(2048) NOT NULL,
  `active` int(11) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `owner_type` int(11) DEFAULT NULL,
  `owner_guid` varchar(32) DEFAULT NULL,
  `terms` varchar(32) DEFAULT NULL,
  `billing_id` varchar(2048) DEFAULT NULL,
  `post_txn` varchar(32) DEFAULT NULL,
  `post_lot` varchar(32) DEFAULT NULL,
  `post_acc` varchar(32) DEFAULT NULL,
  `billto_type` int(11) DEFAULT NULL,
  `billto_guid` varchar(32) DEFAULT NULL,
  `charge_amt_num` bigint(20) DEFAULT NULL,
  `charge_amt_denom` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `guid` varchar(32) NOT NULL,
  `id` varchar(2048) NOT NULL,
  `name` varchar(2048) NOT NULL,
  `reference` varchar(2048) NOT NULL,
  `active` int(11) NOT NULL,
  `owner_type` int(11) DEFAULT NULL,
  `owner_guid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
)

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lots`
--

DROP TABLE IF EXISTS `lots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lots` (
  `guid` varchar(32) NOT NULL,
  `account_guid` varchar(32) DEFAULT NULL,
  `is_closed` int(11) NOT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `lots`
--

LOCK TABLES `lots` WRITE;
/*!40000 ALTER TABLE `lots` DISABLE KEYS */;
/*!40000 ALTER TABLE `lots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `guid` varchar(32) NOT NULL,
  `id` varchar(2048) NOT NULL,
  `notes` varchar(2048) NOT NULL,
  `reference` varchar(2048) NOT NULL,
  `active` int(11) NOT NULL,
  `date_opened` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_closed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_type` int(11) NOT NULL,
  `owner_guid` varchar(32) NOT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `guid` varchar(32) NOT NULL,
  `commodity_guid` varchar(32) NOT NULL,
  `currency_guid` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `source` varchar(2048) DEFAULT NULL,
  `type` varchar(2048) DEFAULT NULL,
  `value_num` bigint(20) NOT NULL,
  `value_denom` bigint(20) NOT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES ('6899dde7b6b6766a34fc85de3003afac','94ef769c0b04d5e7f5d9f4e963679cd0','727862dc02addf3f168aa185c61da103','2017-12-08 13:00:00','user:price-editor','unknown',0,1);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrences`
--

DROP TABLE IF EXISTS `recurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_guid` varchar(32) NOT NULL,
  `recurrence_mult` int(11) NOT NULL,
  `recurrence_period_type` varchar(2048) NOT NULL,
  `recurrence_period_start` date NOT NULL,
  `recurrence_weekend_adjust` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) 

--
-- Dumping data for table `recurrences`
--

LOCK TABLES `recurrences` WRITE;
/*!40000 ALTER TABLE `recurrences` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedxactions`
--

DROP TABLE IF EXISTS `schedxactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedxactions` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `enabled` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `last_occur` date DEFAULT NULL,
  `num_occur` int(11) NOT NULL,
  `rem_occur` int(11) NOT NULL,
  `auto_create` int(11) NOT NULL,
  `auto_notify` int(11) NOT NULL,
  `adv_creation` int(11) NOT NULL,
  `adv_notify` int(11) NOT NULL,
  `instance_count` int(11) NOT NULL,
  `template_act_guid` varchar(32) NOT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `schedxactions`
--

LOCK TABLES `schedxactions` WRITE;
/*!40000 ALTER TABLE `schedxactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedxactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_guid` varchar(32) NOT NULL,
  `name` varchar(4096) NOT NULL,
  `slot_type` int(11) NOT NULL,
  `int64_val` bigint(20) DEFAULT NULL,
  `string_val` varchar(4096) DEFAULT NULL,
  `double_val` double DEFAULT NULL,
  `timespec_val` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `guid_val` varchar(32) DEFAULT NULL,
  `numeric_val_num` bigint(20) DEFAULT NULL,
  `numeric_val_denom` bigint(20) DEFAULT NULL,
  `gdate_val` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slots_guid_index` (`obj_guid`)
) 

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,'92ec9ae41ff7f55b92d42534fc62f4dd','options',9,0,NULL,0,NULL,'146530b6698bc93a3bfb538db8ebf601',0,1,NULL),(2,'146530b6698bc93a3bfb538db8ebf601','options/Budgeting',9,0,NULL,0,NULL,'1e85a1097045b3356675e7a179eb7589',0,1,NULL),(3,'146530b6698bc93a3bfb538db8ebf601','options/Accounts',9,0,NULL,0,NULL,'398a33d7a0ae8947850224ad9f4c8eba',0,1,NULL),(4,'398a33d7a0ae8947850224ad9f4c8eba','options/Accounts/Use Trading Accounts',4,0,'t',0,NULL,NULL,0,1,NULL),(5,'146530b6698bc93a3bfb538db8ebf601','options/Business',9,0,NULL,0,NULL,'387f2936cd6914148fc53138b74f7fe1',0,1,NULL),(6,'387f2936cd6914148fc53138b74f7fe1','options/Business/Fancy Date Format',9,0,NULL,0,NULL,'e2e649bdfea69d7ce6b0c092f6ed9e94',0,1,NULL),(7,'e2e649bdfea69d7ce6b0c092f6ed9e94','options/Business/Fancy Date Format/fmt',4,0,'unset',0,NULL,NULL,0,1,NULL),(8,'e2e649bdfea69d7ce6b0c092f6ed9e94','options/Business/Fancy Date Format/month',4,0,'number',0,NULL,NULL,0,1,NULL),(9,'e2e649bdfea69d7ce6b0c092f6ed9e94','options/Business/Fancy Date Format/years',1,1,NULL,0,NULL,NULL,0,1,NULL),(10,'e2e649bdfea69d7ce6b0c092f6ed9e94','options/Business/Fancy Date Format/custom',4,0,'%d/%m/%Y',0,NULL,NULL,0,1,NULL),(11,'387f2936cd6914148fc53138b74f7fe1','options/Business/Company Name',4,0,'Atul Tegar',0,NULL,NULL,0,1,NULL),(12,'92ec9ae41ff7f55b92d42534fc62f4dd','counter_formats',9,0,NULL,0,NULL,'98a11f0ba15ba667c21e9ce5d556c79b',0,1,NULL),(13,'e13f2358843e687a37d2014de0d93437','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(14,'b2a82e390ce48add38f4c8adf28818a2','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(15,'b2b8a9666b916b1892e9c47253727fe8','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(16,'8512ca23366c72e7c05d7dbbb7abe2e1','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(17,'caa516dd3465255d31fa8c2eeadae874','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(18,'65a113c8f58a131bd3716cf6c8264ee0','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(19,'7dbd2cdc7ef838d14cdb4c47ffe7f66e','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(20,'39e7d87a57e5ee32ec2fcaa2b342c6ba','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(22,'ede2170bbfa971ea5d54f36a528549b9','color',4,0,'Not Set',0,NULL,NULL,0,1,NULL),(23,'80ee3bcd6a14e484c029a1c43c0a4a1b','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(24,'ce0e248a11e07bb37074094b44d0737d','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(25,'1fb7454836519b1c4beb87ead689f302','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(26,'c3e7a533e8043274438cf54e18e40d8d','date-posted',10,0,NULL,0,NULL,NULL,0,1,'2016-03-08'),(27,'30d6f08bdee58b622e14060872f6408b','reconcile-info',9,0,NULL,0,NULL,'60870312d9ecdbc5d1f9011f79dd515b',0,1,NULL),(28,'60870312d9ecdbc5d1f9011f79dd515b','reconcile-info/include-children',1,0,NULL,0,NULL,NULL,0,1,NULL),(29,'30d6f08bdee58b622e14060872f6408b','color',4,0,'Not Set',0,NULL,NULL,0,1,NULL),(32,'fe47fd24735bb5e047465e7b2792fadf','color',4,0,'Not Set',0,NULL,NULL,0,1,NULL),(33,'990743e55173b90959750afa784fbd22','date-posted',10,0,NULL,0,NULL,NULL,0,1,'2017-11-07'),(34,'001e05edc77fdb98d60ba6e622df869d','user_symbol',4,0,'119661',0,NULL,NULL,0,1,NULL),(35,'f2aa7abcf33579f9170a473be78e301c','color',4,0,'Not Set',0,NULL,NULL,0,1,NULL),(36,'9f8aff5c3fe4ccc1205c4e30e1697384','user_symbol',4,0,'HCC',0,NULL,NULL,0,1,NULL),(37,'78629f040c271ba64d802536475238b7','color',4,0,'Not Set',0,NULL,NULL,0,1,NULL),(38,'929b8c5b90c7f123bbdc2e6ffc749a81','color',4,0,'Not Set',0,NULL,NULL,0,1,NULL),(39,'ad4e9e0a25716be8c522ac5e0ae48419','placeholder',4,0,'true',0,NULL,NULL,0,1,NULL),(40,'3ecc0de87d8c5e63d48d62a1dba5cb5e','date-posted',10,0,NULL,0,NULL,NULL,0,1,'2017-12-04');
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `splits`
--

DROP TABLE IF EXISTS `splits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `splits` (
  `guid` varchar(32) NOT NULL,
  `tx_guid` varchar(32) NOT NULL,
  `account_guid` varchar(32) NOT NULL,
  `memo` varchar(2048) NOT NULL,
  `action` varchar(2048) NOT NULL,
  `reconcile_state` varchar(1) NOT NULL,
  `reconcile_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `value_num` bigint(20) NOT NULL,
  `value_denom` bigint(20) NOT NULL,
  `quantity_num` bigint(20) NOT NULL,
  `quantity_denom` bigint(20) NOT NULL,
  `lot_guid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `splits_tx_guid_index` (`tx_guid`),
  KEY `splits_account_guid_index` (`account_guid`)
) 

--
-- Dumping data for table `splits`
--

LOCK TABLES `splits` WRITE;
/*!40000 ALTER TABLE `splits` DISABLE KEYS */;
INSERT INTO `splits` VALUES ('05532a2f6086a3f6d066d610eb0940d9','3ecc0de87d8c5e63d48d62a1dba5cb5e','ccca9d39788c91bc577264f1022dbf6d','','','n',NULL,-18750,100,-5,1,NULL),('0f5cb2344cd39d21ecbf5dc5d1db8f4e','990743e55173b90959750afa784fbd22','27fdcb74580853cf2f887dfd110939f5','','','n',NULL,10000000,100,10000000,100,NULL),('195e6d882570934ec97208b9f199a341','3ecc0de87d8c5e63d48d62a1dba5cb5e','929b8c5b90c7f123bbdc2e6ffc749a81','','Buy','n',NULL,18750,100,5,1,NULL),('28d2b9d855c58c519de518eb07d13fb7','990743e55173b90959750afa784fbd22','fe47fd24735bb5e047465e7b2792fadf','','','n',NULL,10000000,100,52687039,10000,NULL),('42a340874ca0570e8f36390a063ecc5d','c3e7a533e8043274438cf54e18e40d8d','27fdcb74580853cf2f887dfd110939f5','','','n',NULL,2000000,100,2000000,100,NULL),('5473118cf1f533361b90c033e6372121','990743e55173b90959750afa784fbd22','53bd14d6284b1afc6126596700ba2977','','','n',NULL,-10000000,100,-52687039,10000,NULL),('953f022fff5272d26dad05a171599e49','3ecc0de87d8c5e63d48d62a1dba5cb5e','f2aa7abcf33579f9170a473be78e301c','','','n',NULL,-18750,100,-18750,100,NULL),('b980b785404d0a227c843ec71eef0930','c3e7a533e8043274438cf54e18e40d8d','ede2170bbfa971ea5d54f36a528549b9','','','n',NULL,-2000000,100,-2000000,100,NULL),('b9c9d023c26efb8bab0c49c86de868de','c3e7a533e8043274438cf54e18e40d8d','30d6f08bdee58b622e14060872f6408b','','','n',NULL,2000000,100,7657000,10000,NULL),('bd1349a9c90d816bc05522b2e5fc2a5d','c3e7a533e8043274438cf54e18e40d8d','29b6d9a4600e07977fa0bad47b9679b7','','','n',NULL,-2000000,100,-7657000,10000,NULL),('e0eab785940e5b692e3c9fced748f408','990743e55173b90959750afa784fbd22','ede2170bbfa971ea5d54f36a528549b9','','','n',NULL,-10000000,100,-10000000,100,NULL),('f46a82a618ba9487225e383aabd3083d','3ecc0de87d8c5e63d48d62a1dba5cb5e','27fdcb74580853cf2f887dfd110939f5','','','n',NULL,18750,100,18750,100,NULL);
/*!40000 ALTER TABLE `splits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxtable_entries`
--

DROP TABLE IF EXISTS `taxtable_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxtable_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxtable` varchar(32) NOT NULL,
  `account` varchar(32) NOT NULL,
  `amount_num` bigint(20) NOT NULL,
  `amount_denom` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) 

--
-- Dumping data for table `taxtable_entries`
--

LOCK TABLES `taxtable_entries` WRITE;
/*!40000 ALTER TABLE `taxtable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxtable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxtables`
--

DROP TABLE IF EXISTS `taxtables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxtables` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `refcount` bigint(20) NOT NULL,
  `invisible` int(11) NOT NULL,
  `parent` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `taxtables`
--

LOCK TABLES `taxtables` WRITE;
/*!40000 ALTER TABLE `taxtables` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxtables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `guid` varchar(32) NOT NULL,
  `currency_guid` varchar(32) NOT NULL,
  `num` varchar(2048) NOT NULL,
  `post_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `enter_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `tx_post_date_index` (`post_date`)
) 

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('3ecc0de87d8c5e63d48d62a1dba5cb5e','727862dc02addf3f168aa185c61da103','','2017-12-04 05:29:00','2017-12-09 01:48:06','Purchse of 5 HCC shares'),('990743e55173b90959750afa784fbd22','727862dc02addf3f168aa185c61da103','','2017-11-07 05:29:00','2017-12-09 01:05:40','Purchase of L&T Infrastructure Fund'),('c3e7a533e8043274438cf54e18e40d8d','727862dc02addf3f168aa185c61da103','','2016-03-08 05:29:00','2017-12-08 12:18:34','Lump sum purchase of ABSL Tax Plan MF');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `guid` varchar(32) NOT NULL,
  `name` varchar(2048) NOT NULL,
  `id` varchar(2048) NOT NULL,
  `notes` varchar(2048) NOT NULL,
  `currency` varchar(32) NOT NULL,
  `active` int(11) NOT NULL,
  `tax_override` int(11) NOT NULL,
  `addr_name` varchar(1024) DEFAULT NULL,
  `addr_addr1` varchar(1024) DEFAULT NULL,
  `addr_addr2` varchar(1024) DEFAULT NULL,
  `addr_addr3` varchar(1024) DEFAULT NULL,
  `addr_addr4` varchar(1024) DEFAULT NULL,
  `addr_phone` varchar(128) DEFAULT NULL,
  `addr_fax` varchar(128) DEFAULT NULL,
  `addr_email` varchar(256) DEFAULT NULL,
  `terms` varchar(32) DEFAULT NULL,
  `tax_inc` varchar(2048) DEFAULT NULL,
  `tax_table` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) 

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `table_name` varchar(50) NOT NULL,
  `table_version` int(11) NOT NULL,
  PRIMARY KEY (`table_name`)
) 

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('accounts',1),('billterms',2),('books',1),('budgets',1),('budget_amounts',1),('commodities',1),('customers',2),('employees',2),('entries',3),('Gnucash',2061600),('Gnucash-Resave',19920),('invoices',3),('jobs',1),('lots',2),('orders',1),('prices',2),('recurrences',2),('schedxactions',1),('slots',3),('splits',4),('taxtables',2),('taxtable_entries',3),('transactions',3),('vendors',1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-12 10:57:16
