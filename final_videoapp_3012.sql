-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2018 at 02:59 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_videoapp_3012`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(130) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G - General Audiences'),
(2, 'PG', 'PG - Parental Guidance Suggested'),
(3, 'PG-13', 'PG-13 - Parents Strongly Cautious'),
(4, '14 A', '14 A - 14 years and up can watch'),
(5, 'R', 'R - Restricted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments_post`
--

DROP TABLE IF EXISTS `tbl_comments_post`;
CREATE TABLE IF NOT EXISTS `tbl_comments_post` (
  `comments_post_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_post_auth` varchar(130) NOT NULL,
  `comments_post_copy` text NOT NULL,
  `comments_post_date` timestamp NOT NULL,
  `comments_post_movie` mediumint(9) NOT NULL,
  `comments_post_rating` mediumint(9) NOT NULL,
  PRIMARY KEY (`comments_post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments_post`
--

INSERT INTO `tbl_comments_post` (`comments_post_id`, `comments_post_auth`, `comments_post_copy`, `comments_post_date`, `comments_post_movie`, `comments_post_rating`) VALUES
(86, '', 'Absolutely adore this film. King Arthur is the best monarch we have ever had, his legend is so interesting and love how Kiera Knightly plays in the movie. Best British Female actor ever! :)', '2018-04-23 00:25:08', 6, 3),
(72, '', 'Great Movie, loved it and can\'t get enough of this movie. :)', '2018-04-19 02:55:43', 7, 6),
(4, '', 'Great Movie! Best DC movie ever. ', '2018-04-20 14:55:00', 1, 6),
(74, '', 'Great Movie!', '2018-04-20 22:00:47', 8, 6),
(77, '', 'A Classic film, one of my favs! GO DISNEY! :)', '2018-04-21 19:01:49', 5, 3),
(78, '', 'Best Movie Ever!', '2018-04-22 04:50:18', 2, 6),
(79, '', 'Okay movie, not my fav', '2018-04-23 00:06:05', 3, 3),
(82, '', 'Love the music in this film. It\'s a charming and humorous adaption for the whole family to watch. The cute talking snowman is my fav! :)', '2018-04-23 00:19:31', 10, 6),
(83, '', 'This movie is funny and cute, love the signing and so does my little cousin!', '2018-04-20 10:20:04', 10, 5),
(84, '', 'Funny snowman! Couldn\'t stop laughing through the film. Please make another Frozen movie :)', '2018-04-23 00:22:18', 10, 6),
(85, '', 'The music is delightful to my ears, Belle has a great voice. Emma Watson is fantastic in this film.', '2018-04-23 00:23:23', 5, 6),
(87, '', 'Love the action and bravery you see in this film. Go Arthur!', '2018-04-23 00:26:09', 6, 6),
(88, '', 'Love this Marvel movie, best adaption ever.', '2018-04-23 00:27:02', 7, 8),
(89, '', 'Best Harry Potter film ever! Love every second of this film.', '2018-04-23 01:35:45', 15, 6),
(90, '', 'Biggest fan of Harry Potter. Love all the characters', '2018-04-23 01:36:21', 15, 10),
(91, '', 'Great Movie!', '2018-04-24 22:36:36', 5, 3),
(92, '', 'Not the best movie, but had a nice storyline', '2018-04-24 22:43:38', 10, 1),
(93, '', 'Great Movie, I love it.', '2018-04-24 22:46:59', 22, 3),
(94, '', 'Thought it would be different, I didn\'t like it!', '2018-04-24 22:50:46', 22, 1),
(95, '', 'Love this movie.', '2018-04-24 22:51:36', 22, 3),
(96, '', 'Okay movie, wouldn\'t watch it again', '2018-04-24 22:53:55', 22, 2),
(97, '', 'Really fun and energetic story line.', '2018-04-24 22:55:31', 22, 5),
(98, '', 'Just the perfect fairy tale and funny characters. ', '2018-04-24 23:00:32', 23, 5),
(99, '', 'The talking animals are so cute! Good movie for the family. ', '2018-04-24 23:02:25', 23, 5),
(100, '', 'This movie is great. My little cousin dances and sings with the animals.', '2018-04-24 23:06:52', 23, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(130) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'Animation'),
(11, 'War'),
(12, 'Family'),
(13, 'Fantasy'),
(14, 'Romance'),
(15, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(85) NOT NULL,
  `movies_title` varchar(130) NOT NULL,
  `movies_year` varchar(10) NOT NULL,
  `movies_runtime` varchar(30) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(85) NOT NULL,
  `movies_release` varchar(130) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'guardians2.jpg', 'Guardians of the Galaxy 2', '2017', '2h 16m', 'The Guardians must fight to keep their newfound family together as they unravel a mystery.', 'default.mp4', 'May 5, 2017'),
(2, 'apes.jpg', 'War for the Planet of the Apes', '2017', '2h 20m', 'Caesar (Andy Serkis) and his apes are forced into a deadly conflict with an army of humans led by a ruthless colonel (Woody Harrelson). After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind. As the journey finally brings them face to face, Caesar and the colonel are pitted against each other in an epic battle that will determine the fate of both of their species and the future of the planet.', 'default.mp4', 'July 10, 2017'),
(3, 'man.jpg', 'Spider-Man: Homecoming', '2017', '2h 13m', 'Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man. He also tries to return to his normal daily routine -- distracted by thoughts of proving himself to be more than just a friendly neighborhood superhero. Peter must soon put his powers to the test when the evil Vulture emerges to threaten everything that he holds dear.', 'default.mp4', 'July 7, 2017'),
(4, 'park.jpg', 'Jurassic Park', '1993', '2h 7m', 'In Steven Spielberg\'s massive blockbuster, paleontologists Alan Grant (Sam Neill) and Ellie Sattler (Laura Dern) and mathematician Ian Malcolm (Jeff Goldblum) are among a select group chosen to tour an island theme park populated by dinosaurs created from prehistoric DNA. While the park\'s mastermind, billionaire John Hammond (Richard Attenborough), assures everyone that the facility is safe, they find out otherwise when various ferocious predators break free and go on the hunt.', 'default.mp4', 'June 9, 1993'),
(5, 'beauty.jpg', 'Beauty and the Beast', '2017', '2h 9min', 'An Disney adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love. ', 'default.mp4', 'March 17, 2017'),
(6, 'arthur.jpg', 'King Arthur', '2004', '2h 20m', 'In this interpretation of the classic tale, Arthur (Clive Owen) is a cavalry officer in the Roman army defending Hadrian\'s Wall against rebellious Britons. He and his troops are expecting to be relieved but are instead sent on a risky mission to rescue the Roman family of Marius Honorius, who proves a despicable torturer of pagans. Arthur frees one of them, Guinevere (Keira Knightley), who in turn brokers a truce between Arthur and the Britons so as to ward off an invading Saxon army.', 'default.mp4', 'July 7, 2004'),
(7, 'deadpool.jpg', 'Deadpool', '2016', '1h 48m', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge from the Marvel franchise.', 'default.mp4', 'Febuary 12, 2016'),
(8, 'arrival.jpg', 'Arrival', '2016', '1h 56m', 'When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.', 'default.mp4', 'November 11, 2016'),
(9, 'cool.jpg', 'Cool Runnings', '1993', '1h 38m', 'Four Jamaican bobsledders dream of competing in the Winter Olympics, despite never having seen snow. With the help of a disgraced former champion desperate to redeem himself, the Jamaicans set out to become worthy of Olympic selection, and go all out for glory.', 'default.mp4', 'October 1, 1993'),
(10, 'frozen.jpg', 'Frozen', '2013', '1h 49m', 'When their kingdom becomes trapped in perpetual winter, fearless Anna (Kristen Bell) joins forces with mountaineer Kristoff (Jonathan Groff) and his reindeer sidekick to find Anna\'s sister, Snow Queen Elsa (Idina Menzel), and break her icy spell. Although their epic journey leads them to encounters with mystical trolls, a comedic snowman (Josh Gad), harsh conditions, and magic at every turn, Anna and Kristoff bravely push onward in a race to save their kingdom from winter\'s cold grip.', 'default.mp4', 'November 27, 2013'),
(11, 'goonies.jpg', 'The Goonies', '1985', '1h 54m', 'When two brothers find out they might lose their house they are desperate to find a way to keep their home. They find a treasure map and bring some friends along to find it. They are all out looking for the \"X\" and trying to get away from a group of bad guys who also want the treasure.', 'default.mp4', 'June 7, 1985'),
(12, 'brooklyn.jpg', 'Brooklyn', '2015', '1h 57m', 'An Irish immigrant lands in 1950s Brooklyn, where she quickly falls into a romance with a local. When her past catches up with her, however, she must choose between two countries and the lives that exist within.', 'default.mp4', 'November 25, 2015'),
(13, 'walk.jpg', 'The Walk', '2015', '2h 3m', 'In 1974, high-wire artist Philippe Petit recruits a team of people to help him realize his dream: to walk the immense void between the World Trade Center towers.', 'default.mp4', 'October 9, 2015'),
(14, 'colonia.jpg', 'Colonia', '2015', '1h 46m', 'A young woman who is desperate, searches for her abducted boyfriend that draws her into the infamous Colonia Dignidad, a sect nobody has ever escaped from.', 'default.mp4', 'April 15, 2015'),
(15, 'potter.jpg', 'Harry Potter and the Deathly Hallows', '2011', '2h 10m', 'A clash between good and evil awaits as young Harry (Daniel Radcliffe), Ron (Rupert Grint) and Hermione (Emma Watson) prepare for a final battle against Lord Voldemort (Ralph Fiennes). Harry has grown into a steely lad on a mission to rid the world of evil. The friends must search for the Horcruxes that keep the dastardly wizard immortal. Harry and Voldemort meet at Hogwarts Castle for an epic showdown where the forces of darkness may finally meet their match.', 'default.mp4', 'July 7, 2011'),
(16, 'anic.jpg', 'Titanic', '1997', '3h 15m', 'James Cameron\'s \"Titanic\" is an epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the \"ship of dreams\" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912.', 'default.mp4', 'November 18, 1997'),
(17, 'guardians.jpg', 'Guardians of the Galaxy', '2014', '2h 1m', 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe in a Marvel franchise film.', 'default.mp4', 'August 1, 2014'),
(18, 'rem.jpg', 'A Walk to Remember', '2002', '1h 42m', 'Set in North Carolina, \"A Walk To Remember\" follows the rite of passage of a jaded, aimless high school senior (Shane West) who falls in love with a guileless young woman (Mandy Moore) he and his friends once scorned. The two develop a powerful and inspirational relationship in which they discover truths that take most people a lifetime to learn.', 'default.mp4', 'January 25, 2002'),
(19, 'gravity.jpg', 'Gravity', '2013', '1h 31m', 'Two astronauts work together to survive after an accident which leaves them alone in space and finds a way back to home.', 'default.mp4', 'October 4, 2013'),
(20, 'beasts.jpg', 'Fantastic Beasts and Where to Find Them', '2016', '2h 13m', 'The year is 1926, and Newt Scamander (Eddie Redmayne) has just completed a global excursion to find and document an extraordinary array of magical creatures. Arriving in New York for a brief stopover, he might have come and gone without incident, were it not for a No-Maj (American for Muggle) named Jacob, a misplaced magical case, and the escape of some of Newt\'s fantastic beasts, which could spell trouble for both the wizarding and No-Maj worlds.', 'default.mp4', 'November 18, 2016'),
(21, 'guy.jpg', 'How to Lose a Guy in 10 Days', '2003', '1h 56m', 'An advice columnist, Andie Anderson (Kate Hudson), tries pushing the boundaries of what she can write about in her new piece about how to get a man to leave you in 10 days. Her editor, Lana (Bebe Neuwirth), loves it, and Andie goes off to find a man she can use for the experiment. Enter executive Ben Berry (Matthew McConaughey), who is so confident in his romantic prowess that he thinks he can make any woman fall in love with him in 10 days. When Andie and Ben meet, their plans backfire.', 'default.mp4', 'January 27, 2003'),
(22, 'ella.jpg', 'Cinderella', '2015', '1h 54m', 'After her father unexpectedly dies, young Ella (Lily James) finds herself at the mercy of her cruel stepmother (Cate Blanchett) and stepsisters, who reduce her to scullery maid. Despite her circumstances, she refuses to despair. An invitation to a palace ball gives Ella hope that she might reunite with the dashing stranger (Richard Madden) she met in the woods, but her stepmother prevents her from going. Help arrives in the form of a kindly beggar woman who has a magic touch for ordinary things.', 'default.mp4', 'March 13, 2015'),
(23, 'enchanted.jpeg', 'Enchanted', '2007', '1h 49m', 'Banished by an evil queen, Princess Giselle (Amy Adams) from a fairy-tale world lands in modern Manhattan, where music, magic and \"happily ever after\" are sorely lacking. She is adrift in this strange new place until a divorce lawyer (Patrick Dempsey) comes to her aid. Giselle begins to fall for her flawed benefactor, but the storybook romance gets complicated when a prince from her world comes to rescue her.', 'default.mp4', 'November 21, 2007'),
(24, 'girl.jpg', 'Forever My Girl', '2018', '1h 44m', 'A music superstar reunites with his first love and realizes the steep price he has paid for his success in Forever My Girl, an uplifting and emotional romance based on the novel by New York Times and USA Today bestselling author Heidi McLaughlin. Liam Page (Alex Roe) and his high-school sweetheart Josie Preston (Jessica Rothe) were the golden couple of Saint Augustine, Louisiana, until Liam left her at the altar for a shot at fame and fortune. Eight years later, Liam returns to his tiny hometown for the first time as a world-famous recording artist, but not even his own father is thrilled to see him. As he tries to rebuild the bridges he burned years earlier, Liam reconnects with his small-town roots, his close-knit community and Josie, the girl he left behind. As he attempts to reclaim everything he loved and lost, Josie does her best to keep him out of her heart, but life has one more surprise waiting for Liam, one that could change everything, in this heartwarming look at love, family and second chances.', 'default.mp4', 'January 19, 2018');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(95, 22, 13),
(6, 2, 6),
(7, 2, 10),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(20, 6, 10),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(27, 5, 8),
(28, 5, 10),
(29, 5, 12),
(30, 5, 14),
(32, 2, 2),
(33, 2, 5),
(34, 2, 11),
(35, 3, 1),
(36, 3, 2),
(37, 3, 9),
(38, 3, 12),
(39, 6, 11),
(40, 6, 6),
(42, 6, 4),
(43, 6, 2),
(44, 6, 1),
(45, 7, 9),
(46, 7, 2),
(47, 7, 1),
(48, 7, 12),
(49, 9, 15),
(50, 9, 3),
(52, 9, 12),
(53, 10, 8),
(54, 10, 10),
(55, 10, 12),
(56, 10, 14),
(57, 11, 2),
(59, 11, 12),
(60, 12, 5),
(61, 12, 14),
(62, 12, 2),
(66, 15, 12),
(67, 15, 9),
(68, 15, 2),
(69, 15, 1),
(70, 15, 5),
(72, 15, 9),
(73, 16, 14),
(74, 16, 6),
(97, 16, 5),
(76, 18, 14),
(77, 18, 5),
(78, 19, 2),
(79, 19, 5),
(80, 21, 14),
(81, 21, 5),
(83, 22, 14),
(84, 22, 5),
(86, 22, 12),
(87, 23, 10),
(88, 23, 13),
(89, 23, 12),
(90, 23, 14),
(96, 3, 3),
(92, 24, 14),
(93, 24, 5),
(94, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(230) NOT NULL,
  `user_name` varchar(230) NOT NULL,
  `user_pass` varchar(230) NOT NULL,
  `user_email` varchar(230) NOT NULL,
  `user_date` timestamp NOT NULL,
  `user_ip` varchar(60) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
