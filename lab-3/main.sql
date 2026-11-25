ALTER TABLE companies
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;

ALTER TABLE locations
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;

ALTER TABLE vines
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;

ALTER TABLE reviews
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;

-- додав auto increment до ід таблиць

-- запис в locations
INSERT INTO locations (city, country, coordinates) VALUES (
	'Mukachevo',
	'Ukraine',
	'48.4422, 22.7186'
);

INSERT INTO locations (city, country, coordinates) VALUES (
	'Bordeaux',
	'France',
	'44.8378, -0.5792'
),
(
	'Siena',
	'Italy',
	'43.3188, 11.3308'
),
(
	'Telavi',
	'Georgia',
	'41.9198, 45.4731'
);

-- запис в companies
INSERT INTO companies (name, created_year, owner, country, city, specialization, nature_approach, location_id) VALUES (
	'Chateau Chizay',
	'1995-05-12',
	'Hennadii Hutman',
	'Ukraine',
	'Mukachevo',
	'Dry and dessert wines',
	'good',
	1
);

INSERT INTO companies (name, created_year, owner, country, city, specialization, nature_approach, location_id) VALUES (
	'Chateau Margaux',
	'1815-09-01',
	'Corinne Mentzelopoulos',
	'France',
	'Bordeaux',
	'Dry red wines',
	'good',
	2
),
(
	'Antinori',
	'1385-03-15',
	'Piero Antinori',
	'Italy',
	'Siena',
	'Tuscan wines',
	'normal',
	3
),
(
	'Teliani Valley',
	'1997-10-20',
	'Shota Kobaladze',
	'Georgia',
	'Telavi',
	'Qvevri wines',
	'bad',
	4
);

-- запис в vines
INSERT INTO vines (name, relize_year, pct_alco, volume, preparation_method, expiration_date, company_id) VALUES (
	'Troyanda Zakarpattya',
	'2021-11-10',
	16.0,
	0.75,
	'Aged in oak barrels for 24 months',
	'2031-11-10',
	1
);

INSERT INTO vines (name, relize_year, pct_alco, volume, preparation_method, expiration_date, company_id) VALUES (
	'Pavillon Rouge',
	'2018-09-25',
	13.5,
	0.75,
	'Fermented in oak vats and aged for 18 months',
	NULL,
	2
),
(
	'Tignanello',
	'2020-10-05',
	14.0,
	0.75,
	'Skin maceration and aging in barriques',
	NULL,
	3
),
(
	'Saperavi Qvevri',
	'2022-11-01',
	13.0,
	0.75,
	'Fermentation and aging in clay qvevri vessels',
	'2029-11-01',
	4
);

-- запис в reviews
INSERT INTO reviews (appraiser, rating, description, vine_id) VALUES (
	'Oleh Koval',
	5,
	'Rich aroma of tea rose and honey with a pleasant sweet aftertaste.',
	1
);

INSERT INTO reviews (appraiser, rating, description, vine_id) VALUES (
	'Mariia Melnyk',
	5,
	'Deep flavor of blackcurrant and oak with well-balanced tannins.',
	2
),
(
	DEFAULT,
	4,
	'Good acidity with noticeable notes of cherry and spices.',
	3
),
(
	'Taras Boiko',
	5,
	'Tart, full-bodied wine with a distinct varietal aroma.',
	4
);



