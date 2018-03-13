CREATE DATABASE  IF NOT EXISTS `scrubflix` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `scrubflix`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: scrubflix
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `MovieID` int(2) NOT NULL,
  `Movie_Title` char(50) DEFAULT NULL,
  `Movie_Release_date` varchar(10) DEFAULT NULL,
  `Movie_Genre` char(30) DEFAULT NULL,
  `Movie_Description` varchar(500) DEFAULT NULL,
  `Movie_Rating` decimal(10,1) DEFAULT NULL,
  `Movie_Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MovieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Pirates of the Caribbean','2003-05-08','Action/Adventure','Thrust into an all-new adventure, a down-on-his-luck Capt. Jack Sparrow feels the winds of ill-fortune blowing even more strongly when deadly ghost sailors led by his old nemesis, the evil Capt. Salazar, escape from the Devil\'s Triangle. Jack\'s only hope of survival lies in seeking out the legendary Trident of Poseidon, but to find it, he must forge an uneasy alliance with a brilliant and beautiful astronomer and a headstrong young man in the British navy.',8.0,'images/home-page/001-Pirates-Caribbean.jpg'),(2,'Star Wars: The Last Jedi','2017-12-14','Sci-Fi','Luke Skywalker\'s peaceful and solitary existence gets upended when he encounters Rey, a young woman who shows strong signs of the Force. Her desire to learn the ways of the Jedi forces Luke to make a decision that changes their lives forever. Meanwhile, Kylo Ren and General Hux lead the First Order in an all-out assault against Leia and the Resistance for supremacy of the galaxy.',7.5,'images/home-page/002-Star-Wars-The-Last-Jedi.jpg'),(3,'Jaws','1975-12-26','Thriller','When a young woman is killed by a shark while skinny-dipping near the New England tourist town of Amity Island, police chief Martin Brody (Roy Scheider) wants to close the beaches, but mayor Larry Vaughn (Murray Hamilton) overrules him, fearing that the loss of tourist revenue will cripple the town. Ichthyologist Matt Hooper (Richard Dreyfuss) and grizzled ship captain Quint (Robert Shaw) offer to help Brody capture the killer beast, and the trio engage in an epic battle of man vs. nature.',8.0,'images/home-page/003-Jaws.jpg'),(4,'Jigsaw','2017-10-26','Horror','After a series of murders bearing all the markings of the Jigsaw killer, law enforcement officials find themselves chasing the ghost of a man who has been dead for over a decade, and they become embroiled in a new game that\'s only just begun. Is John Kramer back from the dead to remind the world to be grateful for the gift of life? Or is this a trap set by a killer with designs of his own?',5.9,'images/home-page/004-Jigsaw.jpg'),(5,'X-Men the Last Stand','2006-05-26','Action/Adventure','The discovery of a cure for mutations leads to a turning point for Mutants (Hugh Jackman, Halle Berry, Famke Janssen, Anna Paquin, Rebecca Romijn, Kelsey Grammer). They may now choose to give up their powers and become fully human or retain their uniqueness and remain isolated. War looms between the followers of Charles Xavier (Patrick Stewart), who preaches tolerance, and those of Magneto (Ian McKellen), who advocates survival of the fittest.',6.7,'images/home-page/005-X-Men-The-Last-Stand.jpg'),(6,'Gladiator','2000-05-12','Action/Adventure','Commodus (Joaquin Phoenix) takes power and strips rank from Maximus (Russell Crowe), one of the favored generals of his predecessor and father, Emperor Marcus Aurelius, the great stoical philosopher. Maximus is then relegated to fighting to the death in the gladiator arenas.',8.5,'images/home-page/006-Gladiator.jpg'),(7,'Spider Man 2','2004-07-16','Action/Adventure','When a failed nuclear fusion experiment results in an explosion that kills his wife, Dr. Otto Octavius (Alfred Molina) is transformed into Dr. Octopus, a cyborg with deadly metal tentacles. Doc Ock blames Spider-Man (Tobey Maguire) for the accident and seeks revenge. Meanwhile, Spidey\'s alter ego, Peter Parker, faces fading powers and self-doubt. Complicating matters are his best friend\'s (James Franco) hatred for Spider-Man and his true love\'s (Kirsten Dunst) sudden engagement to another man.',7.3,'images/home-page/007-SpiderMan2.jpg'),(8,'Spider Man 3','2007-05-04','Action/Adventure','Peter Parker (Tobey Maguire) and M.J. (Kirsten Dunst) seem to finally be on the right track in their complicated relationship, but trouble looms for the superhero and his lover. Peter\'s Spider-Man suit turns black and takes control of him, not only giving Peter enhanced power but also bringing out the dark side of his personality. Peter must overcome the suit\'s influence as two supervillains, Sandman and Venom, rise up to destroy him and all those he holds dear.',6.2,'images/home-page/008-Spider-Man3.jpg'),(9,'Ice Age','2002-03-15','Action/Adventure','After Sid (John Leguizamo) pilfers some dinosaur eggs, Manny (Ray Romano), Diego (Denis Leary) and the rest of their prehistoric pals enter a mysterious, underground world to rescue the hapless sloth. During the course of their mission, the gang encounters many creatures great and small, including hungry carnivores and a relentless, dinosaur-hunting weasel named Buck.',7.0,'images/home-page/009-Ice-Age.jpg'),(10,'The Magneto','2017-04-13','Action/Adventure','Comming soon...',0.0,''),(11,'Kung Fu Panda','2008-06-06','Action/Adventure','Po the panda (Jack Black) works in his family\'s noodle shop and dreams of becoming a kung-fu master. His dream becomes a reality when, unexpectedly, he must fulfill an ancient prophecy and study the skills with his idols, the Furious Five. Po needs all the wisdom, strength and ability he can muster to protect his people from an evil snow leopard.',7.6,'images/home-page/011-Kung-Fu-Panda.jpg'),(12,'Angels and Demons','2009-05-14','Thriller','When Harvard symbologist Robert Langdon discovers the resurgence of an ancient brotherhood known as the Illuminati, he flies to Rome to warn the Vatican, the Illuminati\'s most hated enemy. Joining forces with beautiful Italian scientist Vittoria Vetra (Ayelet Zurer), Langdon follows a centuries-old trail of ancient symbols in the hope of preventing the Illuminati\'s deadly plot against the Roman Catholic Church from coming to fruition.',6.7,'images/home-page/012-Angels-Demons.jpg'),(13,'House','2008-11-07','Horror','Drama · In rural Alabama, two couples find themselves in a fight for survival. Running from a maniac (The Tin Man) bent on killing them, they flee deep into the woods and seek refuge in a house. ..... The creepy story is not a masterpiece, but I was misled believing that it would be another torture film and not a supernatural thriller.',4.6,''),(14,'The Shawshank Redemption','1995-02-17','Horror','Andy Dufresne (Tim Robbins) is sentenced to two consecutive life terms in prison for the murders of his wife and her lover and is sentenced to a tough prison. However, only Andy knows he didn\'t commit the crimes. While there, he forms a friendship with Red (Morgan Freeman), experiences brutality of prison life, adapts, helps the warden, etc., all in 19 years.',9.3,'images/top20/top1.jpg'),(15,'Pulp Fiction','1994-10-21','Drama/Crime','Vincent Vega (John Travolta) and Jules Winnfield (Samuel L. Jackson) are hitmen with a penchant for philosophical discussions. In this ultra-hip, multi-strand crime movie, their storyline is interwoven with those of their boss, gangster Marsellus Wallace (Ving Rhames) ; his actress wife, Mia (Uma Thurman) ; struggling boxer Butch Coolidge (Bruce Willis) ; master fixer Winston Wolfe (Harvey Keitel) and a nervous pair of armed robbers, \"Pumpkin\" (Tim Roth) and \"Honey Bunny\" (Amanda Plummer).',8.9,'images/top20/top5.jpg'),(16,'The Good, the Bad and the Ugly','1968-08-22','Action/Adventure','In the Southwest during the Civil War, a mysterious stranger, Joe (Clint Eastwood), and a Mexican outlaw, Tuco (Eli Wallach), form an uneasy partnership -- Joe turns in the bandit for the reward money, then rescues him just as he is being hanged. When Joe\'s shot at the noose goes awry during one escapade, a furious Tuco tries to have him murdered. The men re-team abruptly, however, to beat out a sadistic criminal and the Union army and find $20,000 that a soldier has buried in the desert.',8.9,'images/top20/top9.jpg'),(17,'Forest Grump','1994-10-07','Drama/Comedy','Slow-witted Forrest Gump (Tom Hanks) has never thought of himself as disadvantaged, and thanks to his supportive mother (Sally Field), he leads anything but a restricted life. Whether dominating on the gridiron as a college football star, fighting in Vietnam or captaining a shrimp boat, Forrest inspires people with his childlike optimism. But one person Forrest cares about most may be the most difficult to save -- his childhood love, the sweet but troubled Jenny (Robin Wright).',8.8,'images/top20/top13.jpg'),(18,'The Lord of the Rings: The Two Towers','2002-12-11','Action/Adventure','The sequel to the Golden Globe-nominated and AFI Award-winning \"The Lord of the Rings: The Fellowship of the Ring,\" \"The Two Towers\" follows the continuing quest of Frodo (Elijah Wood) and the Fellowship to destroy the One Ring. Frodo and Sam (Sean Astin) discover they are being followed by the mysterious Gollum. Aragorn (Viggo Mortensen), the Elf archer Legolas and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Saruman\'s deadly spell.',8.7,'images/top20/top17.jpg'),(19,'The Godfather','1972-08-24','Drama','Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo\'s novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone (Marlon Brando). When the don\'s youngest son, Michael (Al Pacino), reluctantly joins the Mafia, he becomes involved in the inevitable cycle of violence and betrayal. Although Michael tries to maintain a normal relationship with his wife, Kay (Diane Keaton), he is drawn deeper into the family business.',9.2,'images/top20/top2.jpg'),(20,'Schindlers list','1994-02-18','Drama','Businessman Oskar Schindler (Liam Neeson) arrives in Krakow in 1939, ready to make his fortune from World War II, which has just started. After joining the Nazi party primarily for political expediency, he staffs his factory with Jewish workers for similarly pragmatic reasons. When the SS begins exterminating Jews in the Krakow ghetto, Schindler arranges to have his workers protected to keep his factory in operation, but soon realizes that in so doing, he is also saving innocent lives.',8.9,'images/top20/top6.jpg'),(21,'The Lord of the Rings: The Fellowship of the Ring','2001-12-10','Action/Adventure','The future of civilization rests in the fate of the One Ring, which has been lost for centuries. Powerful forces are unrelenting in their search for it. But fate has placed it in the hands of a young Hobbit named Frodo Baggins (Elijah Wood), who inherits the Ring and steps into legend. A daunting task lies ahead for Frodo when he becomes the Ringbearer - to destroy the One Ring in the fires of Mount Doom where it was forged.',8.8,'images/top20/top10.jpg'),(22,'Star Wars: The Empire Strikes Back','1980-05-20','Sci-Fi','The adventure continues in this \"Star Wars\" sequel. Luke Skywalker (Mark Hamill), Han Solo (Harrison Ford), Princess Leia (Carrie Fisher) and Chewbacca (Peter Mayhew) face attack by the Imperial forces and its AT-AT walkers on the ice planet Hoth. While Han and Leia escape in the Millennium Falcon, Luke travels to Dagobah in search of Yoda. Only with the Jedi master\'s help will Luke survive when the dark side of the Force beckons him into the ultimate duel with Darth Vader (David Prowse).',8.8,'images/top20/top14.jpg'),(23,'One Flew Over the Cuckoos Nest','1975-11-19','Drama','When Randle Patrick McMurphy (Jack Nicholson) gets transferred for evaluation from a prison farm to a mental institution, he assumes it will be a less restrictive environment. But the martinet Nurse Ratched (Louise Fletcher) runs the psychiatric ward with an iron fist, keeping her patients cowed through abuse, medication and sessions of electroconvulsive therapy. The battle of wills between the rebellious McMurphy and the inflexible Ratched soon affects all the ward\'s patients.',8.7,'images/top20/top18.jpg'),(24,'The Dark Knight','2008-05-21','Drama/Crime','With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.',9.0,'images/top20/top3.jpg'),(25,'The Lord of the Rings: Return of the King','2003-12-17','Action/Adventure','The culmination of nearly 10 years\' work and conclusion to Peter Jackson\'s epic trilogy based on the timeless J.R.R. Tolkien classic, \"The Lord of the Rings: The Return of the King\" presents the final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Hobbits Frodo and Sam reach Mordor in their quest to destroy the `one ring\', while Aragorn leads the forces of good against Sauron\'s evil army at the stone city of Minas Tirith.',8.3,'images/top20/top7.jpg'),(26,'Inception','2010-05-08','Sci-Fi','Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people\'s dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone\'s mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb\'s every move.',9.5,'images/top20/top11.jpg'),(27,'Good Fellas','1990-10-26','Drama','A young man grows up in the mob and works very hard to advance himself through the ranks. He enjoys his life of money and luxury, but is oblivious to the horror that he causes. A drug addiction and a few mistakes ultimately unravel his climb to the top. Based on the book \"Wiseguy\" by Nicholas Pileggi.',8.7,'images/top20/top15.jpg'),(28,'Seven Samari','1954-04-26','Action/Adventure','A samurai answers a village\'s request for protection after he falls on hard times. The town needs protection from bandits, so the samurai gathers six others to help him teach the people how to defend themselves, and the villagers provide the soldiers with food. A giant battle occurs when 40 bandits attack the village.',8.7,'images/top20/top19.jpg'),(29,'The Godfather 2','1974-12-12','Drama','The compelling sequel to \"The Godfather,\" contrasting the life of Corleone father and son. Traces the problems of Michael Corleone (Al Pacino) in 1958 and that of a young immigrant Vito Corleone (Robert De Niro) in 1917\'s Hell\'s Kitchen. Michael survives many misfortunes and Vito is introduced to a life of crime.',9.0,'images/top20/top4.jpg'),(30,'12 Angry Men','1957-04-12','Drama','Following the closing arguments in a murder trial, the 12 members of the jury must deliberate, with a guilty verdict meaning death for the accused, an inner-city teen. As the dozen men try to reach a unanimous decision while sequestered in a room, one juror (Henry Fonda) casts considerable doubt on elements of the case. Personal issues soon rise to the surface, and conflict threatens to derail the delicate process that will decide one boy\'s fate.',7.9,'images/top20/top8.jpg'),(31,'Fight Club','1999-11-12','Drama','A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed. The two bored men form an underground club with strict rules and fight other men who are fed up with their mundane lives. Their perfect partnership frays when Marla (Helena Bonham Carter), a fellow support group crasher, attracts Tyler\'s attention.',8.8,'images/top20/top12.jpg'),(32,'The Matrix','1999-06-11','Fantasy','Neo (Keanu Reeves) believes that Morpheus (Laurence Fishburne), an elusive figure considered to be the most dangerous man alive, can answer his question -- What is the Matrix? Neo is contacted by Trinity (Carrie-Anne Moss), a beautiful stranger who leads him into an underworld where he meets Morpheus. They fight a brutal battle for their lives against a cadre of viciously intelligent secret agents. It is a truth that could cost Neo something more precious than his life.',8.7,'images/top20/top16.jpg'),(33,'Coco','2017-10-27','Fantasy','Despite his family\'s generations-old ban on music, young Miguel dreams of becoming an accomplished musician like his idol Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead. After meeting a charming trickster named Héctor, the two new friends embark on an extraordinary journey to unlock the real story behind Miguel\'s family history.',8.5,'images/top20/top20.jpg');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserID` int(2) NOT NULL,
  `User_FNAME` char(10) DEFAULT NULL,
  `User_LNAME` char(10) DEFAULT NULL,
  `User_Email` char(30) DEFAULT NULL,
  `User_DOB` date DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Lukas','Ruzevicius','UP873424@myport.ac.uk','1995-11-21'),(2,'Robert','Gibbs','Robert.gibbs@gmail.com','1995-04-15'),(3,'Harry','Smith','UP985301@myport.ac.uk','1982-02-01'),(4,'Steven','Jones','Stevey.Jo@yahoo.co.uk','2001-05-19');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `USER_LOGIN_ID` int(2) NOT NULL,
  `UserID` int(2) DEFAULT NULL,
  `USER_LOGIN_Email` char(30) DEFAULT NULL,
  `USER_LOGIN_Password` char(20) DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `user_login_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES (1,1,'UP873424@myport.ac.uk','ChickenNugget'),(2,2,'Robert.gibbs@gmail.com','SoftwareEngineering'),(3,3,'UP985301@myport.ac.uk','TruckDriver'),(4,4,'stevey.jo@yahoo.co.uk','Manchester01');
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'scrubflix'
--

--
-- Dumping routines for database 'scrubflix'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetAllMoviesWithPoster` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllMoviesWithPoster`()
BEGIN
select *, (select count(*) from movies where Movie_Image != "") as m_Count from movies where Movie_Image != "" order by movie_title;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDetailsByMovieID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDetailsByMovieID`(in Movie_Selected int(2))
BEGIN
select *, (select count(*) from movies where movieID = Movie_Selected) as m_Count from movies where movieID = Movie_Selected;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-10 14:35:04
