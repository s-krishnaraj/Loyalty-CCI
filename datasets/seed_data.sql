BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"PersonBirthdate" VARCHAR(255), 
	"PersonMobilePhone" VARCHAR(255), 
	"PersonTitle" VARCHAR(255), 
	"PersonEmail" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Website" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"RecordtypeId" VARCHAR(255), 
	"IsPersonAccount" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','','','','','','Sample Account for Entitlements','','','','','','','','','0120p000001aLWiAAM','False');
INSERT INTO "Account" VALUES(2,'','','','','','','Sample Account for Entitlements','','','','','','','','','0120p000001aLWiAAM','False');
INSERT INTO "Account" VALUES(3,'','','','','','','Hydra Salon','hydra-demo-salon.com','Apparel','250','10 Market St','San Francisco','CA','USA','Partner','0120p000001aLWiAAM','False');
INSERT INTO "Account" VALUES(4,'1985-04-27','','','calum@mailinator.com.demo','Calum','Wilson','','','','','','','','','','0120p000001aLWjAAM','True');
INSERT INTO "Account" VALUES(5,'1980-06-06','','','matt@mailinator.com.sample','Matt','Evans','','','','','','','','','','0120p000001aLWjAAM','True');
INSERT INTO "Account" VALUES(6,'','','','','','','NTO','www.nto-demo.com','Apparel','10000','1 Jefferson St','San Francisco','CA','United States','Customer','0120p000001aLWiAAM','False');
INSERT INTO "Account" VALUES(7,'','','','','','','Sample Account for Entitlements','','','','','','','','','0120p000001aLWiAAM','False');
INSERT INTO "Account" VALUES(8,'1987-06-13','','','johndoe@mailinator.com.sample','Adam','Amith','','','','','','','','','','0120p000001aLWjAAM','True');
INSERT INTO "Account" VALUES(9,'','','','','','','Klay Beauty','klay-beauty-demo.com','Apparel','100','1 Morrison St','NJ','NJ','US','Customer','0120p000001aLWiAAM','False');
INSERT INTO "Account" VALUES(10,'1997-02-06','','','jane@mailinator.com.sample','Jane','Andrews','','','','','','','','','','0120p000001aLWjAAM','True');
INSERT INTO "Account" VALUES(11,'1955-07-27','','','','Kendra','Lewis','','','','','','','','','','0120p000001aLWjAAM','True');
INSERT INTO "Account" VALUES(12,'','','','','','','Sample Account for Entitlements','','','','','','','','','','False');
CREATE TABLE "Account_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Account_rt_mapping" VALUES('0120p000001aLWiAAM','Business_Account');
INSERT INTO "Account_rt_mapping" VALUES('0120p000001aLWjAAM','PersonAccount');
CREATE TABLE "Benefit" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"PrioritySequence" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Value" VARCHAR(255), 
	"BenefitTypeId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Benefit" VALUES(1,'$20 Voucher on Denali Jacket','30','True','','','1');
