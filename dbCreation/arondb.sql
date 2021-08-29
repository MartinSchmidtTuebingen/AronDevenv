SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `ktnr` int(6) UNSIGNED ZEROFILL NOT NULL,
  `char_id` int(255) NOT NULL,
  `cred_ra` int(255) NOT NULL,
  `betrag` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `bank`;
INSERT INTO `bank` (`ktnr`, `char_id`, `cred_ra`, `betrag`) VALUES
(111111, 7, 100000000, 50000);

DROP TABLE IF EXISTS `char_daten`;
CREATE TABLE `char_daten` (
  `char_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `char_name` varchar(256) NOT NULL,
  `char_aufenthalt` int(9) NOT NULL,
  `Fraktion` int(1) NOT NULL DEFAULT '1',
  `Physis` int(2) NOT NULL DEFAULT '8',
  `Intellekt` int(2) NOT NULL DEFAULT '8',
  `Wirkung` int(2) NOT NULL DEFAULT '8',
  `Telepathie` int(2) NOT NULL DEFAULT '8',
  `Phy1_BG` int(2) NOT NULL DEFAULT '0',
  `Phy2_Kon` int(2) NOT NULL DEFAULT '0',
  `Phy3_NK` int(2) NOT NULL DEFAULT '0',
  `Phy4_Pil` int(2) NOT NULL DEFAULT '0',
  `Phy5_SW` int(2) NOT NULL DEFAULT '0',
  `Int1_Astro` int(2) NOT NULL DEFAULT '0',
  `Int2_Comp` int(2) NOT NULL DEFAULT '0',
  `Int3_Med` int(2) NOT NULL DEFAULT '0',
  `Int4_Rep` int(2) NOT NULL DEFAULT '0',
  `Int5_Sens` int(2) NOT NULL DEFAULT '0',
  `Wirk1_Etik` int(2) NOT NULL DEFAULT '0',
  `Wirk2_Feilsch` int(2) NOT NULL DEFAULT '0',
  `Wirk3_Komm` int(2) NOT NULL DEFAULT '0',
  `Wirk4_Lueg` int(2) NOT NULL DEFAULT '0',
  `Wirk5_Ueberz` int(2) NOT NULL DEFAULT '0',
  `credits` int(255) NOT NULL DEFAULT '500',
  `ktnr` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `char_daten`;
INSERT INTO `char_daten` (`char_id`, `user_id`, `char_name`, `char_aufenthalt`, `Fraktion`, `Physis`, `Intellekt`, `Wirkung`, `Telepathie`, `Phy1_BG`, `Phy2_Kon`, `Phy3_NK`, `Phy4_Pil`, `Phy5_SW`, `Int1_Astro`, `Int2_Comp`, `Int3_Med`, `Int4_Rep`, `Int5_Sens`, `Wirk1_Etik`, `Wirk2_Feilsch`, `Wirk3_Komm`, `Wirk4_Lueg`, `Wirk5_Ueberz`, `credits`, `ktnr`) VALUES
(7, 1, 'blub', 1, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, NULL),
(17, 17, 'Deteroius', 1, 0, 8, 8, 8, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, NULL),
(18, 24, '', 1, 1, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, NULL);

DROP TABLE IF EXISTS `DE_lang_dia`;
CREATE TABLE `DE_lang_dia` (
  `DIA_ID` int(255) NOT NULL,
  `DIA_Q_ID` int(255) NOT NULL,
  `DIA_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `DIA_ART` int(2) UNSIGNED ZEROFILL NOT NULL DEFAULT '10',
  `DIA_OPT1` int(255) NOT NULL,
  `DIA_OPT1_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `DIA_OPT2` int(255) NOT NULL,
  `DIA_OPT2_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `DIA_OPT3` int(255) NOT NULL,
  `DIA_OPT3_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `DIA_OPT4` int(255) NOT NULL,
  `DIA_OPT4_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `DIA_OPT5` int(255) NOT NULL,
  `DIA_OPT5_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `DIA_OPT6` int(255) NOT NULL,
  `DIA_OPT6_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `DIA_OPT7` int(255) NOT NULL,
  `DIA_OPT7_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `DIA_OPT8` int(255) NOT NULL,
  `DIA_OPT8_TXT` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `DE_lang_dia`;
INSERT INTO `DE_lang_dia` (`DIA_ID`, `DIA_Q_ID`, `DIA_TXT`, `DIA_ART`, `DIA_OPT1`, `DIA_OPT1_TXT`, `DIA_OPT2`, `DIA_OPT2_TXT`, `DIA_OPT3`, `DIA_OPT3_TXT`, `DIA_OPT4`, `DIA_OPT4_TXT`, `DIA_OPT5`, `DIA_OPT5_TXT`, `DIA_OPT6`, `DIA_OPT6_TXT`, `DIA_OPT7`, `DIA_OPT7_TXT`, `DIA_OPT8`, `DIA_OPT8_TXT`) VALUES
(1, 1, 'In der Kneipe des Raumhafens ist die Luft gut gefiltert, Rauchen ist verboten und so kommt die klischeem??ig versoffene Stimmung nicht wirklich auf. Dennoch scheinen sich hier einige zu am?sieren. An einem Tisch\r\nwinkt ein grobschl?chtiger Mann die Kellnerin herbei und bestellt ein Bier. Er scheint mit seinem Geld angeben zu wollen und holt ein ganzes B?ndel Credits aus der Tasche. Dabei f?llt ein zerkn?lltest St?ck Papier heraus und landet geradewegs vor deinen F??en.', 00, 2, 'Aufheben und ansehen', 3, 'Ignorieren', 4, 'Drauftreten und s', 0, '', 0, '', 0, '0', 0, '', 0, ''),
(2, 1, 'Als du das Stück Papier aufhebst, erkennst du den Ausdruck eines Bountyauftrages. Beim näheren Hinsehen erkennst du, dass der Verlierer des Papieres der Gesuchte zu sein scheint.', 10, 5, 'Ignorieren', 6, 'Ihn festnehmen und das Bounty kassieren ', 7, 'Ihn darauf ansprechen und sehen, was er dir anbieten kann.', 0, '', 0, '', 0, '', 0, '', 0, ''),
(3, 1, 'Du kannst einen Platz an einem Tisch ergattern.\r\n', 10, 8, ' Kellnerin, bitte ein Getränk!', 9, 'Beobachten, was die Leute um dich herum so tun...', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(4, 1, ' Drauftreten und süffisant lächeln.\r\n[action= Glückswurf]', 10, 10, 'Glück gehabt, der Kerl ignoriert dich!', 11, 'Der Mann wird w', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(5, 1, 'Du hast kein Interesse daran, dich mit einem Schwerverbrecher anzulegen: Deine Krankenversicherung wird es dir vermutlich danken.', 10, 12, 'Ich bestelle ein Getränk!', 13, 'Ich halte nach anderen lukrativen Auftr', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(6, 1, 'Das Blatt auseinanderfaltend und den Kerl musternd näherst du dich. Es ist eindeutig Lucky Joe, der Falschspieler (an dieser Stelle kann man natürlich unterschiedliche NSC-Verbrecher generieren… ).\r\nWie willst du ihn festnehmen?', 10, 14, 'Ich ziehe meine Waffe, richte sie auf ihn und sage eindeutig extrem cool: „Hey… Verbrechervisage. Du bist heute meine Zeche!“', 15, ' Ich verst', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(7, 1, '\"Hey.. \" Du setzt dich zu ihm und grinst ihn frech an. \"Ich glaube, ich habe etwas, das dir gehört und durchaus wertvoll sein könnte..\" Du schiebst ihm den Zettel rüber.\r\n[An dieser Stelle wäre eine Abfrage, wie der Ruf des Spielers ist: wir haben uns allerdings noch nicht konzeptionell auf alle Parameter geeinigt, daher hier das nur als Anmerkung, dass ich dafür plädiere, dass nur mit einem gewissen Ruf als nicht ganz so gesetzestreuer ein Angebot offeriert wird...]\r\n', 10, 16, '[*] Ruf okay', 17, '[*] Ruf nicht okay', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(8, 1, 'Du winkst der Kellnerin zu und sie reicht dir die Karte.', 10, 18, 'Tequila - ich will es krachen lassen!', 19, ' Bier - man muss es ja nicht ', 20, ' Wasser - ich muss noch fliegen.', 21, 'Kaffee - ich muss noch sehr lange fliegen.', 0, '', 0, '', 0, '', 0, ''),
(9, 1, 'Während du so da sitzt, kommen und gehen die Leute um dich herum. Viele scheinen sich über gerade erhaltenen Lohn zu freuen und ihn in Getränke oder leichte Mädels umzusetzen. Andere ziehen Glücksspiel vor. Ein paar eher dunkle Gestalten sitzen nachdenklich vor ihren Getränken und scheinen ähnlich wie du nur zu beobachten. Weiter hinten schaltet ein Mann ein Angebot an einen Monitor.', 10, 22, 'Sitzen bleiben und nichts tun...', 23, 'Getr', 24, 'M', 25, 'Dunkle Gestalten - klingt gut, ich setze mich dazu.', 26, 'Hey.. neue Angebote, ich gehe mal lesen...', 0, '', 0, '', 0, ''),
(11, 1, 'Zu deinem Glück bemerkt der Kerl das nicht und trinkt weiter.\r\n\r\nWas nun?', 10, 27, ' Ich setze mich und hätte gerne was zu trinken.', 28, 'ich beobachte die Leute.\r\n(an dieser Stelle w', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(12, 1, 'Der Mann regt sich auf. \"Alter, geht\'s noch?\" Der Bär von einem Mann, du würdest vermuten, er ist entweder eine gepflegte zu groß geratene Hornisse oder vielleicht ein sehr ungepflegter Prussianer, steht auf, wobei sein Stuhl mit einem lauten Knall nach hinten umkippt und die Kellnerin kann nur mit ein wenig Glück und noch weniger Eleganz ausweichen. \"Hebs auf!\" herrscht er dich an.', 10, 29, 'Oh, der Kerl sieht doch sehr stark auf - ich hebe das Papier auf und reiche es ihm.\r\n', 30, 'Der Kerl sieht nach Streit aus - den kann er gerne haben!', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(13, 1, 'Während du so da sitzt, kommen und gehen die Leute um dich herum. Viele scheinen sich über gerade erhaltenen Lohn zu freuen und ihn in Getränke oder leichte Mädels umzusetzen. Andere ziehen Glücksspiel vor. Ein paar eher dunkle Gestalten sitzen nachdenklich vor ihren Getränken und scheinen ähnlich wie du nur zu beobachten. Weiter hinten schaltet ein Mann ein Angebot an einen Monitor.', 10, 22, 'Sitzen bleiben und nichts tun...', 23, 'Getr', 24, 'M', 25, 'Dunkle Gestalten - klingt gut, ich setze mich dazu.', 26, 'Hey.. neue Angebote, ich gehe mal lesen...', 0, '', 0, '', 0, ''),
(14, 1, 'Ich ziehe meine Waffe, richte sie auf ihn und sage eindeutig extrem cool: „Hey… Verbrechervisage. Du bist heute meine Zeche!“\r\nDer Mann sieht dich entsetzt an und hebt die Hände. \"Hey, das ist anders als du denkst... das ist eine wirklich wahnsinnig abgefahrene Story!\"', 10, 31, ' Tot ist er zwar nur die Hälfte wert, aber dass er dann schweigt ist unbezahlbar! Ich schieße!', 32, 'Ne gute Story will ich immer h', 33, 'Die Story ist mir egal, ich bringe ihn zu den Beh', 0, '', 0, '', 0, '', 0, '', 0, ''),
(15, 1, 'Während du bei der Sicherheit deinen Fund meldest, kannst du sehen, wie der Mann mehrfach nervös sich erst umschaut, dann was in seinen Communicator tippt. Schließlich steht er auf und will gehen.', 10, 34, 'Ich halte ihn auf, bis der Sicherheitsdienst kommt!', 35, 'Ich folge ihm und halte den Sicherheitsdienst auf dem Laufenden.', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(16, 1, 'Er holt tief Luft. \"Ich brauche Waffen und zwar ganz bestimmte. Auf dieser Raumstation sind sie illegal, aber nicht weit von hier ist ein Händler, der die Dinger besorgen kann. ich brauche noch jemand, der sie hierher transportiert und am Zoll vorbeischmuggelt. Bist du dafür der richtige? Wenn der Auftrag klappt, sind das 5 000 Credits für dich.', 10, 36, '\"Klar, kein Problem.\"', 37, ' \"F', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(17, 1, '\"Ey, ich weiß genug.. gib mir einfach so Geld und ich verschwinde.\"\r\n\"Wer sagt mir, dass du mich dann nicht dennoch verpfeifst?\" Die Hand des Mannes wandert unter den Tisch.', 10, 38, 'Ich versuche, als erster zu schießen', 39, 'Ich bleibe cool. \"Mein Wort drauf. Ich will 3000 Credits, dann bin ich weg.\"', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(18, 1, 'An dieser Stelle müsste ein Kampf initiiert werden - wenn der Spieler gewinnt, kann er den toten Kriminellen abliefern und bekommt 2000 Credits Kopfgeld. Wenn er verliert, erwacht er auf der Krankenstation und darf die Rechnung blechen...', 10, 40, 'WIN', 41, 'LOST', 0, '', 0, '', 0, '', 0, '', 0, '', 0, ''),
(19, 1, 'Du ziehst kurz eine Grimasse und gehst. Schon im Gehen zückst du deinen Communicator und verständigst die Sicherheitsbehörden. Dann wartest du ab...\r\nKurz darauf erscheinen mehrere Sicherheitsbeamte und stellen den Kriminellen.\r\nAls Melder geben sie dir 3000 Credits Belohnung des Bountys ab.', 10, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '');

DROP TABLE IF EXISTS `fraktionen`;
CREATE TABLE `fraktionen` (
  `frak_id` int(1) NOT NULL,
  `frak_name` text NOT NULL,
  `frak_bechreibung` text NOT NULL,
  `frak-kurz` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `fraktionen`;
INSERT INTO `fraktionen` (`frak_id`, `frak_name`, `frak_bechreibung`, `frak-kurz`) VALUES
(1, 'Solare Republik', '', 0),
(2, 'Prussianer', '', 0),
(3, 'H.o.r.n.e.t.s.', '', 0),
(4, 'Cartores', '', 0),
(5, 'Kontarraner', '', 0),
(6, 'Adjutoren', '', 0);

DROP TABLE IF EXISTS `loot`;
CREATE TABLE `loot` (
  `loot_id` int(255) NOT NULL,
  `loot_1` int(255) NOT NULL,
  `loot_2` int(255) NOT NULL,
  `loot_3` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `loot`;
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `pn_id` int(255) NOT NULL,
  `titel` text NOT NULL,
  `abs_id` int(9) NOT NULL,
  `empf_id` int(9) NOT NULL,
  `inhalt` mediumtext CHARACTER SET utf16 COLLATE utf16_german2_ci NOT NULL,
  `zeit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0',
  `eing` int(1) NOT NULL DEFAULT '1',
  `ausg` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `message`;
INSERT INTO `message` (`pn_id`, `titel`, `abs_id`, `empf_id`, `inhalt`, `zeit`, `status`, `eing`, `ausg`) VALUES
(1, 'Ein erster Text', 1, -1, 'Ich versuche mich mal an einem kleinen Nachrichtensystem...', '2019-07-07 11:39:24', 1, 1, 1),
(3, 'Testnachricht', 1, 12, 'Hi Aiy, \r\n\r\nschau mal, wir kÃ¶nnen uns jetzt hier schreiben. \r\n\r\nLG', '2019-06-07 13:33:40', 0, 1, 1),
(4, 'Re:Ein erster Text', 1, 1, 'kann ich auch [b]fett[/b] schreiben? ', '2019-07-07 11:51:14', 1, 1, 1),
(5, 'Test', 1, -17, 'Hab da einen VErdacht', '2019-07-15 10:29:53', 1, 1, 1),
(6, 'Re:Test', 17, 1, 'frezut nÂ´ich', '2019-07-07 11:51:01', 1, 1, 1),
(7, 'Re:Re:Test', 1, 17, 'Ich kann sogar ein wenig formatieren.. \r\n\r\n[b]schau mal [/b]\r\noder\r\n[i]kursiv geht auch...[/i]', '2019-07-07 11:07:24', 1, 1, 1),
(8, 'Tewst', 17, 1, 'Test', '2019-07-07 11:51:22', 1, 1, 1),
(11, 'Re:Re:Re:Test', 17, 1, '[b]Ich auch[/b]\r\n\r\n| Ich kann sogar ein wenig formatieren.. \r\n| \r\n| [b]schau mal [/b]\r\n| oder\r\n| [i]kursiv geht auch...[/i]', '2019-07-07 11:53:58', 0, 1, 1),
(12, 'Re:Testnachricht', 12, 1, '\r\n\r\n| Hi Aiy, \r\n| \r\n| schau mal, wir kÃ¶nnen uns jetzt hier schreiben. \r\n| \r\n| LG\r\n\r\nTest test test \r\nGeht es noch test ', '2019-07-08 09:25:35', 0, 1, 1),
(13, 'test', 17, 1, 'test', '2019-07-15 10:29:13', 0, 1, 1);

DROP TABLE IF EXISTS `Missionen`;
CREATE TABLE `Missionen` (
  `mission_id` int(11) NOT NULL,
  `mission_name` varchar(255) DEFAULT NULL,
  `mission` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `Missionen`;
INSERT INTO `Missionen` (`mission_id`, `mission_name`, `mission`) VALUES
(0, 'Test', 'Eine durchtrieben aussehende junge Hornisse mit pinkem Haar und einem Piercing in der Unterlippe gibt dir vom Nachbartisch einen Wink. \"Hey, Captain. Ich hätte Ihnen einen kleinen Vorschlag zu machen.\"}\r\nPERSON [%charname%] {OPTION_1: \"Ich bin ganz Ohr.\" OPTION_2: \"Nicht interessiert, Kleine.\"}\r\nBRANCH_1 {\r\nPERSON Tyra { \"Aber nicht hier. Ich warte hinten.\" Damit erhebt sie sich und verschwindet unauffällig durch die Hintertür.}\r\n}\r\nBRANCH_2 {\r\nSie zieht eine Schnute und wendet sich wieder ihrem Cocktail zu.\r\n}');

DROP TABLE IF EXISTS `planets`;
CREATE TABLE `planets` (
  `pla_id` int(9) NOT NULL,
  `pla_koord1` int(3) NOT NULL,
  `pla_koord2` int(3) NOT NULL,
  `pla_koord3` int(3) NOT NULL,
  `pla_name` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `pla_fraction` int(2) NOT NULL,
  `pla_short` text CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  `pla_text` text NOT NULL,
  `pla_typ` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `planets`;
INSERT INTO `planets` (`pla_id`, `pla_koord1`, `pla_koord2`, `pla_koord3`, `pla_name`, `pla_fraction`, `pla_short`, `pla_text`, `pla_typ`) VALUES
(1, 178, 182, 180, 'Gersellis', 1, 'Galaktischer Schmelztiegel diverser Spezies, größter Handelshafen der Galaxis, diplomatisches Zentrum mit Sitz aller Fraktionen.', 'Aufgrund seiner Lage und seiner relativ angenehmen Lebensbedingungen - die axiale Neigung ist gering, die Gravitation leicht unterdurchschnittlich und die Luft für die meisten Humanoiden gut atembar - wurde Gersellis als Sitz der VFV - der Vereinigung friedliebender Völker - ausgewählt. Auf Initiative der mysteriösen Psitros gegründet, bündelt die VfV die Interessen der großen Fraktionen und blockfreien Welten und versucht einen politischen Ausgleich zu schaffen. Dieses hehre Ansinnen ist natürlich in der Praxis oft nicht nur nicht erreichbar, sondern wird oft genug ins Gegenteil verkehrt. Aufgrund der zentralen Lage und der Unabhängigkeit von Gersellis - und den zahlungskräftigen Diplomaten - gehört Gersellis auch zu den großen Handlungszentren des Spiralarms. Man sagt, auf Gersellis kann man alles kaufen - und vielleicht stimmt das sogar - aber sicher ist eines: produziert wurde es dann vermutlich woanders.\r\n\r\n', 1),
(2, 94, 20, 154, 'Theta-Caldonis', 1, '', 'Der Hauptsitz der Regierung der Solaren Republik und nicht zuletzt dank vier bewohnbarer Welten eine der bevölkerungsreichsten Systeme überhaupt ist das Thetys-System. Der Hauptplanet, Theta-Caldonis, war einst Zankapfel der Völker, die heute in relativer Eintracht in der Solaren Republik koexistieren. Der Planet ist bekannt dafür, dass es fast alles zu kaufen gibt, aber nur die wirklich reichen es sich leisten können. Zudem gilt die Hauptwelt als reichlich bürokratisch.', 1),
(3, 54, 104, 82, 'Erde', 1, '', 'Die Erde ist die Heimatwelt der Menschen und mit beinahe 10 Milliarden Fühlenden dicht bevölkert und industriell hoch entwickelt. Dass die Menschen das System in dem ihre Heimatwelt liegt \"Sol-System\" - also Sonnensystem - nennen, ist Gegenstand vieler Scherze anderer Spezies. Davon abgesehen ist die Erde die zweitwichtigste Welt der Solaren Republik und ein guter Absatzmarkt für Luxusartikel und Verbrauchsgüter. Im System ist zudem das Hornet-Nest der Longicornis zu finden.', 1),
(4, 60, 80, 172, 'Toliman Alpha', 1, '', 'Das Toliman-System weist keine bewohnbaren Planeten, dafür aber eine beinahe absurde Dichte an Asteroiden auf, die in vergleichsweise stabilen Umlaufbahnen um die große Sonne kreisen und der hier ansässigen Schwerindustrie viele nützliche Rohstoffe zur Verfügung stellen. Die Vielzahl von Stationen macht das System unübersichtlich - und zu einem El Dorado für Schmuggler und lichtscheues Gesindel. Gleichzeitig haben auf den großen Asteroidengürtel-Stationen große Firmen aus allen Teilen des Universums kleine Herrschaftsbereiche für sich abgesteckt. Lediglich die offizielle Hauptanflugstation Toliman Alpha bietet noch eine gewisse Ordnung im Chaos des Toliman-Systems, in dem nach abweichenden Schätzungen zwischen 300 und 900 Millionen Fühlenden ihrer Arbeit und ihren Geschäften nachgehen. ', 2),
(5, 181, 207, 96, 'Heremus', 6, 'Heimatplanet der Adjutoren, einer androidischen Spezies, blockfreie Welt, technologisches Zentrum.', 'Heremus ist ein sehr schöner Planet. Er ist in etwa so groß wie die Erde und wurde in der Vergangenheit von einer Rasse namens Dux beherrscht. Sie erschufen eine Androiden-Rasse, die Sie letztendlich auslöschten. Die Umstände des Genozides sind unklar. Heremus wird von einem Haufen von Raumstationen umgeben wo von eine radikal Für den Handel mit den Hornissen umgebaut wurde. Heremus selbst darf von nur mit Genehmigung betreten werden die man auf Calisto beantragen kann ', 1),
(6, 95, 151, 144, 'Cator Prime', 4, '', 'Der geschäftig-hektische Raumhafen von Port Teresh liegt vor Dir, als Dein Raumschiff langsam in das zugehörige Dock einfliegt. Port Teresh ist der größte Umschlagplatz für Waren auf Cator Prime, dem Heimatplaneten der Catores. Hier bekommst Du alles - wirklich alles - wenn Du den Preis dafür bezahlen kannst. Die Catores sind bekannt dafür, mit jedem Geschäfte zu machen, und kennen wenige Skrupel. Die Station selbst ist riesig und berühmt für ihre mehr als zehn Kilometer lange und in weiten Spiralen aufwärts gewundene Shoppingmeile, in der auch dem exklusivsten Geschmack noch etwas geboten wird. Armut gibt es hier nicht - die Armen und die Sklaven sind auf die Oberfläche des kargen Planeten verbannt.\"', 1),
(7, 181, 207, 96, 'Calisto', 6, '', 'Calisto ist ein Raumhafen, der um Heremus kreist. Er ist voller Leben und Handel. Mehrere Frachtschiffe der Adjutoren verlassen den Hafen, um mit den friedlichen Völkern zu handeln.', 2),
(8, 3, 316, 239, 'Longicornis ', 3, 'Zentrales Hornet-Nest, Raumstation, einer der wichtigsten Handelshäfen der Galaxis.', 'Willkommen im Nest der Nester, wo der Hauptsprecher der Hornissen, MacTavish, herrscht. Hier bekommst du alles, was dein Herz begehrt, solange es nichts Perverses ist. Wenn es pervers sein soll: geh zu den Cartores. Das Angebot hier umfasst alles von Myonium bis zu gutem Whiskey und exotischen Biersorten. Die Hornissen heißen jeden willkommen und freuen sich auf einen guten Handel. Glüksspiel ist ebenso erlaubt und erwünscht. Aber bitte vergiss nicht, ein bisschen Geld für die Stargebühren zurück zu behalten.', 2),
(9, 268, 15, 309, 'Soror', 3, 'Hornet-Nest, Raumstation, beherbergt das größte galaktische Kloster.', ' \"Das \"Nest der Schwestern\" ist tatsächlich ein solches: hier wohnen und arbeiten vor allem Angehörige des einzigen Klosters der H.o.r.n.e.t.s. -kein katholisches, oder evangelisches, oder sonst einer einzelnen Religion angehörig. Um als ganzes Nest akzeptiert zu werden, schlossen sich die Angehörigen vieler Religionen zusammen und gründeten das \"erste\r\nOminitheistische und philosophische Refugium\". Die Begründerinnen waren\r\nweiblich, Männer sind aber auch willkommen. \r\n Du wirst hier neben dem üblichen Handel auch die Beichte ablegen können oder die Gelegenheit haben, Buße zu tun. Spenden sind jederzeit jeder Kirche des omintheistischen und philosophischem Refugium willkommen.', 2),
(10, 343, 261, 35, 'Tenebricosa - \"Das düstere Nest\"', 3, 'Hornet-Nest, Raumstation, Schmugglerhafen.', 'Das \"düstere\" Nest ist wörtlich zu nehmen. Aus irgendeinem Grund hatte dieses Nest schon immer Probleme mit der Beleuchtung. Irgendwann haben sie aufgegeben und leben fast immer im Dunkeln. \r\n Dennoch darf sich hier jeder willkommen fühlen, der Handel treiben will und sich nicht auch vor den etwas lichtscheuen Hornissen dieser Welten scheut. Der derzeitige Herrscher, Rasputin Dramanov, pflegt einen äußerst dunklen Humor. Daher ist hier eine gewisse Vorsicht und das Beachten der hauseigenen Regeln wichtig.', 2),
(11, 329, 204, 60, 'Sericea', 3, 'Ältestes Hornet-Nest, Raumstation, Zentrum für antike Kostbarkeiten.', 'Das silberweiße Nest ist eine Schöpfung und Geschenk des leitenden Architekten der H.O.R.N.E.T.S, als es sich noch um eine Firma handelte. Sericea ist das älteste Nest und mit seinem silberweißen Bauten mit das Schönste. In den teilweise antiken Läden der Raumstation kann man häufig Kostbarkeiten aller Welten bestaunen und kaufen.', 2);

DROP TABLE IF EXISTS `Quest`;
CREATE TABLE `Quest` (
  `Q_ID` int(255) NOT NULL,
  `Q_TITLE` int(255) NOT NULL,
  `Q_LOOT` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `Quest`;
DROP TABLE IF EXISTS `ships`;
CREATE TABLE `ships` (
  `shipNumber` int(11) NOT NULL,
  `shipType` varchar(20) NOT NULL,
  `baseEnergy` int(11) NOT NULL,
  `baseHull` int(11) NOT NULL,
  `baseSubSpeed` float NOT NULL,
  `baseHyperSpeed` float NOT NULL,
  `origSubSpeedType` int(11) NOT NULL,
  `origHyperSpeedType` int(11) NOT NULL,
  `origHullType` int(11) NOT NULL,
  `origShieldType` int(11) NOT NULL,
  `origWeaponsType` json NOT NULL,
  `origModulesType` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `ships`;
INSERT INTO `ships` (`shipNumber`, `shipType`, `baseEnergy`, `baseHull`, `baseSubSpeed`, `baseHyperSpeed`, `origSubSpeedType`, `origHyperSpeedType`, `origHullType`, `origShieldType`, `origWeaponsType`, `origModulesType`) VALUES
(1, 'Shuttle', 30, 100, 1, 5, 1, 1, 2, 1, 'null', 'null');

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test_1` int(11) NOT NULL,
  `test_2` int(4) DEFAULT NULL,
  `test_3` varchar(255) DEFAULT NULL,
  `test_4` json DEFAULT NULL,
  `test_5` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `test`;
DROP TABLE IF EXISTS `user_daten`;
CREATE TABLE `user_daten` (
  `IDX` int(9) NOT NULL COMMENT 'Index',
  `usr_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `usr_mail` varchar(256) CHARACTER SET ascii NOT NULL COMMENT 'Mailadresse',
  `usr_pw` varchar(256) CHARACTER SET ascii NOT NULL COMMENT 'Passwort',
  `usr_first_login` int(1) NOT NULL DEFAULT '0' COMMENT 'Erster Login',
  `usr_charIX1` int(1) NOT NULL,
  `usr_aktiv` int(1) NOT NULL DEFAULT '0',
  `usr_salt` int(7) NOT NULL,
  `usr_save` int(1) NOT NULL DEFAULT '0',
  `message_ids` json NOT NULL,
  `usr_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `user_daten`;
INSERT INTO `user_daten` (`IDX`, `usr_name`, `usr_mail`, `usr_pw`, `usr_first_login`, `usr_charIX1`, `usr_aktiv`, `usr_salt`, `usr_save`, `message_ids`, `usr_role`) VALUES
(1, 'Indunei', 'mcgeaven@gmx.de', '51459b1eabd5fa4fe9809593d572c962', 0, 0, 1, 7, 1, 'null', 5),
(8, 'Phorus', 'nebrol@hotmail.com', 'ce206cf24ce3eed31a6f4b80f98f2ab5', 0, 0, 1, 2297781, 0, 'null', 5),
(12, 'Aiy', 'eiskoong@gmail.com', 'e64986f8338ac5fea30d792ee93923de', 0, 0, 1, 2171760, 0, 'null', 2),
(13, 'Ilka Test', 'abendstern@quantentunnel.org', '7ed92393076cf6d5f2e7c8411368d381', 0, 0, 1, 1707558, 0, 'null', 0),
(14, 'XenTex', '4e7dfdg@yandex.com', '0f7e0c7855e11cfe7f056878f14c726e', 0, 0, 1, 3547227, 0, 'null', 0),
(15, 'Phorus', 'testmail8402@web.de', 'e6c65584a413d50571864d0229185d8f', 0, 0, 1, 675147, 0, 'null', 0),
(17, 'Mollask', 'mollask@posteo.de', 'ecb4160e83e3a207b81b8cdf9f0c3ed0', 0, 0, 1, 3798000, 0, 'null', 5),
(18, 'Kuldigar', 'rempel@gmx.org', '813cdf2b489ba23e366f53cf184ceb6a', 0, 0, 1, 407968, 0, 'null', 5),
(23, 'MartinS', 'schmidt.martin@posteo.de', '1189e63346d415817f026bbb1b87988d', 0, 0, 1, 1081349, 0, '\"first => 2,1,6.5\"', 0),
(24, 'Lumpi', 'lumpi@aron-games.de', 'efcb02861d7a68bee8e4a846664b965e', 0, 0, 0, 3531306, 0, 'null', 0),
(25, 'rigstreft', 'ariela954@mix-mail.online\r\n', '1fd8b4ad8d48edadb4342dc83a2690fc', 0, 0, 0, 3290940, 0, 'null', 0);

DROP TABLE IF EXISTS `user_daten_old`;
CREATE TABLE `user_daten_old` (
  `IDX` int(9) NOT NULL COMMENT 'Index',
  `usr_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `usr_mail` varchar(256) CHARACTER SET ascii NOT NULL COMMENT 'Mailadresse',
  `usr_pw` varchar(256) CHARACTER SET ascii NOT NULL COMMENT 'Passwort',
  `usr_first_login` int(1) NOT NULL DEFAULT '0' COMMENT 'Erster Login',
  `usr_charIX1` int(1) NOT NULL,
  `usr_aktiv` int(1) NOT NULL DEFAULT '1',
  `usr_salt` int(7) NOT NULL,
  `usr_save` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

TRUNCATE TABLE `user_daten_old`;
INSERT INTO `user_daten_old` (`IDX`, `usr_name`, `usr_mail`, `usr_pw`, `usr_first_login`, `usr_charIX1`, `usr_aktiv`, `usr_salt`, `usr_save`) VALUES
(1, 'Indunei', 'mcgeaven@gmx.de', '51459b1eabd5fa4fe9809593d572c962', 0, 0, 0, 7, 1),
(8, '', 'nebrol@hotmail.com', 'ce206cf24ce3eed31a6f4b80f98f2ab5', 0, 0, 0, 2297781, 0),
(12, 'Aiy', 'eiskoong@gmail.com', 'e64986f8338ac5fea30d792ee93923de', 0, 0, 1, 2171760, 0),
(13, 'Ilka Test', 'abendstern@quantentunnel.org', '7ed92393076cf6d5f2e7c8411368d381', 0, 0, 0, 1707558, 0),
(14, 'XenTex', '4e7dfdg@yandex.com', '0f7e0c7855e11cfe7f056878f14c726e', 0, 0, 1, 3547227, 0),
(15, 'Phorus', 'testmail8402@web.de', 'e6c65584a413d50571864d0229185d8f', 0, 0, 1, 675147, 0),
(17, 'Mollask', 'mollask@posteo.de', 'ecb4160e83e3a207b81b8cdf9f0c3ed0', 0, 0, 0, 3798000, 0);


ALTER TABLE `bank`
  ADD PRIMARY KEY (`ktnr`),
  ADD UNIQUE KEY `ktnr` (`ktnr`);

ALTER TABLE `char_daten`
  ADD PRIMARY KEY (`char_id`);

ALTER TABLE `DE_lang_dia`
  ADD UNIQUE KEY `DIA-ID` (`DIA_ID`);

ALTER TABLE `fraktionen`
  ADD PRIMARY KEY (`frak_id`);

ALTER TABLE `message`
  ADD PRIMARY KEY (`pn_id`);

ALTER TABLE `Missionen`
  ADD PRIMARY KEY (`mission_id`);

ALTER TABLE `planets`
  ADD PRIMARY KEY (`pla_id`);

ALTER TABLE `Quest`
  ADD UNIQUE KEY `Q_ID` (`Q_ID`);

ALTER TABLE `ships`
  ADD PRIMARY KEY (`shipNumber`);

ALTER TABLE `test`
  ADD PRIMARY KEY (`test_1`);

ALTER TABLE `user_daten`
  ADD UNIQUE KEY `UsrIndex` (`IDX`);

ALTER TABLE `user_daten_old`
  ADD UNIQUE KEY `UsrIndex` (`IDX`);


ALTER TABLE `bank`
  MODIFY `ktnr` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111112;

ALTER TABLE `char_daten`
  MODIFY `char_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `DE_lang_dia`
  MODIFY `DIA_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `message`
  MODIFY `pn_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `planets`
  MODIFY `pla_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `Quest`
  MODIFY `Q_ID` int(255) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user_daten`
  MODIFY `IDX` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Index', AUTO_INCREMENT=26;

ALTER TABLE `user_daten_old`
  MODIFY `IDX` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Index', AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
