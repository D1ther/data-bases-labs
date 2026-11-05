-- встановлення Not null
ALTER TABLE companies
	ALTER country SET NOT NULL,
	ALTER city SET NOT NULL;

ALTER TABLE reviews
	ALTER appraiser SET NOT NULL;
	
-- встановлення unique
ALTER TABLE companies
	ADD UNIQUE(owner);

ALTER TABLE vines
	ADD UNIQUE(name);

-- встановлення дефолтного значення
ALTER TABLE reviews
	ALTER appraiser SET DEFAULT 'anonim';

ALTER TABLE vines
	ALTER pct_alco SET DEFAULT 0;

-- встновлення зв'язків
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

-- перевірка даних
ALTER TABLE vines
    ADD CONSTRAINT chk_vines_pct_alco
    CHECK (pct_alco >= 0 AND pct_alco <= 100);