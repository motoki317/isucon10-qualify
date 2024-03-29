DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;

CREATE TABLE isuumo.estate
(
    id          INTEGER             NOT NULL PRIMARY KEY,
    name        VARCHAR(64)         NOT NULL,
    description VARCHAR(4096)       NOT NULL,
    thumbnail   VARCHAR(128)        NOT NULL,
    address     VARCHAR(128)        NOT NULL,
    latitude    DOUBLE PRECISION    NOT NULL,
    longitude   DOUBLE PRECISION    NOT NULL,
    rent        INTEGER             NOT NULL,
    door_height INTEGER             NOT NULL,
    door_width  INTEGER             NOT NULL,
    features    VARCHAR(64)         NOT NULL,
    popularity  INTEGER             NOT NULL,
    latlon     POINT
);

CREATE TABLE isuumo.chair
(
    id          INTEGER         NOT NULL PRIMARY KEY,
    name        VARCHAR(64)     NOT NULL,
    description VARCHAR(4096)   NOT NULL,
    thumbnail   VARCHAR(128)    NOT NULL,
    price       INTEGER         NOT NULL,
    height      INTEGER         NOT NULL,
    width       INTEGER         NOT NULL,
    depth       INTEGER         NOT NULL,
    color       VARCHAR(64)     NOT NULL,
    features    VARCHAR(64)     NOT NULL,
    kind        VARCHAR(64)     NOT NULL,
    popularity  INTEGER         NOT NULL,
    stock       INTEGER         NOT NULL
);

ALTER TABLE isuumo.chair ADD INDEX popularity(popularity);
ALTER TABLE isuumo.estate ADD INDEX popularity(popularity);

ALTER TABLE isuumo.chair ADD INDEX price(price);
ALTER TABLE isuumo.chair ADD INDEX price_stock(price,stock);
ALTER TABLE isuumo.chair ADD INDEX height(height);
ALTER TABLE isuumo.chair ADD INDEX height_stock(height,stock);
ALTER TABLE isuumo.chair ADD INDEX width(width);
ALTER TABLE isuumo.chair ADD INDEX width_stock(width,stock);
ALTER TABLE isuumo.chair ADD INDEX depth(depth);
ALTER TABLE isuumo.chair ADD INDEX depth_stock(depth,stock);
ALTER TABLE isuumo.chair ADD INDEX color(color);
ALTER TABLE isuumo.chair ADD INDEX features(features);
ALTER TABLE isuumo.chair ADD INDEX kind(kind);

ALTER TABLE isuumo.estate ADD INDEX rent(rent);
ALTER TABLE isuumo.estate ADD INDEX door_width(door_width);
ALTER TABLE isuumo.estate ADD INDEX door_width_rent(door_width,rent);
ALTER TABLE isuumo.estate ADD INDEX door_height(door_height);
ALTER TABLE isuumo.estate ADD INDEX door_height_rent(door_height,rent);
