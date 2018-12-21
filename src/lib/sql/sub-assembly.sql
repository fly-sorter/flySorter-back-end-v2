CREATE TABLE parts(
   part_id      INTEGER AUTO_INCREMENT PRIMARY KEY
  ,part_desc     VARCHAR(255) NOT NULL
  ,part_sub      BOOLEAN NOT NULL
  ,part_src      VARCHAR(64) NOT NULL
  ,part_mfgnum   VARCHAR(32)
  ,part_price    DECIMAL (10,2)
  ,part_cat_id INTEGER
  ,part_loc_id INTEGER
  ,part_count    INTEGER NOT NULL
  ,part_longlead BOOLEAN 
  ,part_notes    TEXT
);

ALTER TABLE parts AUTO_INCREMENT=100001;

INSERT INTO parts(part_desc,part_sub,part_src,part_mfgnum,part_price,part_cat_id,part_loc_id,part_count,part_longlead,part_notes) VALUES ('Base',false,'Seattle Foundry','BC-BASE-0400',14.75, 01, 02, 580, true, NULL);
INSERT INTO parts(part_desc,part_sub,part_src,part_mfgnum,part_price,part_cat_id,part_loc_id,part_count,part_longlead,part_notes) VALUES ('Motor', false, 'Kysan', '1443.1345-1', 9.77, 03,05, 590, false,'Okay to substitute 1443.1345-2');


CREATE TABLE IF NOT EXISTS subassemblies (
  sub_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  sub_desc TEXT,
  sub_version TEXT,
  sub_total_price DECIMAL(10,2),
  sub_qty INT,
  sub_labormins INTEGER
  );

INSERT INTO subassemblies (sub_desc,  sub_version, sub_total_price, sub_qty, sub_labormins)
VALUES('Thing', '1.0', 1.85, 85, 5);
INSERT INTO subassemblies (sub_desc,  sub_version, sub_total_price, sub_qty, sub_labormins)
VALUES('Thang', '1.1', 1.85, 85, 5);

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
  FOREIGN KEY(sub_parent_id) REFERENCES subassemblies(sub_id),
  sub_child_id INTEGER,
  FOREIGN KEY(sub_child_id) REFERENCES subassemblies(sub_id),
  sub_desc VARCHAR(255)
  );

INSERT INTO subp_x_subc (sub_parent_id, sub_child_id, sub_desc)
 VALUES(4, 5, 'test equipment');
 

/* gets the last record from the subassembly */
SELECT * FROM subassemblies ORDER BY sub_id DESC LIMIT 1;
   

   
