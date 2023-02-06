DROP TABLE visits;
DROP TABLE sights;
DROP TABLE cities;
DROP TABLE users;
DROP TABLE countries;
CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    continent VARCHAR(255),
    population INT
);
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);
CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    country_id INT REFERENCES countries(id) ON DELETE CASCADE
);
CREATE TABLE sights (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    city_id INT REFERENCES cities(id) ON DELETE CASCADE
);
CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    city_id INT REFERENCES cities(id) ON DELETE CASCADE,
    visited BOOLEAN,
    on_list BOOLEAN
);
INSERT INTO countries (name, continent, population)
VALUES ('China', 'Asia', 1439323776);
INSERT INTO countries (name, continent, population)
VALUES ('India', 'Asia', 1380004385);
INSERT INTO countries (name, continent, population)
VALUES ('USA', 'North America', 331002651);
INSERT INTO countries (name, continent, population)
VALUES ('Indonesia', 'Asia', 273523615);
INSERT INTO countries (name, continent, population)
VALUES ('Pakistan', 'Asia', 220892340);
INSERT INTO countries (name, continent, population)
VALUES ('Brazil', 'South America', 212559417);
INSERT INTO countries (name, continent, population)
VALUES ('Nigeria', 'Africa', 206139589);
INSERT INTO countries (name, continent, population)
VALUES ('Bangladesh', 'Asia', 164689383);
INSERT INTO countries (name, continent, population)
VALUES ('Russia', 'Asia', 145934462);
INSERT INTO countries (name, continent, population)
VALUES ('Mexico', 'North America', 128932753);
INSERT INTO countries (name, continent, population)
VALUES ('Japan', 'Asia', 126476461);
INSERT INTO countries (name, continent, population)
VALUES ('Ethiopia', 'Africa', 114963588);
INSERT INTO countries (name, continent, population)
VALUES ('Philippines', 'Asia', 109581078);
INSERT INTO countries (name, continent, population)
VALUES ('Egypt', 'Africa', 102334404);
INSERT INTO countries (name, continent, population)
VALUES ('Vietnam', 'Asia', 97338579);
INSERT INTO countries (name, continent, population)
VALUES ('DR Congo', 'Africa', 89561403);
INSERT INTO countries (name, continent, population)
VALUES ('Turkey', 'Europe', 84339067);
INSERT INTO countries (name, continent, population)
VALUES ('Iran', 'Asia', 83992949);
INSERT INTO countries (name, continent, population)
VALUES ('Germany', 'Europe', 83783942);
INSERT INTO countries (name, continent, population)
VALUES ('Thailand', 'Asia', 69799978);
INSERT INTO countries (name, continent, population)
VALUES ('UK', 'Europe', 67886011);
INSERT INTO countries (name, continent, population)
VALUES ('France', 'Europe', 65273511);
INSERT INTO countries (name, continent, population)
VALUES ('Italy', 'Europe', 60461826);
INSERT INTO countries (name, continent, population)
VALUES ('Tanzania', 'Africa', 59734218);
INSERT INTO countries (name, continent, population)
VALUES ('South Africa', 'Africa', 59308690);
INSERT INTO countries (name, continent, population)
VALUES ('Myanmar', 'Asia', 54409800);
INSERT INTO countries (name, continent, population)
VALUES ('Kenya', 'Africa', 53771296);
INSERT INTO countries (name, continent, population)
VALUES ('South Korea', 'Asia', 51269185);

INSERT INTO cities (name, country_id) VALUES ('Shanghai', 1);
INSERT INTO cities (name, country_id) VALUES ('Beijing', 1);
INSERT INTO cities (name, country_id) VALUES ('Guangzhou', 1);

INSERT INTO sights (name, city_id) VALUES ('The Bund', 1);
INSERT INTO sights (name, city_id) VALUES ('The Oriental Pearl TV Tower', 1);
INSERT INTO sights (name, city_id) VALUES ('Yu Garden', 1);
INSERT INTO sights (name, city_id) VALUES ('The Great Wall of China', 2);
INSERT INTO sights (name, city_id) VALUES ('Temple of Heaven', 2);
INSERT INTO sights (name, city_id) VALUES ('Tiananmen Square', 2);
INSERT INTO sights (name, city_id) VALUES ('Chen Clan Ancestral Hall', 3);
INSERT INTO sights (name, city_id) VALUES ('Shamiandao Island', 3);
INSERT INTO sights (name, city_id) VALUES ('The Western Han Museum', 3);

