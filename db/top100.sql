-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2016 a las 13:35:27
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `top100`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre_cancion` text NOT NULL,
  `interprete_id` int(11) NOT NULL,
  `puesto_ranking` int(2) NOT NULL,
  `estilos` int(11) NOT NULL,
  `letra` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre_cancion`, `interprete_id`, `puesto_ranking`, `estilos`, `letra`) VALUES
(1, 'Love you love you', 2, 10, 1, 'I used to believe We were burnin'' on the edge of somethin'' beautifulSomethin'' beautifulSellin'' a dreamSmoke and mirrors keep us waitin'' on a miracleOn a miracleSay, go through the darkest of daysHeaven''s a heartbreak awayNever let you go, never let me down'),
(2, 'Pajaritos en el aire', 3, 9, 11, 'Que paso con el que dijo que te amaba, acaso se fue y te ha dejado ilusionada.. \r\nNo me choca al saber que sola te quedas, yo te lo dije que te iban a pagar con la misma moneda. \r\nTe pintaron pajaritos en el aire \r\nTe juraron falso amor y lo creiste \r\nSus promesas se quedaron en el aire'),
(3, 'Smells like teen spirit', 4, 8, 2, 'Load up on guns\r\nBring your friends\r\nIt''s fun to lose and to pretend\r\nShe''s overboard, self assured\r\nOh no I know, a dirty word\r\nHello, hello, hello, how low [x3]\r\nHello, hello, hello\r\nWith the lights out, it''s less dangerous\r\nHere we are now, entertain us\r\nI feel stupid and contagious\r\nHere we are now, entertain us\r\nA mulatto, an Albino\r\nA mosquito, my libido, yeah'),
(4, 'Requiem ', 5, 7, 5, 'Requiem aeternam dona eis, Domine\r\net lux perpetua luceat eis.\r\n(soprano)\r\nTe decet hymnus, Deus, in Sion (Salmo 63)\r\net tibi reddetur votum in Ierusalem.\r\n(coro)\r\nexaudi orationem meam,\r\nad te omnis caro veniet.'),
(5, 'Californication', 6, 6, 4, 'Psychic spies from China\r\nTry to steal your mind''s elation\r\nAnd little girls from Sweden\r\nDreams of silver screen quotation\r\nAnd if you want these kind of dreams\r\nIt''s Californication'),
(6, 'Highway to hell', 7, 5, 6, 'Living easy, living free\r\nSeason ticket on a one-way ride\r\nAsking nothing, leave me be\r\nTaking everything in my stride\r\nDon''t need reason, don''t need rhyme\r\nAin''t nothing I would rather do\r\nGoing down, party time\r\nMy friends are gonna be there too'),
(7, 'Sweet home chicago', 8, 4, 7, 'Oh, baby don''t you want to go?\r\nOh, baby don''t you want to go?\r\nBack to the land of California\r\nTo my sweet home Chicago\r\n\r\nOh, baby don''t you want to go?\r\nOh, baby don''t you want to go?\r\nBack to the land of California\r\nTo my sweet home Chicago\r\n\r\n\r\n\r\nRead more: Robert Johnson - Sweet Home Chicago Lyrics | MetroLyrics '),
(8, 'Picture to burn', 9, 3, 8, 'State the obvious, I didn''t get my perfect fantasy\r\nI realize you love yourself more than you could ever love me\r\nSo go and tell your friends that I''m obsessive and crazy\r\n[Album version line:] That''s fine I''ll tell mine that you''re gay!\r\n[Music video version line:] That''s fine you won''t mind if I say\r\nBy the way.'),
(9, 'Hey mama', 10, 2, 10, 'Be my woman, girl, I''ll be your man\r\nBe my woman, girl, I''ll be your man\r\n\r\nYes I''ll be your woman\r\nYes I''ll be your baby\r\nYes I''ll be whatever that you tell me when you''re ready\r\nYes I''ll be your girl, forever your lady\r\nYou ain''t ever gotta worry, I''m down for you, baby'),
(10, 'No woman no cry', 11, 1, 9, 'No, woman, no cry;\r\nNo, woman, no cry;\r\nNo, woman, no cry;\r\n\r\nNo, woman, no cry.\r\n\r\n''cause - ''cause - ''cause i remember when we used to sit\r\nIn a government yard in trenchtown,\r\nOber - observing the ''ypocrites - yeah! -\r\nMingle with the good people we meet, yeah!'),
(11, 'Living on my own', 15, 11, 4, 'Dee do dee do day\r\nDee do dee do dee do dee do day oh\r\nSometimes I feel I''m gonna break down and cry, so lonely\r\nNowhere to go, nothing to do with my time\r\nI get lonely, so lonely, living on my own.\r\nSometimes I feel I''m always walking too fast, so lonely\r\nAnd everything is coming down on me, down on me, I go crazy\r\nOh so crazy, living on my own.'),
(12, 'Thriller', 12, 12, 1, 'It''s close to midnight and something evil''s lurking in the dark\r\nUnder the moonlight you see a sight that almost stops your heart\r\nYou try to scream, but terror takes the sound before you make it\r\nYou start to freeze as horror looks you right between the eyes\r\nYou''re paralyzed'),
(13, 'Firework', 13, 13, 1, 'Do you ever feel like a plastic bag\r\nDrifting through the wind\r\nWanting to start again\r\nDo you ever feel so paper thin\r\nLike a house of cards\r\nOne blow from caving in'),
(14, 'Always on my mind', 14, 14, 4, 'Maybe I didn''t treat you \r\nquite as good as I should have \r\nmaybe I didn''t love you \r\nquite as often as I could have \r\nlittle things I should have said and done \r\nI just never took the time \r\nYou were always on my mind \r\nyou were always on my mind'),
(15, 'Titanium', 10, 15, 10, 'You shout it out\r\nBut I can''t hear a word you say\r\nI''m talking loud not saying much\r\nI''m criticized but all your bullets ricochet\r\nYou shoot me down, but I get up\r\nI''m bulletproof nothing to lose\r\nFire away, fire away'),
(16, 'Baby', 2, 16, 1, 'Ooh whoa, ooh whoa, ooh whoa\r\nYou know you love me, I know you care\r\nJust shout whenever and I''ll be there\r\nYou are my love, you are my heart\r\nAnd we will never, ever, ever be apart\r\nAre we an item? Girl quit playin''\r\nWe''re just friends, what are you sayin'''),
(17, 'Come as you are', 4, 17, 2, 'Come as you are, as you were, as I want you to be\r\nAs a friend, as a friend, as and old enemy\r\nTake your time, hurry up, the choice is yours, don''t be late\r\nTake a rest as a friend as and old memoria\r\nMemoria, memoria, memoria, memoria\r\nCome doused in mud, soaked in bleach, as I want you to be\r\nAs a trend, as a friend as an old memoria, memoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estilos`
--

CREATE TABLE `estilos` (
  `id` int(2) NOT NULL,
  `nombre` text NOT NULL,
  `descrip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estilos`
--

INSERT INTO `estilos` (`id`, `nombre`, `descrip`) VALUES
(1, 'pop', 'La música pop (del inglés pop music, contracción de popular music) es un género de música popular que tuvo su origen a finales de los años 1950 como una derivación del rock and roll, en combinación con otros géneros musicales que estaban de moda en aquel momento. Los términos música pop y música popular se usan a menudo de manera indistinta, aunque el segundo tiene un sentido más amplio al dar cabida a otros géneros distintos del pop que se consideren populares. Como género, la música pop es muy ecléctica, tomando prestado a menudo elementos de otros estilos como el urban, dance, el rock, la música latina, el rhythm and blues o el folk. '),
(2, 'Grunge', 'El grunge, en ocasiones conocido como sonido de Seattle,6 es un subgénero del rock alternativo influido por el punk, el hardcore punk, el noise rock, el hard rock y con estructuras cercanas al rock clásico.1 2 3 Surgió a finales de la década de los ochenta, con grupos provenientes principalmente del estado norteamericano de Washington, en particular, del área de Seattle. '),
(3, 'Pop', 'La música pop (del inglés pop music, contracción de popular music) es un género de música popular que tuvo su origen a finales de los años 1950 como una derivación del rock and roll, en combinación con otros géneros musicales que estaban de moda en aquel momento.'),
(4, 'Rock', 'El rock es un término amplio que agrupa a una variedad de géneros musicales.1 Su forma originaria, conocida como rock and roll, surgió mayormente de la combinación de dos géneros anteriores como eran el rhythm and blues y el country'),
(5, 'Clasica', 'La música clásica es la corriente musical que comprende principalmente la música producida o basada en las tradiciones de la música litúrgica y secular de Occidente, principalmente Europa Occidental. Abarca un periodo de tiempo que va aproximadamente del siglo XI a la actualidad, aunque esta definición no es aplicable a la música realizada en nuestro siglo a pesar de presentar las mismas características,1 si bien las principales características del género fueron codificadas principalmente entre 1550 y 1900, que es habitualmente considerado como el período característico de producción de la música clásica.'),
(6, 'Heavy metal', 'El heavy metal, o simplemente metal1 2 3 —en español traducido literalmente como «metal pesado»— , es un género musical que nació a mediados de los sesenta y principios de los setenta en el Reino Unido y en los Estados Unidos, cuyos orígenes provienen del blues rock, hard rock y del rock psicodélico.'),
(7, 'Jazz', 'El jazz es un género musical nacido a finales del siglo XIX en Estados Unidos, que se expandió de forma global a lo largo de todo el siglo XX.'),
(8, 'Country', 'Country (también llamado country & western o música campirana) es un género musical surgido en los años 1920 en las regiones rurales del Sur de Estados Unidos y las Marítimas de Canadá y Australia.'),
(9, 'Reggae', 'El reggae es un género musical que se desarrolló por primera vez en Jamaica hacia mediados de los años 1960. Aunque en ocasiones el término se utiliza de modo amplio para referirse a diferentes estilos de música jamaiquina, por reggae se entiende en sentido estricto un género musical específico que se originó como desarrollo de otros anteriores como el ska y el rocksteady.'),
(10, 'Electronica', 'La música electrónica es aquel tipo de música que emplea para su producción e interpretación de instrumentos electrónicos y tecnología musical electrónica. En general, puede distinguirse entre el sonido producido utilizando medios electromecánicos de aquel producido utilizando tecnología electrónica que también puede ser mezclada.'),
(11, 'Flamenco', 'El flamenco es un estilo de música y danza propio de Andalucía, Extremadura y Murcia. Sus principales facetas son el cante, el toque y el baile, contando también con sus propias tradiciones y normas. Tal y como lo conocemos hoy en día data del siglo XVIII, y existe controversia sobre su origen, ya que aunque existen distintas opiniones y vertientes ninguna de ellas puede ser comprobada de forma histórica. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interprete`
--

CREATE TABLE `interprete` (
  `id` int(2) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `num_miembros` int(2) NOT NULL,
  `nacionalidad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `interprete`
--

INSERT INTO `interprete` (`id`, `nombre`, `descripcion`, `num_miembros`, `nacionalidad`) VALUES
(2, 'Justin Bieber', 'Justin Drew Bieber (London, Canadá, 1 de marzo de 1994), más conocido como Justin Bieber, es un cantante y compositor canadiense. En 2008, el ejecutivo de la industria de la música Scooter Braun descubrió a Bieber cuando lo vio accidentalmente en algunos vídeos en YouTube y tiempo después se convirtió en su mánager.', 1, 'Canadá'),
(3, 'Andy y Lucas', 'Andy y Lucas (o Andy & Lucas) es un grupo musical de pop español formado por Andrés Morales y Lucas González. Presentaron su primer disco en 2003.', 2, 'España'),
(4, 'Nirvana', 'Nirvana fue una banda de grunge estadounidense procedente de Aberdeen, Washington, Estados Unidos integrada por el vocalista y guitarrista Kurt Cobain y el bajista Krist Novoselic en 1987. Desde su formación, Nirvana pasó a través de una serie de frecuentes cambios de baterista hasta que en 1990 se les unió definitivamente el baterista Dave Grohl.', 4, 'E.E.U.U'),
(5, 'Mozart', 'Joannes Chrysostomus Wolfgangus Theophilus Mozarta (Salzburgo, 27 de enero de 1756-Viena, 5 de diciembre de 1791), más conocido como Wolfgang Amadeus Mozart, fue un compositor y pianista austriaco, maestro del Clasicismo, considerado como uno de los músicos más influyentes y destacados de la historia.', 1, 'Austria'),
(6, 'Red hoy chili peppers', 'Red Hot Chili Peppers es una banda de rock alternativo y funk rock estadounidense formada en 1983 en Los Ángeles, California. Sus integrantes son, actualmente, el vocalista Anthony Kiedis, el guitarrista Josh Klinghoffer, el bajista Michael "Flea" Balzary, y el baterista Chad Smith. ', 4, 'E.E.U.U.'),
(7, 'ACDC', 'AC/DC es un grupo de hard rock formado en 1973 en Sídney, Australia, por los hermanos de origen escocés, Malcolm y Angus Young.\r\nSus álbumes se han vendido en numerosos países, en un total estimado de 200 millones de copias,4 5 embarcándose en giras multitudinarias por todo el mundo, y sus éxitos han musicalizado varias producciones cinematográficas sobresalientes.', 2, 'Australia'),
(8, 'Robert Johnson', 'Robert Leroy Johnson (Hazlehurst, Misisipi, 8 de mayo de 1911- Greenwood, Misisipi, 16 de agosto de 1938) fue un cantante, compositor y guitarrista estadounidense de blues conocido como el Rey del Blues del Delta. Sus grabaciones de 1936 a 1937 muestran una notable combinación de talento para cantar, tocar con habilidad la guitarra y componer canciones que influirían en diversas generaciones de músicos, pese a haber dejado grabadas tan solo 29 canciones.', 1, 'E.E.U.U.'),
(9, 'Taylor Swift', 'Taylor Alison Swift (Reading, 13 de diciembre de 1989) conocida como Taylor Swift, es una compositora y cantante estadounidense. Criada en Wyomissing (Pensilvania), Swift se mudó a Nashville (Tennessee) a la edad de 14 años para seguir una carrera de música country. Swift firmó con la compañía discográfica independiente Big Machine Records y se convirtió en la compositora más joven contratada por Sony/ATV Music Publishing House.', 1, 'E.E.U.U.'),
(10, 'David Guetta', 'Pierre David Guetta8 (París, Francia, 7 de noviembre de 1967), más conocido como David Guetta,9 10 es un disc jockey de música electrónica y productor discográfico francés, especializado en sonido house y dance.', 1, 'Francia'),
(11, 'Bob Marley', 'Robert Nesta Marley Booker, más conocido como Bob Marley (Nine Mile, Saint Ann, Jamaica, 6 de febrero de 1945 - Miami, Florida, Estados Unidos, 11 de mayo de 1981), fue un músico, guitarrista y compositor jamaiquino. Durante su carrera musical fue el líder, compositor y guitarrista de las bandas de ska, rocksteady y reggae The Wailers (1964-1974) y Bob Marley & The Wailers (1974-1981). ', 1, 'Jamaica'),
(12, 'Michael Jackson', 'Michael Joseph Jackson2 (Gary, Indiana, 29 de agosto de 1958-Los Ángeles, California, 25 de junio de 2009) más conocido como Michael Jackson, fue un cantante, compositor, bailarín, actor, productor, empresario y filántropo estadounidense. Conocido como el «Rey del Pop»,3 sus contribuciones y reconocimiento en la historia de la música y el baile, así como su publicitada vida personal, le convirtieron en una figura internacional en la cultura popular durante más de cuatro décadas, es reconocido como la estrella de la música pop más exitosa en el mundo.', 1, 'E.E.U.U.'),
(13, 'Katy Perry', 'Katheryn Elizabeth Hudson (Santa Bárbara, California, 25 de octubre de 1984), más conocida por su nombre artístico Katy Perry, es una cantante y compositora estadounidense, que saltó a la fama en 2008 con «I Kissed a Girl» y «Hot n Cold» de su segundo álbum One of the Boys (2008).', 1, 'E.E.U.U.'),
(14, 'Elvis Presley', 'Elvis Aaron Presleynota 1 (Tupelo, Misisipi, 8 de enero de 1935-Memphis, Tennessee, 16 de agosto de 1977) fue un cantante y actor estadounidense considerado de los más populares del siglo XX, considerado como un icono cultural y conocido ampliamente bajo su nombre de pila, Elvis. Se hace referencia a él frecuentemente como «el Rey del rock and roll» o simplemente «el Rey».', 1, 'E.E.U.U'),
(15, 'Freddie Mercury', 'Freddie Mercury (nacido Farrokh Bulsara Stone Town, Zanzíbar; 5 de septiembre de 1946-Kensington, Londres, Reino Unido; 24 de noviembre de 1991) fue un cantante, compositor y músico británico de origen parsi e indio,4 conocido por haber sido el fundador y vocalista de la banda de rock Queen.', 1, 'Zanzibar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estilos` (`estilos`),
  ADD KEY `interprete_id` (`interprete_id`);

--
-- Indices de la tabla `estilos`
--
ALTER TABLE `estilos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `interprete`
--
ALTER TABLE `interprete`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `estilos`
--
ALTER TABLE `estilos`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `interprete`
--
ALTER TABLE `interprete`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`estilos`) REFERENCES `estilos` (`id`),
  ADD CONSTRAINT `canciones_ibfk_2` FOREIGN KEY (`interprete_id`) REFERENCES `interprete` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
