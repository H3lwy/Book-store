-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 06:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Hady', 'hadyelkilany@gmail.com', '$2y$10$WlexKm2kvSIURsnBDf6WSOP8mzBoGDwgihzqDOacM0Sycne5vKvMW');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Eleanor Hallowell Abbott'),
(2, 'Samuel Hopkins Adams'),
(3, 'Alvin Addison'),
(4, 'Joseph A. Altsheler'),
(5, 'Harold Avery'),
(7, 'Zi Sun'),
(8, 'Jules Verne'),
(9, 'Arthur Conan Doyle'),
(10, 'Agatha Christie'),
(11, 'Edgar Allan Poe'),
(12, 'H. G. Wells'),
(13, 'Jules Verne'),
(14, 'Paramahansa Yogananda'),
(15, 'Henry David Thoreau'),
(16, 'Lewis Carroll'),
(17, 'Andrew Lang'),
(18, 'H. P. Lovecraft'),
(19, 'Goold Brown'),
(20, 'Frederick Engels'),
(21, 'D. J. Medley'),
(22, 'Confucius');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`) VALUES
(1, 'The Indiscreet Letter', 1, 'Book Excerpt: \"Now--I--ain\'t--any--saint,\" mused the Traveling Salesman meditatively, \"and I--ain\'t very much to look at, and being on the road ain\'t a business that would exactly enhance my valuation in the eyes of a lady who was actually looking out for some safe place to bank her affections', 1, '62839f1558e495.79786800.jpg', '62839f155af3c9.36487595.pdf'),
(2, 'Little Eve Edgarton', 1, 'now, speaking of this Miss Edgarton, I don\'t presume for an instant that you\'re looking for a wife on this trip, but are merely hankering a bit now and then for something rather specially diverting in the line of feminine companionship?\"', 1, '6283a0adb51d74.94548278.jpg', '6283a0adb5b133.06163351.pdf'),
(3, 'The White Linen Nurse', 1, 'A book about which every reader will form his own definite opinion. If one likes it, it is eccentric perhaps but full of the knowledge of human nature, and if there never could be a white linen nurse as ingenuous and good as the heroine', 1, '6283a2125530a2.01980471.jpg', '6283a2125560c6.98320385.pdf'),
(4, 'The Unspeakable Perk', 2, 'all that sort of thing. He must quite hate himself, poor Fitz, for falling in love with a little Yankee like me. In fact, that\'s why I made him do it.\" \"And now you wish he hadn\'t?\"', 1, '6283a63f882530.39537574.jpg', '6283a63f884af2.71004868.pdf'),
(5, 'Little Miss Grouch', 2, 'Frivolous, absurd, and laughable in spots, will entertain for an hour. \"Little Miss Grouch\" led him a merry chase complicated by a self imposed chaperon and an irate father on shore but in touch with wireless', 1, '6283a6d894ce30.99128869.jpg', '6283a6d894f864.90784807.pdf'),
(6, 'Eveline Mandeville', 3, 'produce a permanent feeling against him. After long and deep thought, during which scheme after scheme was suggested to his mind, turned over, examined, and abandoned, he finally hit upon an expedient that suited his purpose exactly', 1, '6283a84a49f090.70902354.jpg', '6283a84a4baa53.25539836.pdf'),
(7, 'Ellen Walton', 3, 'hen you are convinced of the depth of the devotedness of my affection.\" \"Do not flatter yourself with a vain hope. I feel that I shall never be able to love you; and it is in kindness that I tell you so at once.\"', 1, '6283a97de266d8.10589822.jpg', '6283a97de29ac2.25666273.pdf'),
(8, 'The Shadow of the North', 4, '\"The Shadow of the North,\" while an independent story, in itself, is also the second volume of the Great French and Indian War series which began with \"The Hunters of the Hills.\" All the important characters of the first romance reappear in the second.', 2, '6283ad7ce58c93.56521803.jpg', '6283ad7ce5ad00.14156162.pdf'),
(9, 'The Forest Runners', 4, 'a word of protest, and he resolved that he would not cry out if he could help it. They should not rejoice too much at his sufferings; he would die as they were taught to die, ', 2, '6283ae3dbfceb5.48247432.jpg', '6283ae3dc06270.53718501.pdf'),
(10, 'The Hosts of the Air', 4, 'The Hosts of the Air\" is the third and concluding volume of the World War Series, of which \"The Forest of Swords\" and \"The Guns of Europe\" were the predecessors. It deals primarily with the love story of John Scott and Julie Lannes, but all the characters of the earlier books reappear in this romance also.', 2, '6283aec9530306.50171037.jpg', '6283aec9533628.84604215.pdf'),
(11, 'Highway Pirates', 5, 'Highway Pirates\" is, of course, mainly a story of adventures; but we are glad to say that this has not prevented the characters from being well drawn and true to nature. The hero is not overwhelmingly clever or lucky, and the school to which he goes is well described. ', 2, '6283b06c2c4be0.97953379.jpg', '6283b06c2cdac2.13862817.pdf'),
(12, 'Soldiers of the Queen', 5, 'Among a hundred and fifty boys, and in the confusion of a first day, it was a difficult matter to discover at once the whereabouts of the fellow he wanted', 2, '6283b34744f1a5.46259925.jpg', '6283b3474517e9.05962080.pdf'),
(13, 'The Art of War', 7, 'Translated from the Chinese with Introduction and Critical Notes by Lionel Giles, M.A.', 2, '6283b44e3849f1.15343900.jpg', '6283b44e39fa96.16264546.pdf'),
(14, '20,000 Leagues Under the Sea', 8, 'Sent to investigate mysterious encounters that are disrupting international shipping, Professor Aronnax, his servant Conseil, and disgruntled harpooner Ned Land are captured when their frigate is sunk during an encounter with the \"monster.\" The submarine Nautilus and its eccentric Captain Nemo afford the professor and his companions endless fascination and danger as they\'re swept along on a yearlong undersea voyage.', 2, '6283b4ac4ce359.80147385.jpg', '6283b4ac4e01f2.94967875.pdf'),
(15, 'The Adventures of Sherlock Holmes', 9, 'A delight for a public which enjoys incident, mystery, and above all that matching of the wits of a clever man against the dumb resistance of the secrecy of inanimate things, which results in the triumph of the human intelligence', 3, '6283b63e905e09.73799174.jpg', '6283b63e914a40.15925451.pdf'),
(16, 'A Study In Scarlet', 9, 'The first story to feature Sherlock Holmes, wherein the detective resolves to solve the mystery of a corpse found at a derelict house with the word \"RACHE\" scrawled in blood on the wall beside the body. A story of lost love, revenge, and mystery!', 3, '6283b6968b0576.17801426.jpg', '6283b6968ca149.82400801.pdf'),
(17, 'The Hound of the Baskervilles', 9, 'This may be the most popular of all of the Sherlock Holmes stories. Inspired by regional mythology of the British Isles concerning hell-hounds, the tale tells of detective Sherlock Holmes and his assistant Dr. Watson as they are called to investigate an alleged curse upon the house of the Baskervilles.', 3, '6283b717afdfe2.74681090.jpg', '6283b717b00c29.48602451.pdf'),
(18, 'Collected Works of Poe', 11, 'Edgar Allan Poe, An Appreciation Life of Poe, by James Russell Lowell Death of Poe, by N. P. Willis The Unparalled Adventures of One Hans Pfall The Gold Bug Four Beasts in One The Murders in the Rue Morgue (Audio version) The Mystery of Marie Rogêt The Balloon Hoax MS. Found in a Bottle The Oval Portrait', 3, '6283b77eee34e1.10259665.jpg', '6283b77eee5c32.95278874.pdf'),
(19, 'The Secret Adversary', 10, 'Set in 1919, young couple Tommy Beresford and Tuppence Cowley form a partnership, hiring themselves out as \'\'young adventurers\'\'. Their first case, however, is more of an adventure than they expect - working to find documents that, if they were known to the general public, would fuel a communist revolution in Britain', 3, '6283b83f0dd156.67563074.jpg', '6283b83f0facb7.80885745.pdf'),
(20, 'The Mysterious Affair at Styles', 10, 'Featuring the first appearance of Hercule Poirot.In the midst of World War I, the residents of Styles wake one morning to find Emily Inglethorpe has been fatally poisoned. Captain Hastings, staying with the family, enlists the help of his old friend, Belgian detective Hercule Poirot. With the evidence mounting against one member of the family, Poirot uses his unique deductive technique to prove who really killed Emily.', 3, '6283b9300009b3.97220902.jpg', '6283b930004198.36877832.pdf'),
(21, 'The War of the Worlds', 12, 'The War of the Worlds describes the fictional 1895 invasion of Earth by aliens from Mars who use laser-like Heat-Rays, chemical weapons, and mechanical three-legged \'\'fighting machines\'\' that could potentially be viewed as precursors to the tank. After defeating the resistance the Martians devastate much of eastern England, including London', 8, '6283ba0aca3bb8.58260030.jpg', '6283ba0acb8433.17719829.pdf'),
(22, 'The Invisible Man', 12, 'The Invisible Man of the title is \'\'Griffin\'\', a scientist who theorizes that if a person\'s refractive index is changed to exactly that of air and his body does not absorb or reflect light, then he will not be visible. He successfully carries out this procedure on himself, but begins to become mentally unstable as a result.', 8, '6283ba68654b09.68075789.jpg', '6283ba6865ae90.22089881.pdf'),
(23, 'The Mysterious Island', 13, 'The book tells the adventures of five American prisoners of war on an uncharted island in the South Pacific. Begining in the American Civil War, as famine and death ravage the city of Richmond, Virginia, five northern POWs decide to escape in a rather unusual way – by hijacking a balloon! This is only the beginning of their adventures', 8, '6283bb13a7fef2.90996461.jpg', '6283bb13a81cc7.37538840.pdf'),
(24, 'A Journey to the Centre of the Earth', 13, 'First published in England by Griffith and Farran in 1871, this edition is not a translation at all but a complete re-write of the novel, with portions added and omitted, and names changed. A better translation is A Journey into the Interior of the Earth translated by Rev. F. A. Malleson', 8, '6283bb62dc7359.29587149.jpg', '6283bb62ddcc98.20329085.pdf'),
(25, 'Autobiography of a Yogi', 14, 'This life story of Yogananda was instrumental in introducing meditation and yoga to the West. It includes Yogananda\'s and Sri Yukteswar\'s attempts to explain certain verses and events of the Bible such as the Garden of Eden story, and descriptions of Yogananda\'s encounters with Therese Neumann, Mohandas Gandhi, and Nobel laureate Rabindranath Tagore.', 4, '6283bd2c282df1.13061248.jpg', '6283bd2c285169.36021328.pdf'),
(26, 'Walden', 15, 'When I wrote the following pages, or rather the bulk of them, I lived alone, in the woods, a mile from any neighbor, in a house which I had built myself, on the shore of Walden Pond, in Concord, Massachusetts, and earned my living by the labor of my hands only. I lived there two years and two months. At present I am a sojourner in civilized life again', 4, '6283bd867990e6.48697813.jpg', '6283bd8679b906.64925474.pdf'),
(27, 'The Time Machine', 12, 'A brilliant fantasy beyond conventional thought...', 5, '6283c2826575b7.46742495.jpg', '6283c282659a72.52978686.pdf'),
(28, 'Alice in Wonderland', 16, 'The story of a girl named Alice who falls down a rabbit hole into a fantasy world populated by peculiar and anthropomorphic creatures. The tale is filled with allusions to Dodgson\'s friends. ', 5, '6283c397878cc1.42973056.jpg', '6283c39787b979.67774933.pdf'),
(29, 'The Hunting of the Snark', 16, 'I engage with the Snark--every night after dark-- In a dreamy delirious fight: I serve it with greens in those shadowy scenes, And I use it for striking a light:  \"But if ever I meet with a Boojum, that day, In a moment (of this I am sure), I shall softly and suddenly vanish away-- And the notion I cannot endure!\"', 5, '6283c400437a72.97252421.jpg', '6283c400455ab0.04252497.pdf'),
(30, 'The Arabian Nights', 17, 'A medieval Middle-Eastern literary epic which tells the story of Scheherazade, a Sassanid Queen, who must relate a series of stories to her malevolent husband, the King, to delay her execution. The stories are told over a period of one thousand and one nights, and every night she ends the story with a suspenseful situation', 5, '6283c490c1bda9.00263234.jpg', '6283c490c2c210.73222534.pdf'),
(31, 'The Island of Doctor Moreau', 12, 'Edward Prendick is shipwrecked in the Pacific. Rescued by Doctor Moreau\'s assistant he is taken to the doctor\'s island home where he discovers the doctor has been experimenting on the animal inhabitants of the island, creating bizarre proto-humans', 6, '6283c5d79851a0.30840136.jpg', '6283c5d7987fa0.89581803.pdf'),
(32, 'The Raven The Masque of the Red Death The Cask of Amontillado', 11, 'This it is and nothing more.\" Presently my soul grew stronger; hesitating then no longer,  \"Sir,\" said I, \"or Madam, truly your forgiveness I implore;  But the fact is I was napping, and so gently you came rapping,  And so faintly you came tapping, tapping at my chamber door,  That I scarce was sure I heard you\"--here I opened wide the door-', 6, '6283c69a948e70.41560379.jpg', '6283c69a94e878.70549698.pdf'),
(33, 'The Call of Cthulhu', 18, 'Three independent narratives linked together by the device of a narrator discovering notes left by a deceased relative. Piecing together the whole truth and disturbing significance of the information he possesses,', 6, '6283c76fab1597.00719459.jpeg', '6283c76fab4270.30494692.pdf'),
(34, 'At the Mountains of Madness', 18, 'On an expedition to Antarctica, Professor William Dyer and his colleagues discover the remains of ancient half-vegetable, half-animal life-forms. The extremely early date in the geological strata is surprising because of the highly-evolved features found in these previously unkown life-forms.', 6, '6283c7d157bcd1.87910508.jpg', '6283c7d15986e0.39464593.pdf'),
(35, 'The Case of Charles Dexter Ward', 18, 'successive Gaol Lane and King Street of other periods - he would look upward to the east and see the arched flight of steps to which the highway had to resort in climbing the slope, and downward to the west, glimpsing the old brick colonial schoolhouse that smiles across the road', 6, '6283c84327ee08.45089024.jpg', '6283c843281459.29379377.pdf'),
(36, 'The Grammar of English Grammars', 19, 'With an introduction historical and critical; the whole methodically arranged and amply illustrated; with forms of correcting and of parsing, improprieties for correction, examples for parsing, questions for examination, exercises for writing, observations for the advanced student, decisions and proofs for the settlement of disputed points,', 7, '6283caff27ebc0.75605224.jpg', '6283caff280bd5.70352306.pdf'),
(37, 'The Communist Manifesto', 20, 'One of the world\'s most influential political manuscripts. Commissioned by the Communist League and written by communist theorists Karl Marx and Friedrich Engels, it laid out the League\'s purposes and program', 7, '6283cb8b4cdfb3.29726120.jpg', '6283cb8b4d0f93.92314737.pdf'),
(38, 'The Age of Reason', 21, 'In the opening year, 1793, when revolutionary France had beheaded its king, the wrath turned next upon the King of kings, by whose grace every tyrant claimed to reign. But eventualities had brought among them a great English and American heart', 7, '6283cbeb1d3424.72505614.jpg', '6283cbeb1d5a62.05663260.pdf'),
(39, 'The Analects of Confucius', 22, 'With a translation, critical and exegetical notes, prolegomena, and copious indexes by James Legge.', 7, '6283cc5a6c8d66.31516451.jpg', '6283cc5a6cbaa6.21530039.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Romance'),
(2, 'Action & Adventure'),
(3, 'Mystery & Thriller'),
(4, 'Biography & History '),
(5, 'Fantasy'),
(6, 'Horror'),
(7, 'Non_Fiction'),
(8, 'Science Fiction');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