INSERT INTO cities (name, country_id) VALUES ('Delhi', 2);
INSERT INTO cities (name, country_id) VALUES ('Mumbai', 2);
INSERT INTO cities (name, country_id) VALUES ('Kolkatka', 2);

INSERT INTO sights (name, city_id) VALUES ('India Gate', 4);
INSERT INTO sights (name, city_id) VALUES ('Red Fort', 4);
INSERT INTO sights (name, city_id) VALUES ('Lotus Temple', 4);
INSERT INTO sights (name, city_id) VALUES ('Gateway of India', 5);
INSERT INTO sights (name, city_id) VALUES ('Shivaji Maharaj', 5);
INSERT INTO sights (name, city_id) VALUES ('Shree Temple', 5);
INSERT INTO sights (name, city_id) VALUES ('Victoria Memorial', 6);
INSERT INTO sights (name, city_id) VALUES ('Howrah Bridge', 6);
INSERT INTO sights (name, city_id) VALUES ('Indian Museun', 6);

INSERT INTO cities (name, country_id) VALUES ('New York', 3);
INSERT INTO cities (name, country_id) VALUES ('Los Angeles', 3);
INSERT INTO cities (name, country_id) VALUES ('Chicago', 3);

INSERT INTO sights (name, city_id) VALUES ('Empire State Building', 7);
INSERT INTO sights (name, city_id) VALUES ('Central Park', 7);
INSERT INTO sights (name, city_id) VALUES ('Statue of Liberty', 7);
INSERT INTO sights (name, city_id) VALUES ('Museum of Art', 8);
INSERT INTO sights (name, city_id) VALUES ('The Getty', 8);
INSERT INTO sights (name, city_id) VALUES ('Griffith Observatory', 8);
INSERT INTO sights (name, city_id) VALUES ('Art Institute', 9);
INSERT INTO sights (name, city_id) VALUES ('Navy Pier', 9);
INSERT INTO sights (name, city_id) VALUES ('Millennium Park', 9);

INSERT INTO cities (name, country_id) VALUES ('Jakarta', 4);
INSERT INTO cities (name, country_id) VALUES ('Surabaya', 4);
INSERT INTO cities (name, country_id) VALUES ('Bekasi', 4);

INSERT INTO sights (name, city_id) VALUES ('Taman Mini', 10);
INSERT INTO sights (name, city_id) VALUES ('Museum Nasional', 10);
INSERT INTO sights (name, city_id) VALUES ('Istiqlal Mosque', 10);
INSERT INTO sights (name, city_id) VALUES ('House of Sampoerna', 11);
INSERT INTO sights (name, city_id) VALUES ('Submarine Momnument', 11);
INSERT INTO sights (name, city_id) VALUES ('Taman Bungkul', 11);
INSERT INTO sights (name, city_id) VALUES ('Summarecon Mall', 12);
INSERT INTO sights (name, city_id) VALUES ('Metropolitan Mall', 12);
INSERT INTO sights (name, city_id) VALUES ('Grand Galaxy Park', 12);

INSERT INTO cities (name, country_id) VALUES ('Karachi', 5);
INSERT INTO cities (name, country_id) VALUES ('Lahore', 5);
INSERT INTO cities (name, country_id) VALUES ('Faisalabad', 5);

INSERT INTO sights (name, city_id) VALUES ('Mazar-e-Quaid', 13);
INSERT INTO sights (name, city_id) VALUES ('Frere Hall', 13);
INSERT INTO sights (name, city_id) VALUES ('Air Force Museum', 13);
INSERT INTO sights (name, city_id) VALUES ('Badshahi Mosque', 14);
INSERT INTO sights (name, city_id) VALUES ('Lahore Fort', 14);
INSERT INTO sights (name, city_id) VALUES ('Lahore Museum', 14);
INSERT INTO sights (name, city_id) VALUES ('Lyallpur Galleria', 15);
INSERT INTO sights (name, city_id) VALUES ('Jinnah Gardens', 15);
INSERT INTO sights (name, city_id) VALUES ('D Ground Park', 15);

