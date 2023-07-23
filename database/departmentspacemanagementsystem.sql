CREATE TABLE `admin` (`id` bigint(20) NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
-- --------------------------------------------------------
--
-- Table structure for table `reservation`
--
CREATE TABLE `reservation` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `reservation_date_time` datetime DEFAULT NULL,
  `reserved_by_id` bigint(20) NOT NULL,
  `responsible_person_id` bigint(20) NOT NULL,
  `spaceid` int(11) NOT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Dumping data for table `reservation`
--
INSERT INTO `reservation` (
    `id`,
    `date`,
    `end_date_time`,
    `reservation_date_time`,
    `reserved_by_id`,
    `responsible_person_id`,
    `spaceid`,
    `start_date_time`,
    `title`
  )
VALUES (
    1,
    '08-07-2023',
    '2023-07-08 10:00:00.000000',
    '1970-01-01 05:32:04.000000',
    4,
    5,
    1,
    '2023-07-08 08:00:00.000000',
    'string'
  ),
  (
    255,
    '05-07-2023',
    '2023-07-05 11:00:00.000000',
    '2023-07-03 01:01:38.000000',
    1,
    7,
    1,
    '2023-07-05 09:00:00.000000',
    'CO224 Lab'
  ),
  (
    256,
    '07-07-2023',
    '2023-07-07 17:00:00.000000',
    '2023-07-03 01:02:20.000000',
    1,
    9,
    1,
    '2023-07-07 15:00:00.000000',
    'CO225 Lab'
  ),
  (
    258,
    '05-07-2023',
    '2023-07-05 17:00:00.000000',
    '2023-07-03 01:03:44.000000',
    1,
    6,
    1,
    '2023-07-05 15:00:00.000000',
    'CO226 Lab'
  ),
  (
    259,
    '04-07-2023',
    '2023-07-04 11:40:00.000000',
    '2023-07-03 01:04:51.000000',
    1,
    6,
    2,
    '2023-07-04 11:00:00.000000',
    'CO226 Lab'
  ),
  (
    260,
    '06-07-2023',
    '2023-07-06 09:40:00.000000',
    '2023-07-03 01:05:39.000000',
    1,
    5,
    3,
    '2023-07-06 09:00:00.000000',
    'Lectures'
  ),
  (
    261,
    '27-06-2023',
    '2023-06-27 10:40:00.000000',
    '2023-07-03 01:06:43.000000',
    1,
    7,
    1,
    '2023-06-27 09:00:00.000000',
    'CO224 Lab'
  ),
  (
    263,
    '29-06-2023',
    '2023-06-29 15:40:00.000000',
    '2023-07-03 01:08:17.000000',
    1,
    5,
    1,
    '2023-06-29 14:00:00.000000',
    'EM Lab '
  ),
  (
    264,
    '03-07-2023',
    '2023-07-03 13:40:00.000000',
    '2023-07-03 01:10:47.000000',
    2,
    9,
    1,
    '2023-07-03 13:00:00.000000',
    'CO225 Discussion'
  ),
  (
    265,
    '30-06-2023',
    '2023-06-30 10:40:00.000000',
    '2023-07-03 01:11:37.000000',
    2,
    7,
    1,
    '2023-06-30 10:00:00.000000',
    'EE285 lectures'
  ),
  (
    267,
    '27-06-2023',
    '2023-06-27 13:40:00.000000',
    '2023-07-03 01:12:41.000000',
    2,
    6,
    2,
    '2023-06-27 13:00:00.000000',
    'EE285 lectures'
  ),
  (
    268,
    '06-07-2023',
    '2023-07-06 15:40:00.000000',
    '2023-07-03 01:13:49.000000',
    2,
    7,
    2,
    '2023-07-06 12:00:00.000000',
    'EE285 lectures'
  ),
  (
    269,
    '13-07-2023',
    '2023-07-13 10:40:00.000000',
    '2023-07-03 01:17:56.000000',
    2,
    5,
    1,
    '2023-07-13 10:00:00.000000',
    'EE285 lectures'
  ),
  (
    273,
    '07-07-2023',
    '2023-07-07 08:40:00.000000',
    '2023-07-03 02:23:50.000000',
    1,
    8,
    1,
    '2023-07-07 08:00:00.000000',
    'Project'
  ),
  (
    275,
    '03-07-2023',
    '2023-07-03 09:40:00.000000',
    '2023-07-03 02:50:51.000000',
    2,
    7,
    1,
    '2023-07-03 09:00:00.000000',
    'labs'
  ),
  (
    276,
    '14-07-2023',
    '2023-07-14 14:40:00.000000',
    '2023-07-03 02:53:15.000000',
    2,
    7,
    1,
    '2023-07-14 14:00:00.000000',
    'labs'
  );
-- --------------------------------------------------------
--
-- Table structure for table `reservation_seq`
--
CREATE TABLE `reservation_seq` (`next_val` bigint(20) DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Dumping data for table `reservation_seq`
--
INSERT INTO `reservation_seq` (`next_val`)
VALUES (351);
-- --------------------------------------------------------
--
-- Table structure for table `responsible_person`
--
CREATE TABLE `responsible_person` (
  `type` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Dumping data for table `responsible_person`
--
INSERT INTO `responsible_person` (`type`, `id`)
VALUES ('Instructor', 5),
  ('Dr.', 6),
  ('Dr.', 7),
  ('Mrs.', 8),
  ('Dr.', 9);
-- --------------------------------------------------------
--
-- Table structure for table `spaces`
--
CREATE TABLE `spaces` (
  `id` bigint(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `facilities` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Dumping data for table `spaces`
--
INSERT INTO `spaces` (
    `id`,
    `capacity`,
    `description`,
    `facilities`,
    `image`,
    `name`
  )
VALUES (
    1,
    60,
    'Fourth Floor Lab',
    'Projector,Computers,AC',
    'IMAGE',
    'Computer Lab 01'
  ),
  (
    2,
    45,
    'First Floor Lab',
    'Projector,Computers,AC',
    'IMAGE',
    'Computer Lab 02'
  ),
  (
    3,
    20,
    'Third Floor Lab',
    'Computers,Projector',
    'IMAGE',
    'Networking Lab'
  ),
  (
    4,
    30,
    '2nd floor',
    'Projector,AC',
    'IMAGE',
    'Discussion Room'
  ),
  (
    5,
    15,
    'Ground Floor Room',
    'AC,Smart Board,',
    'IMAGE',
    'Conference Room'
  );
-- --------------------------------------------------------
--
-- Table structure for table `token`
--
CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `expired` bit(1) NOT NULL,
  `revoked` bit(1) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_type` tinyint(4) DEFAULT NULL,
  `user` varbinary(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
-- --------------------------------------------------------
--
-- Table structure for table `user`
--
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Dumping data for table `user`
--
INSERT INTO `user` (`id`, `email`, `first_name`, `last_name`)
VALUES (
    1,
    'e19129@eng.pdn.ac.lk',
    'Kanishka',
    'Gunawardana'
  ),
  (
    2,
    'e19408@eng.pdn.ac.lk',
    'Sanduni',
    'Ubayasiri'
  ),
  (3, 'e19372@eng.pdn.ac.lk', 'Kaushitha', 'Silva'),
  (4, 'e19074@eng.pdn.ac.lk', 'Mansitha', 'Eshwara'),
  (
    5,
    'e19009@eng.pdn.ac.lk',
    'Chandula',
    'Adhikari'
  ),
  (
    6,
    'kaushithamsilva@gmail.com',
    'Roshan',
    'Ragel'
  ),
  (
    7,
    'kaushithamsilva@gmail.com',
    'Isuru',
    'Nawinna'
  ),
  (
    8,
    'kaushithamsilva@gmail.com',
    'Nadeesha',
    'Adikari'
  ),
  (
    9,
    'kaushithamsilva@gmail.com',
    'Mahanama',
    'Wickramasinghe'
  );
-- --------------------------------------------------------
--
-- Table structure for table `user_seq`
--
CREATE TABLE `user_seq` (`next_val` bigint(20) DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Dumping data for table `user_seq`
--
INSERT INTO `user_seq` (`next_val`)
VALUES (1);
-- --------------------------------------------------------
--
-- Table structure for table `waiting`
--
CREATE TABLE `waiting` (
  `id` bigint(20) NOT NULL,
  `available` bit(1) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `reservation_date_time` datetime DEFAULT NULL,
  `reserved_by_id` bigint(20) NOT NULL,
  `responsible_person_id` bigint(20) NOT NULL,
  `spaceid` int(11) NOT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Dumping data for table `waiting`
--
INSERT INTO `waiting` (
    `id`,
    `available`,
    `date`,
    `end_date_time`,
    `reservation_date_time`,
    `reserved_by_id`,
    `responsible_person_id`,
    `spaceid`,
    `start_date_time`,
    `title`
  )
VALUES (
    102,
    b '0',
    '07-07-2023',
    '2023-07-07 17:00:00.000000',
    '2023-07-03 01:09:28.000000',
    1,
    6,
    1,
    '2023-07-07 15:00:00.000000',
    'CO226 Discussion'
  ),
  (
    103,
    b '0',
    '13-07-2023',
    '2023-07-13 10:40:00.000000',
    '2023-07-03 01:18:33.000000',
    2,
    6,
    1,
    '2023-07-13 10:00:00.000000',
    'EM215 lectures'
  ),
  (
    104,
    b '0',
    '05-07-2023',
    '2023-07-05 11:00:00.000000',
    '2023-07-03 01:19:35.000000',
    2,
    7,
    1,
    '2023-07-05 09:00:00.000000',
    'CO225 lectures'
  ),
  (
    105,
    b '0',
    '07-07-2023',
    '2023-07-07 17:00:00.000000',
    '2023-07-03 01:20:00.000000',
    2,
    9,
    1,
    '2023-07-07 15:00:00.000000',
    'CO224 Labs'
  ),
  (
    106,
    b '0',
    '03-07-2023',
    '2023-07-03 13:40:00.000000',
    '2023-07-03 02:32:58.000000',
    1,
    7,
    1,
    '2023-07-03 13:00:00.000000',
    'Lectures'
  ),
  (
    107,
    b '0',
    '27-06-2023',
    '2023-06-27 10:40:00.000000',
    '2023-07-03 02:33:13.000000',
    1,
    5,
    1,
    '2023-06-27 09:00:00.000000',
    'Labs'
  ),
  (
    108,
    b '0',
    '13-07-2023',
    '2023-07-13 10:30:00.000000',
    '2023-07-03 02:37:13.000000',
    1,
    6,
    1,
    '2023-07-13 09:00:00.000000',
    'Labs'
  );
-- --------------------------------------------------------
--
-- Table structure for table `waiting_seq`
--
CREATE TABLE `waiting_seq` (`next_val` bigint(20) DEFAULT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Dumping data for table `waiting_seq`
--
INSERT INTO `waiting_seq` (`next_val`)
VALUES (201);
--
-- Indexes for dumped tables
--
--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `responsible_person`
--
ALTER TABLE `responsible_person`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `spaces`
--
ALTER TABLE `spaces`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `token`
--
ALTER TABLE `token`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `user`
--
ALTER TABLE `user`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `waiting`
--
ALTER TABLE `waiting`
ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `spaces`
--
ALTER TABLE `spaces`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 6;
--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
ADD CONSTRAINT `FK1ja8rua032fgnk9jmq7du3b3a` FOREIGN KEY (`id`) REFERENCES `user` (`id`);
--
-- Constraints for table `responsible_person`
--
ALTER TABLE `responsible_person`
ADD CONSTRAINT `FKqgxfcov9w7ygi6v1okuyd5uns` FOREIGN KEY (`id`) REFERENCES `user` (`id`);