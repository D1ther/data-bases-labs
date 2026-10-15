-- ДОДАВАННЯ 
ALTER TABLE locations
	ADD coordinates VARCHAR(17) NOT NULL;

ALTER TABLE companies
	ADD specialization VARCHAR(30) NOT NULL,
	ADD nature_approach VARCHAR(6) CHECK (
									nature_approach in ('bad', 'normal', 'good')
									);

ALTER TABLE reviews
	ADD vine_id INT NOT NULL;
	
ALTER TABLE vines
	ADD expiration_date DATE;

ALTER TABLE reviews
	ADD trash BOOL;

-- ВИДАЛЕННЯ
ALTER TABLE reviews
	DROP trash;

-- ПЕРЕЙМЕНУВАННЯ
ALTER TABLE vines
	RENAME year TO relize_year;

-- ЗМІНА ТИПУ ДАНИХ
ALTER TABLE vines
	ALTER preparation_method TYPE VARCHAR(255),
	ALTER name TYPE VARCHAR(50);

ALTER TABLE companies
	ALTER name TYPE VARCHAR(50),
	ALTER owner TYPE VARCHAR(32),
	ALTER country TYPE VARCHAR(64),
	ALTER city TYPE VARCHAR(32);

ALTER TABLE locations
	ALTER country TYPE VARCHAR(64),
	ALTER city TYPE VARCHAR(32);

ALTER TABLE reviews
	ALTER description TYPE VARCHAR(256);

-- ЗМІНА ОБМЕЖЕНЬ
ALTER TABLE locations
	ALTER COLUMN city TYPE VARCHAR(64),
	ALTER COLUMN city SET NOT NULL;

-- СТВОРЕННЯ ЗВ'ЯЗКІВ МІЖ ТАБЛИЦЯМИ

-- СТВОРЕННЯ ДОДАТКОВИХ ПОТРІБНИХ АТРИБУТІВ
ALTER TABLE vines
	ADD company_id INT NOT NULL;

ALTER TABLE companies
	ADD location_id INT NOT NULL;


ALTER TABLE vines
	ADD CONSTRAINT fk_vine_company
	FOREIGN KEY (company_id)
	REFERENCES companies(id);

ALTER TABLE companies
	ADD CONSTRAINT fk_company_location
	FOREIGN KEY (location_id)
	REFERENCES locations(id);

ALTER TABLE reviews
	ADD CONSTRAINT fk_review_vine
	FOREIGN KEY (vine_id)
	REFERENCES vines(id);



	