INSERT INTO cities (name, country_id) VALUES ('Sao Paulo', 6);
INSERT INTO cities (name, country_id) VALUES ('Rio de Janeiro', 6);
INSERT INTO cities (name, country_id) VALUES ('Salvador', 6);

INSERT INTO sights (name, city_id) VALUES ('Ibirapuera Park', 16);
INSERT INTO sights (name, city_id) VALUES ('Museum of Art', 16);
INSERT INTO sights (name, city_id) VALUES ('Sao Paulo Cathedral', 16);
INSERT INTO sights (name, city_id) VALUES ('Christ the Redeemer', 17);
INSERT INTO sights (name, city_id) VALUES ('Tijuca National Park', 17);
INSERT INTO sights (name, city_id) VALUES ('Maracana', 17);
INSERT INTO sights (name, city_id) VALUES ('Basilica do Senhor', 18);
INSERT INTO sights (name, city_id) VALUES ('Barra Lighthouse', 18);
INSERT INTO sights (name, city_id) VALUES ('Elevador Lacerda', 18);

INSERT INTO cities (name, country_id) VALUES ('Lagos', 7);
INSERT INTO cities (name, country_id) VALUES ('Kano', 7);
INSERT INTO cities (name, country_id) VALUES ('Ibadan', 7);

INSERT INTO sights (name, city_id) VALUES ('Punta de la Piedad', 19);
INSERT INTO sights (name, city_id) VALUES ('Praia de Camilo', 19);
INSERT INTO sights (name, city_id) VALUES ('Marina de Lagos', 19);
INSERT INTO sights (name, city_id) VALUES ('Gidan Makama Museum', 20);
INSERT INTO sights (name, city_id) VALUES ('Emirs Palace', 20);
INSERT INTO sights (name, city_id) VALUES ('Kano Zoo', 20);
INSERT INTO sights (name, city_id) VALUES ('Dache Foods', 21);
INSERT INTO sights (name, city_id) VALUES ('Bowers Tower', 21);
INSERT INTO sights (name, city_id) VALUES ('Topfat Art Gallery', 21);

INSERT INTO cities (name, country_id) VALUES ('Dhaka', 8);
INSERT INTO cities (name, country_id) VALUES ('Chattogram', 8);
INSERT INTO cities (name, country_id) VALUES ('Khulna', 8);

INSERT INTO sights (name, city_id) VALUES ('Ahsan Manzil Museum', 22);
INSERT INTO sights (name, city_id) VALUES ('National Parliament', 22);
INSERT INTO sights (name, city_id) VALUES ('Dhakeshwari Temple', 22);
INSERT INTO sights (name, city_id) VALUES ('Chittagong Zoo', 23);
INSERT INTO sights (name, city_id) VALUES ('Ethnological Museum', 23);
INSERT INTO sights (name, city_id) VALUES ('War Cemetery', 23);
INSERT INTO sights (name, city_id) VALUES ('Khan Jahan Ali Bridge', 24);
INSERT INTO sights (name, city_id) VALUES ('Shahid Hadis Park', 24);
INSERT INTO sights (name, city_id) VALUES ('Rupsha Railway Bridge', 24);

INSERT INTO cities (name, country_id) VALUES ('Moscow', 9);
INSERT INTO cities (name, country_id) VALUES ('Saint Petersburg', 9);
INSERT INTO cities (name, country_id) VALUES ('Novosibirsk', 9);

INSERT INTO sights (name, city_id) VALUES ('The Kremlin', 25);
INSERT INTO sights (name, city_id) VALUES ('St. Basils Cathedral', 25);
INSERT INTO sights (name, city_id) VALUES ('Gorky Park of Culture', 25);
INSERT INTO sights (name, city_id) VALUES ('St. Isaacs Cathedral', 26);
INSERT INTO sights (name, city_id) VALUES ('Savior on the Spilled Blood', 26);
INSERT INTO sights (name, city_id) VALUES ('State Hermitage Museum', 26);
INSERT INTO sights (name, city_id) VALUES ('Par Zoologique', 27);
INSERT INTO sights (name, city_id) VALUES ('Academic Theater', 27);
INSERT INTO sights (name, city_id) VALUES ('Akvamir', 27);

INSERT INTO cities (name, country_id) VALUES ('Mexico City', 10);
INSERT INTO cities (name, country_id) VALUES ('Guadalajara', 10);
INSERT INTO cities (name, country_id) VALUES ('Monterrey', 10);

