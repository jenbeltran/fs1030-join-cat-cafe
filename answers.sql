CREATE DATABASE cat_cafe_join;

USE cat_cafe_join;

CREATE TABLE owners (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    street_address VARCHAR(255),
    phone_number VARCHAR(15) NOT NULL
);

INSERT INTO owners (first_name, last_name, email, street_address, phone_number)
VALUES 
('Jen', "Beltran", "jenbeltran@email.com", "123 York Street", "416-777-7777"),
("Ha", "Pham", "ha@email.com", "876 CN Tower Road", "416-888-9999"),
("Sally", "Duncan", "sally@email.com", "728 Water Cres", "647-000-1111");


CREATE TABLE vets (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    vet_first_name VARCHAR(255) NOT NULL,
    vet_last_name VARCHAR(255) NOT NULL,
    clinic_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    street_address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15) NOT NULL
);


INSERT INTO vets (vet_first_name, vet_last_name, clinic_name, email, street_address, phone_number)
VALUES 
("Meag", "Campbell", "Meow Clinic", "meowclinic@email.com", "3847 King Street", "416-222-4456"),
("Alan", "Castro", "Colab Clinic", "colabvetclinic@email.com", "283 East Hills Road", "647-222-9191"),
("Clinton", "Keating", "Colab Clinic", "colabvetclinic@email.com", "283 East Hills Road", "647-222-9191");


CREATE TABLE cats (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    breed VARCHAR(255),
    gender ENUM('Male', 'Female'),
    neutered BOOLEAN,
    owner_id INT,
    vet_id INT,
    
    FOREIGN KEY (owner_id)
        REFERENCES owners(id),

    FOREIGN KEY (vet_id)
        REFERENCES vets(id)    
);


INSERT INTO cats (name, breed, gender, neutered, owner_id, vet_id)
VALUES
("Tuna", "Siamese", "Female", 1, 1, 3),
("Marla", "Tabby", "Female", 1, 3, 1),
("Sam", "Maine Coon", "Male", 0, 2, 1),
("Toby", "Siamese", "Male", 0, 1, 3);



SELECT * FROM cats
JOIN owners
ON cats.owner_id = owners.id
WHERE cats.name="Tuna";



SELECT * FROM cats
JOIN owners
ON cats.owner_id = owners.id
WHERE owners.first_name="Jen";



SELECT * FROM cats
JOIN vets
ON cats.vet_id = vets.id
WHERE cats.neutered=0;




INSERT INTO vets (vet_first_name, vet_last_name, clinic_name, email, street_address, phone_number)
VALUES 
("Mauro", "Medden", "Happy Cat Clinic", "mauro@email.com", "123 Colab Street", "111-111-2222");

UPDATE cats SET vet_id=4 WHERE name="Tuna";




