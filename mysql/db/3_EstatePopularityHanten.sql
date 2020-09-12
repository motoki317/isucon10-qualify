UPDATE estate SET popularity = -popularity;
UPDATE chair SET popularity = -popularity;

UPDATE estate SET latlon = Point(latitude, longitude);