INSERT INTO sights (name, city_id) VALUES ('Frida Kahlo Museum', 28);
INSERT INTO sights (name, city_id) VALUES ('Palacio de Bellas Artes', 28);
INSERT INTO sights (name, city_id) VALUES ('Museo Nacional de Antropolgia', 28);
INSERT INTO sights (name, city_id) VALUES ('Guadalajara Cathedral', 29);
INSERT INTO sights (name, city_id) VALUES ('Templo Exiatorio', 29);
INSERT INTO sights (name, city_id) VALUES ('Rotonda de los Jaliscienses', 29);
INSERT INTO sights (name, city_id) VALUES ('Monterey Bay Aquarium', 30);
INSERT INTO sights (name, city_id) VALUES ('Old Fishermans Wharf', 30);
INSERT INTO sights (name, city_id) VALUES ('Dennis the Menace Playground', 30);

INSERT INTO cities (name, country_id) VALUES ('Tokyo', 11);
INSERT INTO cities (name, country_id) VALUES ('Kyoto', 11);
INSERT INTO cities (name, country_id) VALUES ('Sapporo', 11);

INSERT INTO sights (name, city_id) VALUES ('Senso-ji', 31);
INSERT INTO sights (name, city_id) VALUES ('Meiji Jingu', 31);
INSERT INTO sights (name, city_id) VALUES ('Tokyo Skytree', 31);
INSERT INTO sights (name, city_id) VALUES ('Kinkaku-ji', 32);
INSERT INTO sights (name, city_id) VALUES ('Fushimi Inari Taisha', 32);
INSERT INTO sights (name, city_id) VALUES ('Kiyomizu-dera', 32);
INSERT INTO sights (name, city_id) VALUES ('Hokkaido Jingu', 33);
INSERT INTO sights (name, city_id) VALUES ('Sapporo TV Tower', 33);
INSERT INTO sights (name, city_id) VALUES ('Sapporo Beer Museum', 33);

INSERT INTO cities (name, country_id) VALUES ('Addis Ababa', 12);
INSERT INTO cities (name, country_id) VALUES ('Dire Dawa', 12);
INSERT INTO cities (name, country_id) VALUES ('Bahir Dar', 12);

INSERT INTO sights (name, city_id) VALUES ('National Museum of Ehiopia', 34);
INSERT INTO sights (name, city_id) VALUES ('Holy Trinity Cathedral', 34);
INSERT INTO sights (name, city_id) VALUES ('Ethnological Museum', 34);
INSERT INTO sights (name, city_id) VALUES ('Kafira Market', 35);
INSERT INTO sights (name, city_id) VALUES ('Djibouti Rail Yard', 35);
INSERT INTO sights (name, city_id) VALUES ('Dire Dawa Market', 35);
INSERT INTO sights (name, city_id) VALUES ('Lions Art Gallery', 36);
INSERT INTO sights (name, city_id) VALUES ('Bahir Dar Abay River Bridge', 36);
INSERT INTO sights (name, city_id) VALUES ('Bezawit Palace', 36);

INSERT INTO cities (name, country_id) VALUES ('Manila', 13);
INSERT INTO cities (name, country_id) VALUES ('Makati', 13);
INSERT INTO cities (name, country_id) VALUES ('Alaminos', 13);

INSERT INTO sights (name, city_id) VALUES ('Rizal Park', 37);
INSERT INTO sights (name, city_id) VALUES ('Fort Santiago', 37);
INSERT INTO sights (name, city_id) VALUES ('Museum of Fine Arts', 37);
INSERT INTO sights (name, city_id) VALUES ('Ayala Triangle Gardens', 38);
INSERT INTO sights (name, city_id) VALUES ('Ayala Museum', 38);
INSERT INTO sights (name, city_id) VALUES ('Yuchengco Museum', 38);
INSERT INTO sights (name, city_id) VALUES ('Hundred Islands National Park', 39);
INSERT INTO sights (name, city_id) VALUES ('Christ the Savior', 39);
INSERT INTO sights (name, city_id) VALUES ('Cuenco Cave', 39);

