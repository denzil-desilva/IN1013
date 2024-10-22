USE Pets;

INSERT INTO petEvent VALUES
    ("Fluffy", "2020-10-15", "vet", "antibiotics");

INSERT INTO petPet VALUES
    ("Hammy", "Diane", "hamster", "M", "2010-10-30", NULL);

INSERT INTO petEvent VALUES
    ("Hammy", "2020-10-15", "vet", "antibiotics");

UPDATE petEvent 
SET remark = "5 kittens, 3 female, 2 male" 
WHERE petName = "Fluffy" AND eventdate = "1995-05-15";

UPDATE petEvent 
SET petName = "Claws" 
WHERE remark = "broken rib" AND eventdate = "1997-08-03";

UPDATE petPet 
SET death = "2020-09-01" 
WHERE petName = "Puffball";

DELETE petEvent.* FROM petEvent INNER JOIN petPet ON petPet.petName = petEvent.petName WHERE petPet.owner = "Harold";
DELETE FROM petPet WHERE owner = "Harold";

SELECT * FROM petPet;
SELECT * FROM petEvent;