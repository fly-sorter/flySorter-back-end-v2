CREATE TABLE users(
  user_id                SERIAL NOT NULL PRIMARY KEY,
  user_username          VARCHAR(50),
  user_tokenSeed         VARCHAR(128),
  user_passwordHash      VARCHAR(128),
  user_recoveryHash      VARCHAR(128),
  user_recoveryQuestion  TEXT,
  user_isAdmin           BOOLEAN
);

CREATE TABLE parts(
  part_id           SERIAL      NOT NULL PRIMARY KEY,
  part_desc         VARCHAR(64) NOT NULL,
  part_sub          VARCHAR(1)  NOT NULL,
  part_src          VARCHAR(18) NOT NULL,
  part_mfgnum       VARCHAR(24),
  part_price        VARCHAR(12) NOT NULL,
  part_category     VARCHAR(16) NOT NULL,
  part_location     VARCHAR(14),
  part_count        INTEGER     NOT NULL,
  part_longlead     VARCHAR(1)  NOT NULL,
  part_notes        VARCHAR(30)
);

CREATE TABLE categories(
  cat_id SERIAL NOT NULL PRIMARY KEY,
  cat_name TEXT
);

CREATE TABLE locations(
  loc_id SERIAL NOT NULL PRIMARY KEY,
  loc_name TEXT
);