INSERT INTO cities (name, country_id) VALUES ('Cairo', 14);
INSERT INTO cities (name, country_id) VALUES ('Luxor', 14);
INSERT INTO cities (name, country_id) VALUES ('Alexandria', 14);

INSERT INTO sights (name, city_id) VALUES ('The Egyptian Museum', 40);
INSERT INTO sights (name, city_id) VALUES ('Khan el-Khalili', 40);
INSERT INTO sights (name, city_id) VALUES ('Al-Azhar Mosque', 40);
INSERT INTO sights (name, city_id) VALUES ('karnak', 41);
INSERT INTO sights (name, city_id) VALUES ('Luxor Temple', 41);
INSERT INTO sights (name, city_id) VALUES ('Luxor Museum', 41);
INSERT INTO sights (name, city_id) VALUES ('Montaza Palace', 42);
INSERT INTO sights (name, city_id) VALUES ('Citadel of Qaitbay', 42);
INSERT INTO sights (name, city_id) VALUES ('Bibliotheca Alexandrina', 42);

INSERT INTO cities (name, country_id) VALUES ('Ho Chi Minh City', 15);
INSERT INTO cities (name, country_id) VALUES ('Hanoi', 15);
INSERT INTO cities (name, country_id) VALUES ('Hue', 15);

INSERT INTO sights (name, city_id) VALUES ('War Remnants Museum', 43);
INSERT INTO sights (name, city_id) VALUES ('Reunification Palace', 43);
INSERT INTO sights (name, city_id) VALUES ('Cu Chi Tunnel', 43);
INSERT INTO sights (name, city_id) VALUES ('Temple of Literature', 44);
INSERT INTO sights (name, city_id) VALUES ('Ho Chi Minhs Mausoleum', 44);
INSERT INTO sights (name, city_id) VALUES ('Hoa Lo Prison Relic', 44);
INSERT INTO sights (name, city_id) VALUES ('Thien Mu Pagoda', 45);
INSERT INTO sights (name, city_id) VALUES ('Mausoleum of Emperor Khia', 45);
INSERT INTO sights (name, city_id) VALUES ('Mausoleum of Emperor Tu Duc', 45);

INSERT INTO cities (name, country_id) VALUES ('Kinshasa', 16);
INSERT INTO cities (name, country_id) VALUES ('Likasi', 16);
INSERT INTO cities (name, country_id) VALUES ('Lubumbashi', 16);

INSERT INTO sights (name, city_id) VALUES ('Lola ya Bonobo Sanctuary', 46);
INSERT INTO sights (name, city_id) VALUES ('Academia de Bellas Artes', 46);
INSERT INTO sights (name, city_id) VALUES ('Lac Ma Vallee', 46);
INSERT INTO sights (name, city_id) VALUES ('Walking Tour', 47);
INSERT INTO sights (name, city_id) VALUES ('Katanga Tour', 47);
INSERT INTO sights (name, city_id) VALUES ('Likasi Lakes', 47);
INSERT INTO sights (name, city_id) VALUES ('Catherdral St Pierre', 48);
INSERT INTO sights (name, city_id) VALUES ('Lac Kipopo', 48);
INSERT INTO sights (name, city_id) VALUES ('Zoological Garden', 48);

INSERT INTO cities (name, country_id) VALUES ('Istanbul', 17);
INSERT INTO cities (name, country_id) VALUES ('Izmir', 17);
INSERT INTO cities (name, country_id) VALUES ('Ankara', 17);

INSERT INTO sights (name, city_id) VALUES ('Hagia Sophia', 49);
INSERT INTO sights (name, city_id) VALUES ('The Blue Mosque', 49);
INSERT INTO sights (name, city_id) VALUES ('Grand Bazaar', 49);
INSERT INTO sights (name, city_id) VALUES ('Archaeological Museum', 50);
INSERT INTO sights (name, city_id) VALUES ('Historial Elevator Building', 50);
INSERT INTO sights (name, city_id) VALUES ('Aziz Polikarps Church', 50);
INSERT INTO sights (name, city_id) VALUES ('Anitkabir', 51);
INSERT INTO sights (name, city_id) VALUES ('Museum of Anatolian', 51);
INSERT INTO sights (name, city_id) VALUES ('Ankara Castle', 51);

INSERT INTO cities (name, country_id) VALUES ('Tehran', 18);
INSERT INTO cities (name, country_id) VALUES ('Kermanshah', 18);
INSERT INTO cities (name, country_id) VALUES ('Tabriz', 18);

