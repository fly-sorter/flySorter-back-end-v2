CREATE TABLE parts(
   part_id      INTEGER AUTO_INCREMENT PRIMARY KEY
  ,part_desc     VARCHAR(25) NOT NULL
  ,part_sub      VARCHAR(1) NOT NULL
  ,part_src      VARCHAR(18) NOT NULL
  ,part_mfgnum   VARCHAR(24)
  ,part_price    VARCHAR(30)
  ,part_category VARCHAR(16) NOT NULL
  ,part_location VARCHAR(14)
  ,part_count    INTEGER NOT NULL
  ,part_longlead VARCHAR(1) NOT NULL
  ,part_notes    VARCHAR(30)
);

ALTER TABLE parts AUTO_INCREMENT=100000;

INSERT INTO parts(part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES ('Base','N','Seattle Foundry','BC-BASE-0400','$14.75','Casting','Warehouse',580,'Y',NULL);
INSERT INTO parts(part_desc,part_sub,part_src,part_mfgnum,part_price,part_category,part_location,part_count,part_longlead,part_notes) VALUES ('Motor','N','Kysan','1443.1345-1','$9.77','Electronics','E-Bench',590,'N','Okay to substitute 1443.1345-2');


CREATE TABLE IF NOT EXISTS subassemblies (
  sub_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  sub_desc TEXT,
  sub_version TEXT,
  sub_total_price DECIMAL(10,2),
  sub_qty INT,
  sub_labormins INTEGER,
  sub_parent_id INTEGER,
  sub_child_id INTEGER
  );
  
  INSERT INTO subassemblies (sub_desc,  sub_version, sub_total_price, sub_qty, sub_labormins, sub_parent_id, sub_child_id)
VALUES('Thing', '1.0', 1.85, 85, 5, 100001, 4);
INSERT INTO subassemblies (sub_desc,  sub_version, sub_total_price, sub_qty, sub_labormins, sub_parent_id, sub_child_id)
VALUES('Thang', '1.1', 1.85, 85, 5, 100002, 4);

CREATE TABLE IF NOT EXISTS parts_x_sub (
   id SERIAL PRIMARY KEY NOT NULL,
   sub_id INTEGER,
  	FOREIGN KEY(sub_id) REFERENCES subassemblies(sub_id),
   part_id INTEGER, 
  FOREIGN KEY(part_id) REFERENCES parts(part_id)
   );
   
CREATE TABLE IF NOT EXISTS subp_x_subc (
  id SERIAL PRIMARY KEY NOT NULL,
  sub_parent_id INTEGER,
  sub_child_id INTEGER,
  sub_desc TEXT
  );
  
 INSERT INTO subp_x_subc (sub_parent_id, sub_child_id, sub_desc)
 VALUES(4, 5, 'test equipment');
 INSERT INTO subp_x_subc (sub_parent_id, sub_child_id, sub_desc)
 VALUES(4, NULL, 'heavy rocks');
 INSERT INTO subp_x_subc (sub_parent_id, sub_child_id, sub_desc)
 VALUES(4, 5, 'anvil');
    
  
 CREATE TABLE IF NOT EXISTS subp_x_subc2 (
  id SERIAL PRIMARY KEY NOT NULL,
  sub_parent_id INTEGER,
  sub_child_id INTEGER,
  sub_desc TEXT
  );

INSERT INTO subp_x_subc2 (sub_parent_id, sub_child_id, sub_desc)
  VALUES(5, NULL, 'bolt');
  INSERT INTO subp_x_subc2 (sub_parent_id, sub_child_id, sub_desc)
  VALUES(5, NULL, 'glass plate');

/* gets the last record from the subassembly */
SELECT * FROM subassemblies ORDER BY sub_id DESC LIMIT 1;
   
