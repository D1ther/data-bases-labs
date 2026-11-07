CREATE TABLE tab1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

-- Надання прав
GRANT SELECT, INSERT ON tab1 TO "Nozhkin-IP32";

-- Забирання прав
REVOKE INSERT ON tab1 FROM "Nozhkin-IP32";