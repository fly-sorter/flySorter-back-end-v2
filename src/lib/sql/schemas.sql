CREATE TABLE parts(
   part_id      INTEGER AUTO_INCREMENT PRIMARY KEY
  ,part_desc     VARCHAR(25) NOT NULL
  ,part_sub      VARCHAR(1) NOT NULL
  ,part_src      VARCHAR(18) NOT NULL
  ,part_mfgnum   VARCHAR(24)
  ,part_price    VARCHAR(30)
  ,part_category VARCHAR(16) NOT NULL
  ,part_location VARCHAR(14)
  ,part_count    INTEGER  NOT NULL
  ,part_longlead VARCHAR(1) NOT NULL
  ,part_notes    VARCHAR(30)
);

ALTER TABLE parts AUTO_INCREMENT=100000;



INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100001,'Base','N','Seattle Foundry','BC-BASE-0400','$14.75','Casting','Warehouse',580,'Y',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100002,'Motor','N','Kysan','1443.1345-1','$9.77','Electronics','E-Bench',590,'N','Okay to substitute 1443.1345-2');
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100003,'Circuit board','N','PCA','BL MB v1.1','$4.33','Electronics','E-Bench',173,'Y',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100004,'Knob','N','McMaster-Carr','11625A11','$1.12','UI','E-Bench',625,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100005,'Power switch','N','Digikey','RB242D1021-127','$3.98','UI','E-Bench',90,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100006,'Cord','N','Digikey','800-18-2-2-SVT0-BL-00200','$10.55','Electronics','E-Bench',796,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100007,'Fuse','N','Digikey','F4226-ND','$0.54','Electronics','E-Bench',733,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100008,'Label','N','UPrint.com','BLENDERCO Product Label','$0.87','UI','Assembly Bench',884,'Y',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100009,'Glass jar','N','BlenderCo',NULL,'$15.22','Casting','Warehouse',814,'Y','Delicate!');
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100010,'Blade','N','Sheet Metal ''R'' Us','879994313A344','$1.10','Sheet metal','Assembly Bench',722,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100011,'Lower gasket','N','GMN','54.555-LG','$0.45','Rubber','Assembly Bench',252,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100012,'Blade retainer','N','House of Plastics','BC-BR-55','$0.54','Injection molded','Assembly Bench',164,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100013,'Lid','N','House of Plastics','BC-LI-45','$0.88','Injection molded',NULL,200,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100014,'Lid plug','N','House of Plastics','BC-LP-40','$0.15','Injection molded',NULL,483,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100015,'Base assembly','Y','BlenderCo',NULL,'<calculated>','Sub-assembly',NULL,709,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100016,'PCB assembly','Y','BlenderCo',NULL,'<calculated>','Sub-assembly',NULL,21,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100017,'Lid assembly','Y','BlenderCo',NULL,'<calculated>','Sub-assembly',NULL,593,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100018,'Product manual','N','UPrint.com','BOOK-1134-EN','$1.20','Printed','Assembly Bench',870,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100019,'Blender','Y','BlenderCo',NULL,'<calculated>','Sub-assembly',NULL,126,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100020,'Box','N','Boxes on Boxes','12x12x20','$1.11','Packing','Shipping',109,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100021,'Packing peanuts (1 cu ft)','N','Boxes on Boxes','PP','$0.50','Packing','Shipping',722,'N',NULL);
INSERT INTO parts(part_id,part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES (100031,'Large base','N','Seattle Foundry','BC-LBASE-0301','$20.33','Casting','Warehouse',632,'Y',NULL);

CREATE TABLE locations (
  loc_id  INTEGER PRIMARY KEY NOT NULL,
  loc_name text
  );

INSERT INTO locations(loc_id, loc_name) VALUES (00, 'Unknown');
INSERT INTO locations(loc_id, loc_name) VALUES (01, 'Assembly Bench');
INSERT INTO locations(loc_id, loc_name) VALUES (02, 'E-Bench');
INSERT INTO locations(loc_id, loc_name) VALUES (03, 'Shipping');
INSERT INTO locations(loc_id, loc_name) VALUES (04, 'Warehouse');

CREATE TABLE IF NOT EXISTS subassemblies (
  sub_id INTEGER PRIMARY KEY NOT NULL,
  sub_desc TEXT,
  sub_version TEXT,
  sub_total_price DECIMAL(10,2),
  sub_qty INT,
  sub_labormins INTEGER,
  sub_parent_id INTEGER,
  sub_child_id INTEGER
  );
  
INSERT INTO subassemblies (sub_id, sub_desc, sub_parent_id, sub_version, sub_price, sub_qty, sub_labormins)
VALUES(100015, 'Screw', 'N', '1.0', 1.85, 85, 5);


CREATE TABLE categories (
  cat_id INTEGER PRIMARY KEY NOT NULL,
  cat_name TEXT
  );

INSERT INTO categories(cat_id, cat_name) VALUES (00, 'Uncategorized');
INSERT INTO categories(cat_id, cat_name) VALUES (01, 'Casting');
INSERT INTO categories(cat_id, cat_name) VALUES (02, 'Electronics');
INSERT INTO categories(cat_id, cat_name) VALUES (03, 'Injection molded');
INSERT INTO categories(cat_id, cat_name) VALUES (04, 'Packing');
INSERT INTO categories(cat_id, cat_name) VALUES (05, 'Printed');
INSERT INTO categories(cat_id, cat_name) VALUES (06, 'Rubber');
INSERT INTO categories(cat_id, cat_name) VALUES (07, 'Sheet metal');
INSERT INTO categories(cat_id, cat_name) VALUES (08, 'Sub-assembly');
INSERT INTO categories(cat_id, cat_name) VALUES (09, 'UI');