INSERT INTO sights (name, city_id) VALUES ('Shahyad Tower', 52);
INSERT INTO sights (name, city_id) VALUES ('Tabiat Bridge', 52);
INSERT INTO sights (name, city_id) VALUES ('Golestan Palace', 52);
INSERT INTO sights (name, city_id) VALUES ('Taq-e Bostan', 53);
INSERT INTO sights (name, city_id) VALUES ('Tekiye Moaven Al Molk', 53);
INSERT INTO sights (name, city_id) VALUES ('Shafei Jameh Mosque', 53);
INSERT INTO sights (name, city_id) VALUES ('Tabriz Grand Bazaar', 54);
INSERT INTO sights (name, city_id) VALUES ('Blue Mosque', 54);
INSERT INTO sights (name, city_id) VALUES ('Arg-e-Alishah', 54);

INSERT INTO cities (name, country_id) VALUES ('Berlin', 19);
INSERT INTO cities (name, country_id) VALUES ('Munich', 19);
INSERT INTO cities (name, country_id) VALUES ('Frankfurt', 19);

INSERT INTO sights (name, city_id) VALUES ('Brandenburg Gate', 55);
INSERT INTO sights (name, city_id) VALUES ('Reichstag Building', 55);
INSERT INTO sights (name, city_id) VALUES ('CharlottenBurg Palace', 55);
INSERT INTO sights (name, city_id) VALUES ('English Garden', 56);
INSERT INTO sights (name, city_id) VALUES ('Marienplatz', 56);
INSERT INTO sights (name, city_id) VALUES ('Victuals Market', 56);
INSERT INTO sights (name, city_id) VALUES ('Palm Gardens', 57);
INSERT INTO sights (name, city_id) VALUES ('Stadel Museum', 57);
INSERT INTO sights (name, city_id) VALUES ('Alte Oper', 57);

INSERT INTO cities (name, country_id) VALUES ('Bangkok', 20);
INSERT INTO cities (name, country_id) VALUES ('Phuket', 20);
INSERT INTO cities (name, country_id) VALUES ('Thani', 20);

INSERT INTO sights (name, city_id) VALUES ('The Grand Palace', 58);
INSERT INTO sights (name, city_id) VALUES ('Chatuchak Weekend Market', 58);
INSERT INTO sights (name, city_id) VALUES ('Wat Traimit Withayaram', 58);
INSERT INTO sights (name, city_id) VALUES ('The Big Buddha', 59);
INSERT INTO sights (name, city_id) VALUES ('Monkey Hill Viewpoint', 59);
INSERT INTO sights (name, city_id) VALUES ('Old Phuket Town', 59);
INSERT INTO sights (name, city_id) VALUES ('Khao Sok National Park', 60);
INSERT INTO sights (name, city_id) VALUES ('City Pillar Shrine', 60);
INSERT INTO sights (name, city_id) VALUES ('Ko Lamphu Public Park', 60);

INSERT INTO cities (name, country_id) VALUES ('London', 21);
INSERT INTO cities (name, country_id) VALUES ('Edinburgh', 21);
INSERT INTO cities (name, country_id) VALUES ('Cardiff', 21);

INSERT INTO sights (name, city_id) VALUES ('Tower of London', 61);
INSERT INTO sights (name, city_id) VALUES ('London Eye', 61);
INSERT INTO sights (name, city_id) VALUES ('Buckingham Palace', 61);
INSERT INTO sights (name, city_id) VALUES ('Edinburgh Castle', 62);
INSERT INTO sights (name, city_id) VALUES ('National Museum of Scotland', 62);
INSERT INTO sights (name, city_id) VALUES ('Holyrood Palace', 62);
INSERT INTO sights (name, city_id) VALUES ('Cardiff Castle', 63);
INSERT INTO sights (name, city_id) VALUES ('National Museum Cardiff', 63);
INSERT INTO sights (name, city_id) VALUES ('Wales Millennium Centre', 63);

INSERT INTO cities (name, country_id) VALUES ('Paris', 22);
INSERT INTO cities (name, country_id) VALUES ('Marseille', 22);
INSERT INTO cities (name, country_id) VALUES ('Lille', 22);