INSERT INTO "Benefit" VALUES(2,'15% off on Apparel Voucher','20','True','','','1');
INSERT INTO "Benefit" VALUES(3,'Free Shipping on orders greater than $40','20','True','','','2');
INSERT INTO "Benefit" VALUES(4,'Free Shipping on orders greater than $75','10','True','','','2');
INSERT INTO "Benefit" VALUES(5,'Free Shipping on All Orders','30','True','','','2');
INSERT INTO "Benefit" VALUES(6,'10% off on apparel voucher','10','True','','','1');
CREATE TABLE "BenefitType" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Category" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "BenefitType" VALUES(1,'Exclusive Discounts','Member Exclusives','Loyalty','Access to exclusive discounts on merchandise','1');
INSERT INTO "BenefitType" VALUES(2,'Shipping','Orders','Loyalty','Free shipping of orders','1');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"Firstname" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"IsPersonAccount" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'Calum','Wilson','1985-04-27','calum@mailinator.com.demo','True','4');
INSERT INTO "Contact" VALUES(2,'Matt','Evans','1980-06-06','matt@mailinator.com.sample','True','5');
INSERT INTO "Contact" VALUES(3,'Adam','Amith','1987-06-13','johndoe@mailinator.com.sample','True','8');
INSERT INTO "Contact" VALUES(4,'Jane','Andrews','1997-02-06','jane@mailinator.com.sample','True','10');
INSERT INTO "Contact" VALUES(5,'Kendra','Lewis','1955-07-27','','True','11');
CREATE TABLE "LoyaltyPartnerProduct" (
	id INTEGER NOT NULL, 
	"StartDate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	"LoyaltyPartnerId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyPartnerProduct" VALUES(1,'2021-06-01','Makeup','1','2');
INSERT INTO "LoyaltyPartnerProduct" VALUES(2,'2017-06-01','Footwear','2','1');
INSERT INTO "LoyaltyPartnerProduct" VALUES(3,'2017-06-01','Apparel','3','1');
INSERT INTO "LoyaltyPartnerProduct" VALUES(4,'2017-06-01','Makeup','1','1');
CREATE TABLE "LoyaltyPgmPartnerPromotion" (
	id INTEGER NOT NULL, 
	"ContributionPercentage" VARCHAR(255), 
	"PromotionId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "LoyaltyProgram" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Description" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgram" VALUES(1,'NTO Insider','Active','True','Primary loyalty program for NTO');
CREATE TABLE "LoyaltyProgramCurrency" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"CostperUnit" VARCHAR(255), 
	"CurrencyType" VARCHAR(255), 
	"ExpiryPeriodFrequency" VARCHAR(255), 
	"ExpiryPeriodUnit" VARCHAR(255), 
	"ExpiryModel" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramCurrency" VALUES(1,'True','Tier Points','','Qualifying','','','','','False','1','1');
INSERT INTO "LoyaltyProgramCurrency" VALUES(2,'True','Points','0.05','NonQualifying','2','Years','Fixed','None','True','1','');
CREATE TABLE "LoyaltyProgramMember" (
	id INTEGER NOT NULL, 
	"MemberType" VARCHAR(255), 
	"MembershipNumber" VARCHAR(255), 
	"EnrollmentChannel" VARCHAR(255), 
	"EnrollmentDate" VARCHAR(255), 
	"MemberStatus" VARCHAR(255), 
	"MembershipEndDate" VARCHAR(255), 
	"ProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramMember" VALUES(1,'Individual','100007','POS','2011-06-01','Active','','1');
INSERT INTO "LoyaltyProgramMember" VALUES(2,'Individual','100006','CallCenter','2019-04-07','Active','','1');
INSERT INTO "LoyaltyProgramMember" VALUES(3,'Individual','100008','POS','2021-11-20','Active','','1');
INSERT INTO "LoyaltyProgramMember" VALUES(4,'Individual','100004','CallCenter','2015-08-19','Active','','1');
CREATE TABLE "LoyaltyProgramPartner" (
	id INTEGER NOT NULL, 
	"AccrualCostperUnit" VARCHAR(255), 
	"BillingType" VARCHAR(255), 
	"PartnerIndustry" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"PartnerCategory" VARCHAR(255), 
	"PartnershipStartDate" VARCHAR(255), 
	"RedemptionCostperUnit" VARCHAR(255), 
	"PartnerStatus" VARCHAR(255), 
	"PartnerType" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"LoyaltyPartnerId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramPartner" VALUES(1,'','Prepaid','Retail','NTO','Alliance','2017-06-01','','Active','Both','1','6');
INSERT INTO "LoyaltyProgramPartner" VALUES(2,'','Prepaid','Wellness','Klay Beauty','','2021-06-01','','Active','Accrual','1','9');
CREATE TABLE "LoyaltyTier" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"SequenceNumber" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTier" VALUES(1,'','Silver','10','1');
INSERT INTO "LoyaltyTier" VALUES(2,'','Platinum','40','1');
INSERT INTO "LoyaltyTier" VALUES(3,'','Gold','20','1');
CREATE TABLE "LoyaltyTierGroup" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"TierModel" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"TierPeriodUnit" VARCHAR(255), 
	"TierPeriodQuantity" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"QpResetDate" VARCHAR(255), 
	"QpResetFrequency" VARCHAR(255), 
	"QpResetPeriod" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTierGroup" VALUES(1,'Status Tier Group','True','Tier members based on annual spend','Fixed','None','Years','1','True','2022-12-31','1','Years','1');
CREATE TABLE "Product2" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Product2" VALUES(1,'Klay Foundation','True');
INSERT INTO "Product2" VALUES(2,'1 on 1 with brand founder','True');
INSERT INTO "Product2" VALUES(3,'Denali Women’s Jacket','True');
INSERT INTO "Product2" VALUES(4,'$60 for 2500 points','True');
CREATE TABLE "ProductCatalog" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCatalog" VALUES(1,'NTO Insider Catalog');
CREATE TABLE "ProductCategory" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"SortOrder" VARCHAR(255), 
	"CatalogId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCategory" VALUES(1,'Makeup','30','1');
INSERT INTO "ProductCategory" VALUES(2,'Footwear','40','1');
INSERT INTO "ProductCategory" VALUES(3,'Apparel','10','1');
CREATE TABLE "Promotion" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Objective" VARCHAR(255), 
	"TransactionJournalType" VARCHAR(255), 
	"LoyaltyPromotionType" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Promotion" VALUES(1,'3X Bonus Promotion','3X Points for the purchases made this period','True','2023-02-28','2022-07-01','','Accrual','Standard','1');
INSERT INTO "Promotion" VALUES(2,'Birthday promotion','2X Points credited additionally on member purchases on their birthday','False','','2021-06-01','Member engagement improvement with personalised promotions','Accrual','Standard','1');
CREATE TABLE "TransactionJournal" (
	id INTEGER NOT NULL, 
	"ActivityDate" VARCHAR(255), 
	"JournalDate" VARCHAR(255), 
	"Quantity" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"TransactionAmount" VARCHAR(255), 
	"ProductCategoryId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "VoucherDefinition" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"CostPerVoucher" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EffectiveDate" VARCHAR(255), 
	"ExpirationDate" VARCHAR(255), 
	"ExpirationPeriod" VARCHAR(255), 
	"DiscountPercent" VARCHAR(255), 
	"ExpirationPeriodUnit" VARCHAR(255), 
	"ExpirationType" VARCHAR(255), 
	"FaceValue" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"PartnerAccountId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "VoucherDefinition" VALUES(1,'15% Discount on Apparel','True','0.1','','2022-01-01','2022-12-31','','15','','FixedDate','','DiscountPercentage','1','','3');
INSERT INTO "VoucherDefinition" VALUES(2,'10% discount on Apparel','True','','','2022-02-01','2022-12-31','','10','','FixedDate','','DiscountPercentage','1','6','3');
COMMIT;
