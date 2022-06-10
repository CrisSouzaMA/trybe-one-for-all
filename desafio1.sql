/* Crie um banco com o nome de SpotifyClone. Resposta: */

DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plan(
    plan_id INT auto_increment PRIMARY KEY,
    type VARCHAR(45) NOT NULL,
    plan_value DECIMAL(8,2)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artist(
    artist_id INT auto_increment PRIMARY KEY,
    name VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT auto_increment PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    release_year YEAR NOT NULL,
    artist_id INT NOT NULL,
	FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.user(
    user_id INT auto_increment PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    signature_date DATE NOT NULL,
	FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.song(
    song_id INT auto_increment PRIMARY KEY,
    song_name VARCHAR(45) NOT NULL,
    album_id INT NOT NULL,
    song_duration INT NOT NULL,
	FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historic(
    historic_id INT NOT NULL,
    song_id INT NOT NULL,
    user_id INT NOT NULL,
    reproduction_date DATETIME,
    PRIMARY KEY(song_id,user_id),
	FOREIGN KEY (song_id) REFERENCES song(song_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.following_artist(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY(user_id, artist_id),
	FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;


INSERT INTO SpotifyClone.plan (plan_id, `type`, plan_value)
VALUES
  ('1', 'gratuito', '0.00'),
  ('2', 'universitário', '5.99'),
  ('3', 'pessoal', '6.99'),
  ('4', 'familiar', '7.99');

INSERT INTO SpotifyClone.user (user_id, `name`, age, plan_id, signature_date)
VALUES
  ('1', 'Thati', '23', '1', '2019-10-20'),
  ('2', 'Cintia', '35', '4', '2017-12-30'),
  ('3', 'Bill', '20', '2', '2019-06-05'),
  ('4', 'Roger', '45', '3', '2020-05-13'),
  ('5', 'Norman', '58', '3', '2017-02-17'),
  ('6', 'Patrick', '33', '4', '2017-01-06'),
  ('7', 'Vivian', '26', '2', '2018-01-05'),
  ('8', 'Carol', '19', '2', '2018-02-14'),
  ('9', 'Angelina', '42', '4', '2018-04-29'),
  ('10', 'Paul', '46', '4', '2017-01-17');
  
INSERT INTO SpotifyClone.artist (artist_id, `name`)
VALUES
  ('1', 'Walter Phoenix'),
  ('2', 'Peter Strong'),
  ('3', 'Lance Day'),
  ('4', 'Freedie Shannon'),
  ('5', 'Tyler Isle'),
  ('6', 'Fog');
  
INSERT INTO SpotifyClone.album (album_id, `name`, release_year, artist_id)
VALUES
  ('1', 'Envious', '1990', '1'),
  ('2', 'Exuberant', '1993', '1'),
  ('3', 'Hallowed Steam', '1995', '2'),
  ('4', 'Incandescent', '1998', '3'),
  ('5', 'Temporary Culture', '2001', '4'),
  ('6', 'Library of liberty', '2003', '4'),
  ('7', 'Chained Down', '2007', '5'),
  ('8', 'Cabinet of fools', '2012', '5'),
  ('9', 'No guarantees', '2015', '5'),
  ('10', 'Apparatus', '2015', '6');
  
INSERT INTO SpotifyClone.song (song_id, song_name, album_id, song_duration)
VALUES
  ('1', 'Soul For Us', '1', '200'),
  ('2', 'Reflections Of Magic', '1', '163'),
  ('3', 'Dance With Her Own', '1', '116'),
  ('4', 'Troubles Of My Inner Fire', '2', '203'),
  ('5', 'Time Fireworks', '2', '152'),
  ('6', 'Magic Circus', '3', '105'),
  ('7', 'Honey, So Do I', '3', '207'),
  ('8', "Sweetie, Let's Go Wild", '3', '139'),
  ('9', 'She Knows', '3', '244'),
  ('10', 'Fantasy For Me', '4', '100'),
  ('11', 'Celebration Of More', '4', '146'),
  ('12', 'Rock His Everything', '4', '223'),
  ('13', 'Home Forever', '4', '231'),
  ('14', 'Diamond Power', '4', '241'),
  ('15', "Let's Be Silly", '4', '132'),
  ('16', 'Thang Of Thunder', '5', '240'),
  ('17', 'Words Of Her Life', '5', '185'),
  ('18', 'Without My Streets', '5', '176'),
  ('19', 'Need Of The Evening', '6', '190'),
  ('20', 'History Of My Roses', '6', '222'),
  ('21', 'Without My Love', '6', '111'),
  ('22', 'Walking And Game', '6', '123'),
  ('23', 'Young And Father', '6', '197'),
  ('24', 'Finding My Traditions', '7', '179'),
  ('25', 'Walking And Man', '7', '229'),
  ('26', 'Hard And Time', '7', '135'),
  ('27', "Honey, I'm A Lone Wolf", '7', '150'),
  ('28', "She Thinks I Won't Stay Tonight", '8', '166'),
  ('29', "He Heard You're Bad For Me", '8', '154'),
  ('30', "He Hopes We Can't Stay", '8', '210'),
  ('31', 'I Know I Know', '8', '117'),
  ('32', "He's Walking Away", '9', '159'),
  ('33', "He's Trouble", '9', '138'),
  ('34', 'I Heard I Want To Bo Alone', '9', '120'),
  ('35', 'I Ride Alone', '9', '151'),
  ('36', 'Honey', '10', '79'),
  ('37', 'You Cheated On Me', '10', '95'),
  ('38', "Wouldn't It Be Nice", '10', '213'),
  ('39', 'Baby', '10', '136'),
  ('40', 'You Make Me Feel So..', '10', '83');

INSERT INTO SpotifyClone.historic (historic_id, song_id, user_id, reproduction_date)
VALUES
  ('1', '36', '1', '2020-02-28 10:45:55'),
  ('2', '25', '1', '2020-05-02 05:30:35'),
  ('3', '23', '1', '2020-03-06 11:22:33'),
  ('4', '14', '1', '2020-08-05 08:05:17'),
  ('5', '15', '1', '2020-09-14 16:32:22'),
  ('6', '34', '2', '2020-01-02 07:40:33'),
  ('7', '24', '2', '2020-05-16 06:16:22'),
  ('8', '21', '2', '2020-10-09 12:27:48'),
  ('9', '39', '2', '2020-09-21 13:14:46'),
  ('10', '6', '3', '2020-11-13 16:55:13'),
  ('11', '3', '3', '2020-12-05 18:38:30'),
  ('12', '26', '3', '2020-07-30 10:00:00'),
  ('13', '2', '4', '2021-08-15 17:10:10'),
  ('14', '35', '4', '2021-07-10 15:20:30'),
  ('15', '27', '4', '2021-01-09 01:44:33'),
  ('16', '7', '5', '2020-07-03 19:33:28'),
  ('17', '12', '5', '2017-02-24 21:14:22'),
  ('18', '14', '5', '2020-08-06 15:23:43'),
  ('19', '1', '5', '2020-11-10 13:52:27'),
  ('20', '38', '6', '2019-02-07 20:33:48'),
  ('21', '29', '6', '2017-01-24 00:31:17'),
  ('22', '30', '6', '2017-10-12 12:35:20'),
  ('23', '22', '6', '2018-05-29 14:56:41'),
  ('24', '5', '7', '2018-05-09 22:30:49'),
  ('25', '4', '7', '2020-07-27 12:52:58'),
  ('26', '11', '7', '2018-01-16 18:40:43'),
  ('27', '39', '8', '2018-03-21 16:56:40'),
  ('28', '40', '8', '2020-10-18 13:38:05'),
  ('29', '32', '8', '2019-05-25 08:14:03'),
  ('30', '33', '8', '2021-08-15 21:37:09'),
  ('31', '16', '9', '2021-05-24 17:23:45'),
  ('32', '17', '9', '2018-12-07 22:48:52'),
  ('33', '8', '9', '2021-03-14 06:14:26'),
  ('34', '9', '9', '2020-04-01 03:36:00'),
  ('35', '20', '10', '2017-02-06 08:21:34'),
  ('36', '21', '10', '2017-12-04 05:33:43'),
  ('37', '12', '10', '2017-07-27 05:24:49'),
  ('38', '13', '10', '2017-12-25 01:03:57');

INSERT INTO SpotifyClone.following_artist (user_id, artist_id)
VALUES
  ('1', '1'),
  ('1', '4'),
  ('1', '3'),
  ('2', '1'),
  ('2', '3'),
  ('3', '1'),
  ('3', '2'),
  ('4', '4'),
  ('5', '5'),
  ('5', '6'),
  ('6', '6'),
  ('6', '3'),
  ('6', '1'),
  ('7', '2'),
  ('7', '5'),
  ('8', '1'),
  ('8', '5'),
  ('9', '6'),
  ('9', '4'),
  ('9', '3'),
  ('10', '2'),
  ('10', '6');