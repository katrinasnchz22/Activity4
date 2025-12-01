CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors(
doctorid INT PRIMARY KEY,
dfirstname VARCHAR(50),
dlastname VARCHAR(50),
speciality VARCHAR(100),
phone VARCHAR(15),
email VARCHAR(100)
);

CREATE TABLE invoices(
invoiceid INT PRIMARY KEY,
appointid INT,
totalamount DECIMAL(10, 2),
paymentdate TIME
);

CREATE TABLE medicalrecords(
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners(
    ownerid, ofirstname, olastname, address, phone, email
)
VALUES
(1, 'Astra', 'Moonfield', 'Crystal Ridge, Northstar Valley', '09194561234', 'astra.moonfield@stargaze.com'),
(2, 'Rico', 'Driftwood', 'Shoreline Avenue, Coral Bay', '09287654321', 'ricodriftwood@seabreeze.net'),
(3, 'Elara', 'Solstice', 'Sunhaven District, Lumina City', '09375649821', 'elara.solstice@lumina.co'),
(4, 'Jaxon', 'Blackwell', 'Ironforge Street, Emberfall', '09451234987', 'jax.blackwell@forgeworks.io'),
(5, 'Talia', 'Evergreen', 'Whisperwind Road, Evergreen Forest', '09562347986', 'talia@evergreenforest.org'),
(6, 'Orion', 'Skylark', 'Cloudcrest Heights, Skyreach', '09178453629', 'orion.skylark@celesteair.com'),
(7, 'Mira', 'Lockhart', 'Silverwood Lane, Frostholm', '09286753145', 'mira.lockhart@silvermail.net'),
(8, 'Kael', 'Stormborn', 'Thunderpeak Ridge, Stormhold', '09399887722', 'kael.stormborn@thunderhub.gg'),
(9, 'Selene', 'Riversong', 'Moonwater Village, Azure Plains', '09467788990', 'selene.riversong@ripplemail.org'),
(10, 'Finn', 'Brightspark', 'Gadget Row, Clockwork District', '09574561278', 'finn.brightspark@mechtech.io');