INSERT INTO sights (name, city_id) VALUES ('Eiffel Tower', 64);
INSERT INTO sights (name, city_id) VALUES ('Louvre Museum', 64);
INSERT INTO sights (name, city_id) VALUES ('Arc de Triomphe', 64);
INSERT INTO sights (name, city_id) VALUES ('Basilique Notre-Dame', 65);
INSERT INTO sights (name, city_id) VALUES ('Museum of Civilizations', 65);
INSERT INTO sights (name, city_id) VALUES ('Cathedrale La Major', 65);
INSERT INTO sights (name, city_id) VALUES ('Palace des Beaux Arts', 66);
INSERT INTO sights (name, city_id) VALUES ('La Vielle Bourse', 66);
INSERT INTO sights (name, city_id) VALUES ('Musee de Hospice', 66);

INSERT INTO cities (name, country_id) VALUES ('Rome', 23);
INSERT INTO cities (name, country_id) VALUES ('Venice', 23);
INSERT INTO cities (name, country_id) VALUES ('Milan', 23);

INSERT INTO sights (name, city_id) VALUES ('Colosseum', 67);
INSERT INTO sights (name, city_id) VALUES ('Pantheon', 67);
INSERT INTO sights (name, city_id) VALUES ('Trevi Fountain', 67);
INSERT INTO sights (name, city_id) VALUES ('St. Marks Square', 68);
INSERT INTO sights (name, city_id) VALUES ('St. Marks Basilica', 68);
INSERT INTO sights (name, city_id) VALUES ('Rialto Bridge', 68);
INSERT INTO sights (name, city_id) VALUES ('Duomo di Milano', 69);
INSERT INTO sights (name, city_id) VALUES ('Galleria Vittorio', 69);
INSERT INTO sights (name, city_id) VALUES ('Sforzesco Castle', 69);

INSERT INTO cities (name, country_id) VALUES ('Tanga', 24);
INSERT INTO cities (name, country_id) VALUES ('Mwanza', 24);
INSERT INTO cities (name, country_id) VALUES ('Mbeya', 24);

INSERT INTO sights (name, city_id) VALUES ('Amboni Caves', 70);
INSERT INTO sights (name, city_id) VALUES ('Tanga Museum', 70);
INSERT INTO sights (name, city_id) VALUES ('Mkomazi', 70);
INSERT INTO sights (name, city_id) VALUES ('Bismarck Rock', 71);
INSERT INTO sights (name, city_id) VALUES ('Saanane National Park', 71);
INSERT INTO sights (name, city_id) VALUES ('Rock City Mall', 71);
INSERT INTO sights (name, city_id) VALUES ('Lake Ngozi', 72);
INSERT INTO sights (name, city_id) VALUES ('Mbeya Zoo', 72);
INSERT INTO sights (name, city_id) VALUES ('Loleza Mountain', 72);

INSERT INTO cities (name, country_id) VALUES ('Cape Town', 25);
INSERT INTO cities (name, country_id) VALUES ('Johannesburg', 25);
INSERT INTO cities (name, country_id) VALUES ('Pretoria', 25);

INSERT INTO sights (name, city_id) VALUES ('V & A Waterfront', 73);
INSERT INTO sights (name, city_id) VALUES ('Two Oceans Aquarium', 73);
INSERT INTO sights (name, city_id) VALUES ('Zeitz Museum', 73);
INSERT INTO sights (name, city_id) VALUES ('Gold Reef Theme Park', 74);
INSERT INTO sights (name, city_id) VALUES ('Constitution Hill Precint', 74);
INSERT INTO sights (name, city_id) VALUES ('Apartheid Museum', 74);
INSERT INTO sights (name, city_id) VALUES ('Voortrekker Monument', 75);
INSERT INTO sights (name, city_id) VALUES ('Union Buildings', 75);
INSERT INTO sights (name, city_id) VALUES ('Freedom Park', 75);

INSERT INTO cities (name, country_id) VALUES ('Yangon', 26);
INSERT INTO cities (name, country_id) VALUES ('Bago', 26);
INSERT INTO cities (name, country_id) VALUES ('Sittwe', 26);

