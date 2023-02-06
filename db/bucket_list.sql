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

INSERT INTO cities (name, country_id) VALUES ('Jakarta', 4);
INSERT INTO cities (name, country_id) VALUES ('Surabaya', 4);
INSERT INTO cities (name, country_id) VALUES ('Bekasi', 4);

INSERT INTO cities (name, country_id) VALUES ('Karachi', 5);
INSERT INTO cities (name, country_id) VALUES ('Lahore', 5);
INSERT INTO cities (name, country_id) VALUES ('Faisalabad', 5);

INSERT INTO cities (name, country_id) VALUES ('Sao Paulo', 6);
INSERT INTO cities (name, country_id) VALUES ('Rio de Janeiro', 6);
INSERT INTO cities (name, country_id) VALUES ('Salvador', 6);

INSERT INTO cities (name, country_id) VALUES ('Lagos', 7);
INSERT INTO cities (name, country_id) VALUES ('Kano', 7);
INSERT INTO cities (name, country_id) VALUES ('Ibadan', 7);

INSERT INTO cities (name, country_id) VALUES ('Dhaka', 8);
INSERT INTO cities (name, country_id) VALUES ('Chattogram', 8);
INSERT INTO cities (name, country_id) VALUES ('Khulna', 8);

INSERT INTO cities (name, country_id) VALUES ('Moscow', 9);
INSERT INTO cities (name, country_id) VALUES ('Saint Petersburg', 9);
INSERT INTO cities (name, country_id) VALUES ('Novosibirsk', 9);

INSERT INTO cities (name, country_id) VALUES ('Mexico City', 10);
INSERT INTO cities (name, country_id) VALUES ('Guadalajara', 10);
INSERT INTO cities (name, country_id) VALUES ('Monterrey', 10);

INSERT INTO cities (name, country_id) VALUES ('Tokyo', 11);
INSERT INTO cities (name, country_id) VALUES ('Kyoto', 11);
INSERT INTO cities (name, country_id) VALUES ('Sapporo', 11);

INSERT INTO cities (name, country_id) VALUES ('Addis Ababa', 12);
INSERT INTO cities (name, country_id) VALUES ('Dire Dawa', 12);
INSERT INTO cities (name, country_id) VALUES ('Bahir Dar', 12);

INSERT INTO cities (name, country_id) VALUES ('Manila', 13);
INSERT INTO cities (name, country_id) VALUES ('Makati', 13);
INSERT INTO cities (name, country_id) VALUES ('Alaminos', 13);

INSERT INTO cities (name, country_id) VALUES ('Cairo', 14);
INSERT INTO cities (name, country_id) VALUES ('Luxor', 14);
INSERT INTO cities (name, country_id) VALUES ('Alexandria', 14);

INSERT INTO cities (name, country_id) VALUES ('Ho Chi Minh City', 15);
INSERT INTO cities (name, country_id) VALUES ('Hanoi', 15);
INSERT INTO cities (name, country_id) VALUES ('Hue', 15);

INSERT INTO cities (name, country_id) VALUES ('Kinshasa', 16);
INSERT INTO cities (name, country_id) VALUES ('Likasi', 16);
INSERT INTO cities (name, country_id) VALUES ('Lubumbashi', 16);

INSERT INTO cities (name, country_id) VALUES ('Istanbul', 17);
INSERT INTO cities (name, country_id) VALUES ('Izmir', 17);
INSERT INTO cities (name, country_id) VALUES ('Ankara', 17);

INSERT INTO cities (name, country_id) VALUES ('Tehran', 18);
INSERT INTO cities (name, country_id) VALUES ('Kermanshah', 18);
INSERT INTO cities (name, country_id) VALUES ('Tabriz', 18);

INSERT INTO cities (name, country_id) VALUES ('Berlin', 19);
INSERT INTO cities (name, country_id) VALUES ('Munich', 19);
INSERT INTO cities (name, country_id) VALUES ('Frankfurt', 19);

INSERT INTO cities (name, country_id) VALUES ('Bangkok', 20);
INSERT INTO cities (name, country_id) VALUES ('Phuket', 20);
INSERT INTO cities (name, country_id) VALUES ('Thani', 20);

INSERT INTO cities (name, country_id) VALUES ('London', 21);
INSERT INTO cities (name, country_id) VALUES ('Edinburgh', 21);
INSERT INTO cities (name, country_id) VALUES ('Cardiff', 21);

INSERT INTO cities (name, country_id) VALUES ('Paris', 22);
INSERT INTO cities (name, country_id) VALUES ('Marseille', 22);
INSERT INTO cities (name, country_id) VALUES ('Lille', 22);

INSERT INTO cities (name, country_id) VALUES ('Rome', 23);
INSERT INTO cities (name, country_id) VALUES ('Venice', 23);
INSERT INTO cities (name, country_id) VALUES ('Milan', 23);

INSERT INTO cities (name, country_id) VALUES ('Tanga', 24);
INSERT INTO cities (name, country_id) VALUES ('Mwanza', 24);
INSERT INTO cities (name, country_id) VALUES ('Mbeya', 24);

INSERT INTO cities (name, country_id) VALUES ('Cape Town', 25);
INSERT INTO cities (name, country_id) VALUES ('Johannesburg', 25);
INSERT INTO cities (name, country_id) VALUES ('Pretoria', 25);

INSERT INTO cities (name, country_id) VALUES ('Yangon', 26);
INSERT INTO cities (name, country_id) VALUES ('Bago', 26);
INSERT INTO cities (name, country_id) VALUES ('Sittwe', 26);

INSERT INTO cities (name, country_id) VALUES ('Nairobi', 27);
INSERT INTO cities (name, country_id) VALUES ('Mombasa', 27);
INSERT INTO cities (name, country_id) VALUES ('Meru', 27);

INSERT INTO cities (name, country_id) VALUES ('Seoul', 28);
INSERT INTO cities (name, country_id) VALUES ('Busan', 28);
INSERT INTO cities (name, country_id) VALUES ('Ulsan', 28);


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