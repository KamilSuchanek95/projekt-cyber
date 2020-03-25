-- modyfikacja przy szyfrowaniu peselu
ALTER TABLE patients DROP COLUMN pesel;

CREATE TABLE pesels (
        pesel_id SERIAL PRIMARY KEY,
        pesel VARCHAR UNIQUE);
        
ALTER TABLE patients ADD COLUMN  pesel_id SERIAL UNIQUE REFERENCES pesels;

INSERT INTO pesels (pesel) VALUES 
(crypt('66666666666',GEN_SALT('md5'))),
(crypt('77777777777',GEN_SALT('md5'))),
(crypt('88888888888',GEN_SALT('md5'))),
(crypt('99999999999',GEN_SALT('md5'))),
(crypt('10101010101',GEN_SALT('md5')));

UPDATE patients SET pesel_id = 1 WHERE patient_id = 1;
UPDATE patients SET pesel_id = 2 WHERE patient_id = 2;
UPDATE patients SET pesel_id = 3 WHERE patient_id = 3;
UPDATE patients SET pesel_id = 4 WHERE patient_id = 4;
UPDATE patients SET pesel_id = 5 WHERE patient_id = 5;

SELECT * FROM patients WHERE
pesel_id = (SELECT pesel_id FROM pesels WHERE
		   pesel = crypt('11111111111', pesel));
