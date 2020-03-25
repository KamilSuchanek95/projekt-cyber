-- Database: cwmbd_project

-- add sample data

INSERT INTO patients
VALUES(1,'Kamil','Suchenek','Bławatkowa 9/13','Gliwice','43898765672','467598762','---');
INSERT INTO patients VALUES
(2,'Dominika','Gabór','Nakło Śląskie Morcinka 9','Tarnowskie Góry','87654678926','765398267','al.tetracykliny'),
(3,'Agnieszka','Rudziun','Tarnogorska 8 Stare Tarnowice','Oświęcim','67489356728','654329873','-'),
(4,'Natalia','Matuszek','Słoneczna 5 Krupski Młyn','Lubliniec','78754378961','876539846','agorafobia'),
(5,'Marcin','Kasprzyk','Celiny 8 Tąpkowice','Ruda Śląska','87546783218','987654323','po odwyku');

--SELECT * FROM patients;

INSERT INTO disease_codes VALUES
(1,'R10.1','Pain localized to upper abdomen'),
(2,'R50.9','Fever, unspecified'),
(3,'T12','Fracture of lower limb, level unspecified'),
(4,'B35','Dermatophytosis'),
(5,'-','-');
--SELECT*FROM disease_codes;

INSERT INTO doctors VALUES
(1,'Adam','Taki','8765398','Dermatolog'),
(2,'Kunegunda','Ble','7856473','Alergolog'),
(3,'Julia','Taka','7854981','Ortopeda'),
(4,'Michał','Mia','7589823','Internista'),
(5,'Paweł','Torba','8573471','Gastrolog');
--SELECT * FROM doctors;

INSERT INTO visits VALUES
(1,1,1,'Zebrano starcie -> grzybica','klotrymazolum raz dziennie','2010-12-12'),
(2,2,2,'Próba śródskórnie standard','nie wdychać kurzu','2005-11-07'),
(3,3,3,'Złamana noga','Nie chodzić','2001-10-30'),
(4,4,4,'Wizyta kontrolna','-','1990-12-05'),
(5,5,5,'niestrawność','Nie jeść ciężkostrawnych rzeczy','2015-03-04');

--SELECT*FROM visits;

INSERT INTO diagnosis VALUES
(1,1,4),
(2,2,5),
(3,3,3),
(4,4,5),
(5,5,1);

--SELECT * FROM diagnosis;

INSERT INTO drugs VALUES
(1,'-'),
(2,'aspiryna'),
(3,'sulfonamidy'),
(4,'klotrymazol'),
(5,'apap');
--SELECT*FROM drugs;

INSERT INTO prescriptions VALUES
(1,1,4,'20mg na dzień * 7'),
(2,2,2,'200mg 2* tyg'),
(3,3,5,'5mg tyg'),
(4,1,4,'40mg 3*'),
(5,1,3,'4mg');
--SELECT*FROM prescriptions;

