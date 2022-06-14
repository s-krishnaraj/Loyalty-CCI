BEGIN TRANSACTION;
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
	PRIMARY KEY (id)
);
INSERT INTO "ProductCategory" VALUES(1,'Makeup','30');
INSERT INTO "ProductCategory" VALUES(2,'Footwear','40');
INSERT INTO "ProductCategory" VALUES(3,'Apparel','10');
COMMIT;
