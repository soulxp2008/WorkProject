DROP SCHEMA IF EXISTS `feastfreedom`;
CREATE SCHEMA `feastfreedom` ;
USE `feastfreedom`;

DROP TABLE IF EXISTS `provider`;
CREATE table `provider`
(
`id` int(11) not Null Auto_increment,
`name` varchar(50) not NULL,
`email` varchar(50) not NULL,
`password` nvarchar(10) not NULL,
PRIMARY KEY(`id`)
)
ENGINE = InnoDB Auto_Increment=1 DEFAULT CHARSET=LATIN1;

DROP TABLE IF EXISTS `menu`;
CREATE table `menu`
(
`id` int(11) not Null Auto_increment,
`name` varchar(50) DEFAULT NULL,
`veg` bool DEFAULT NULL,
`price` long DEFAULT NULL,
`kichen_id` int(11) not Null,
PRIMARY KEY(`id`)
)
ENGINE = InnoDB Auto_Increment=1 DEFAULT CHARSET=LATIN1;

DROP TABLE IF EXISTS `kitchen`;
CREATE table `kitchen`
(
`id` int(11) not Null Auto_increment,
`provider_id` int(11) not Null,
`name` varchar(50) DEFAULT NULL,
`monday` bool DEFAULT 0,
`tuesday` bool DEFAULT 0,
`wednesday` bool DEFAULT 0,
`thursday` bool DEFAULT 0,
`friday` bool DEFAULT 0,
`saturday` bool DEFAULT 0,
`sunday` bool DEFAULT 0,
`start_time` TIME NOT NULL,
`end_time` TIME NOT NULL,
`image` BLOB NOT NULL,

PRIMARY KEY(`id`)
)
ENGINE = InnoDB Auto_Increment=1 DEFAULT CHARSET=LATIN1;