INSERT INTO sights (name, city_id) VALUES ('Shwedagon Pagoda', 76);
INSERT INTO sights (name, city_id) VALUES ('Sule Pagoda', 76);
INSERT INTO sights (name, city_id) VALUES ('Chaukhtatgyi Buddha Temple', 76);
INSERT INTO sights (name, city_id) VALUES ('Kyaik Pun Pagoda', 77);
INSERT INTO sights (name, city_id) VALUES ('Golden Palace', 77);
INSERT INTO sights (name, city_id) VALUES ('Hinthagon Pagoda', 77);
INSERT INTO sights (name, city_id) VALUES ('Buddhist Museum', 78);
INSERT INTO sights (name, city_id) VALUES ('U Ottama Park', 78);
INSERT INTO sights (name, city_id) VALUES ('Sittwe View Point Park', 78);

INSERT INTO cities (name, country_id) VALUES ('Nairobi', 27);
INSERT INTO cities (name, country_id) VALUES ('Mombasa', 27);
INSERT INTO cities (name, country_id) VALUES ('Meru', 27);

INSERT INTO sights (name, city_id) VALUES ('Nairobi National Park', 79);
INSERT INTO sights (name, city_id) VALUES ('Giraffe Centre', 79);
INSERT INTO sights (name, city_id) VALUES ('Karen Blixen Museum', 79);
INSERT INTO sights (name, city_id) VALUES ('Fort Jesus Museum', 80);
INSERT INTO sights (name, city_id) VALUES ('Haller Park', 80);
INSERT INTO sights (name, city_id) VALUES ('Old Town', 80);
INSERT INTO sights (name, city_id) VALUES ('Mount Kenya Nationa Park', 81);
INSERT INTO sights (name, city_id) VALUES ('Lewa Wildlife Conservancy', 81);
INSERT INTO sights (name, city_id) VALUES ('Ngare Ndare Forest Park', 81);

INSERT INTO cities (name, country_id) VALUES ('Seoul', 28);
INSERT INTO cities (name, country_id) VALUES ('Busan', 28);
INSERT INTO cities (name, country_id) VALUES ('Ulsan', 28);

INSERT INTO sights (name, city_id) VALUES ('Gyeongbokgung Palace', 82);
INSERT INTO sights (name, city_id) VALUES ('N Seoul Tower', 82);
INSERT INTO sights (name, city_id) VALUES ('National Museum of Korea', 82);
INSERT INTO sights (name, city_id) VALUES ('Haedong Temple', 83);
INSERT INTO sights (name, city_id) VALUES ('Taejongdae Resort Park', 83);
INSERT INTO sights (name, city_id) VALUES ('Gamcheon Culture Village', 83);
INSERT INTO sights (name, city_id) VALUES ('Daewangam Park', 84);
INSERT INTO sights (name, city_id) VALUES ('Ganjeolgot Cape', 84);
INSERT INTO sights (name, city_id) VALUES ('Taehwagang National Garden', 84);


INSERT INTO users (first_name, last_name) VALUES ('Harley', 'Quinn');
INSERT INTO users (first_name, last_name) VALUES ('Ellen', 'Ripley');
INSERT INTO users (first_name, last_name) VALUES ('Pepper', 'Potts');
INSERT INTO users (first_name, last_name) VALUES ('Lara', 'Croft');
INSERT INTO users (first_name, last_name) VALUES ('Mia', 'Wallace');
INSERT INTO users (first_name, last_name) VALUES ('Vincent', 'Vega');
INSERT INTO users (first_name, last_name) VALUES ('Mark', 'Corrigan');
INSERT INTO users (first_name, last_name) VALUES ('Jeremy', 'Usbourne');
INSERT INTO users (first_name, last_name) VALUES ('Henry', 'Hill');
INSERT INTO users (first_name, last_name) VALUES ('Jack', 'Sparrow');

INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (1, 1, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (1, 2, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (1, 3, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (2, 4, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (2, 5, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (2, 6, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (3, 7, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (3, 8, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (3, 9, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (4, 10, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (4, 11, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (4, 12, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (5, 13, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (5, 14, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (5, 15, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (6, 16, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (6, 17, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (6, 18, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (7, 19, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (7, 20, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (7, 21, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (8, 22, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (8, 23, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (8, 24, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (9, 25, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (9, 26, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (9, 27, False, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (10, 28, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (10, 29, True, True);
INSERT INTO visits (user_id, city_id, visited, on_list) VALUES (10, 30, False, True);