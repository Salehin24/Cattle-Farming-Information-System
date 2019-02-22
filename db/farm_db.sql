-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2018 at 04:46 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(9, 'Dairy'),
(10, 'Poultry'),
(11, 'Goat'),
(12, 'Sheep'),
(13, 'Pigeon'),
(14, 'Quail'),
(15, 'Crab'),
(16, 'Snake'),
(17, 'Fish'),
(18, 'Expert Advice'),
(19, 'Disease');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'salehin', 'kabir', 'salehin@post.com', 'msg for test this blog project...', 1, '2018-02-15 19:52:58'),
(3, 'Nurul', 'Islam', 'nur@gmail.com', 'Fish farms or fish farming is a form of aquaculture. The act of fish farming is about raising fish commercially in tanks.....', 0, '2018-02-16 15:21:06'),
(4, 'Rashed', 'Alom', 'r.alam@gmail.com', 'Poultry farming means ï¿½raising various types of domestic birds commercially for the purpose of meat, eggs and feather.....', 0, '2018-02-16 15:21:53'),
(5, 'Jahamgir', 'Alom', 'alam@gmail.com', 'Goat farming is not a new enterprise. Rearing goats is a profitable business. Goat has been rearing since the time.....', 0, '2018-02-16 15:52:44'),
(6, 'Shah', 'Alom', 'shah@gmail.com', 'Dairy cow farming means ï¿½raising highly milk productive cows commercially for milk production purposeï¿½. Itï¿½s absolutely a.....', 0, '2018-02-16 16:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright Cattle Farm Ltd.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About', '<p>About It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>'),
(2, 'privacy policy', '<p>privacy policy It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(11, 9, 'Dairy Cow Farming', '<p>Dairy cow farming means &lsquo;raising highly milk productive cows commercially for milk production purpose&rsquo;. It&rsquo;s absolutely a part of agriculture or animal husbandry, enterprise for long term milk production from cows. Commercial dairy cow farming business is not a new idea. People are raising dairy cows for milk production from the ancient time. Dairy cow farming business is still a profitable business venture throughout the world. There are numerous new and established dairy cow farms available around the world. Here we are describing more about the advantages of dairy cow farming business, and the necessary steps for starting this profitable business.</p>\r\n<p><strong>Advantages of Commercial Dairy Cow Farming Business</strong><br /> There are numerous advantages of starting commercial dairy cow farming business. Here we are shortly describing the main advantages of this business.</p>\r\n<ul>\r\n<li>Milk and milk products have a huge demand throughout the world. This is the main advantages of starting dairy cow farming business.</li>\r\n<li>Nowadays, dairy industry is one of the most appealing sectors all over the world.</li>\r\n<li>Demands of milk will never reduce, it will increase gradually in accordance with current population growth. Even both vegetarians and non-vegetarians drink milk.</li>\r\n<li>You don&rsquo;t have to worry about marketing the products. Because it is among the traditional business and you will be able to sell your products easily.</li>\r\n<li>Dairy cow farming business doesn&rsquo;t pollute the environment, it&rsquo;s eco-friendly</li>\r\n</ul>\r\n<ul>\r\n<li>You can start dairy production by using your family labor. It&rsquo;s a good idea to properly utilize your family labor.</li>\r\n<li>Proper business plan and good care and management can ensure maximum profits. So it can be a great source of income and employment for the unemployed educated young.</li>\r\n<li>There are numerous highly productive dairy cows available throughout the world. You can choose any breed depending on your area and business purpose.</li>\r\n<li>Commercial dairy cow farming business requires high capital or investment. If you don&rsquo;t have enough money for investing, then you can apply for bank loans. Many govt. or non-govt. banks will allow you loans for starting this business.</li>\r\n<li>Along with profits, you can ensure nutrition for your family members through setting up commercial dairy cow farming business.</li>\r\n</ul>', 'upload/897dba72d7.jpg', 'admin', 'dairy, farming', '2018-02-19 19:19:05', 2),
(12, 9, 'How to Start a Dairy Farm', '<p>Starting dairy cow farming business is not so easy. You have to go through some step by step process for making high profits from this business. Here we are shortly describing the main steps for starting a profitable dairy cow farming business. The staring process includes selecting proper breeds, housing, feeding, care &amp; management and marketing. Also consider the followings while starting this business.</p>\r\n<ul>\r\n<li>First of all, try to determine the purpose of your farm. Why do you want to start dairy cow farming business? Do you have enough facilities for raising cows? Do you have enough time to care of your cows? Can you manage all the facilities required for the cows?</li>\r\n<li>It will be better, if you can visit some commercial dairy cow farms in your area. Try to understand the methods that your local farmers are using for raising dairy cows.</li>\r\n<li>Consult with the vet, and discuss about the possibilities of dairy cow farming in your area.</li>\r\n<li>It will be better if you can spend a few days in an established farm. You will be able to learn more about this business from the farmers.</li>\r\n<li>Ensure that &lsquo;you can provide the cows nutritious food throughout the year&rsquo;. Visit your local market to learn more about the feeding costs. If you want to produce foods by your own, then try to reserve some foods for cold or rainy seasons.</li>\r\n<li>In case of large scale commercial farms, employ experienced people. You can also train your workers based on the type of your farm.</li>\r\n<li>In case of marketing, try to sell your products in your local market. It will reduce marketing or transportation costs</li>\r\n</ul>', 'upload/47185991a7.jpg', 'admin', 'dairy, farming', '2018-02-19 19:20:54', 2),
(13, 9, 'Dairy Cow Breeds', '<p>There are numerous dairy cow breeds available throughout the world. You can choose any depending on your area, local facilities and your production purpose. Some famous and popular dairy cow breeds are Ayrshire, Brown Swiss, Guernsey, Gir, Holstein Friesian, Jersey, Milking Shorthorn, Red Sindhi, Sahiwal, Tharparkar etc. Consider your weather, local facilities and market demand of dairy products while selecting breeds for your dairy cow farming business.</p>', 'upload/80a6eb67da.jpg', 'admin', 'dairy, farming', '2018-02-19 19:23:38', 2),
(14, 9, 'Dairy Cow Feeding', '<p>Good foods ensure good health and maximum production.&nbsp;So always try to provide your cows adequate amount of high quality and nutritious foods to ensure proper growth and good health. Forages, which refer especially to hay or straw, are the most common type of feed used for raising dairy cows. For fulfilling energy demands, add cereal grains to the dairy cow&rsquo;s feed. Greens help to maximize milk production. So add greens as much as possible to their regular foods. Greens also help to reduce feeding costs. Alfalfa, timothy, clover etc. are considered as good greens for dairy cows. If possible, make a grazing place or pasture for your cows. Along with adequate nutritious foods, ensure availability of adequate amount of clean and fresh water. Dairy cows require more water than any other animals. Because they are mainly raised for their milk production, and their milk contain a large amount of water. Usually a dairy cow require about 5 liters of water for producing 1 liter milk. So provide them sufficient amount of water according to their demand.</p>', 'upload/184cd30aac.jpg', 'admin', 'dairy, farming', '2018-02-19 19:27:17', 2),
(15, 9, 'Care & Management', '<p>Taking good care and proper management is the main step to be successful in any animal husbandry business. So always try to take good care of your cows. Feed them nutritious food and provide sufficient amount of clean and fresh water. Vaccinate them timely, so that you can keep them free from all types of diseases or illness. If possible, always stock some necessary drugs. Keep their house clean and wash the cow regularly.</p>', 'upload/f7cc70c1b4.jpg', 'admin', 'dairy, farming', '2018-02-19 19:28:32', 2),
(16, 9, 'Milking', '<p>Select a calm and quiet place for milking your cows. It will be better, if you can manage a separate room for the cow for milking. You can both hand milk the cows and use machines for milking. Ensure you have good practices to make your cows as comfortable as possible during the time you are milking them.</p>', 'upload/c145ed2c14.jpg', 'admin', 'dairy, farming', '2018-02-19 19:29:37', 2),
(17, 9, 'Marketing', '<p>It will be better, if you set your marketing strategies before starting this business. Although dairy products have a huge demand throughout the world. There are many companies also available in many areas. You can try your local market.</p>\r\n<p>Every business has some advantages and disadvantages. Commercial dairy cow farming business is not an exception. As dairy farming business is an old business idea, so it has many advantages compared to it&rsquo;s disadvantages. But no doubt it&rsquo;s a profitable business. For running a successful dairy cow farming business, always take good care of your animals.</p>', 'upload/3731a67207.jpg', 'admin', 'dairy, farming', '2018-02-19 19:31:29', 2),
(18, 11, 'Goat Farming', '<p>Goat farming is not a new enterprise. Rearing goats is a profitable business. Goat has been rearing since the time immemorial. Generally goat farming means rearing goats for the purpose of harvesting milk, meat and fiber. At present, goat farming has become a profitable business and it requires a very low investment because of its multi-functional utility. Commercial goat farming business is contributing greatly to the economy and nutrition of a country.</p>\r\n<p>Goats are multi-functional animals. You can produce a wide variety of products from goats, such as milk, meat, fiber, manure etc. Goat&rsquo;s milk is used for producing full cream goat powder, skimmed goat milk powder, goat butter, goat milk cream, fresh goat milk etc. Goat meat is a great source of consumable meat which is very testy, nutritious and healthy. And goat&rsquo;s wool is being used in many purposes and skin of goat plays a vital role in leather industry. However, here we are describing more about the advantages of goat farming business and the required steps for starting a lucrative business.</p>', 'upload/49499087fc.jpg', 'admin', 'goat, farming', '2018-02-19 19:34:17', 2),
(19, 12, 'Sheep Farming ', '<p>Sheep farming is among the traditional business and occupations of the people of some countries around the world. Sheep have been rearing as a domestic animal from the ancient time. Usually sheep farming means &lsquo;rearing sheep commercially for the purpose of meat, milk and wool production&rsquo;. Although sheep farming for commercial milk production is not a good decision. Sheep are suitable for meat and wool production. If you have proper facilities, then you can raise sheep in both small and large scale. Commercial sheep farming business is very profitable and you will get your investment back within a very short period. Before starting sheep farming business, make a proper business plan and work according to the plan. Here we are describing more about the main advantages of commercial sheep farming business and the steps for starting this business.</p>\r\n<p><strong>Why Sheep Farming?</strong><br /> Sheep are raised mainly for their wool, milk, skins and manure production. Sheep meat is very tasty, nutritious and popular to all types of people throughout the world. Sheep farming business can be a great source of income and for eradicating poverty from the barren, desert, semiarid and mountainous areas. It is also a reliable income source for the people who are engaged with animal farming business.</p>\r\n<ul>\r\n<li>You don&rsquo;t need to have a huge capital for starting a sheep farm.</li>\r\n<li>You don&rsquo;t have to make an expensive house for your sheep.</li>\r\n<li>Sheep farming business require less labor than any other livestock farming business.</li>\r\n<li>Sheep give birth of kids frequently, so the size of your herd will be large within a short period.</li>\r\n<li>Sheep eat different kinds of plants, compared to other kinds of livestock animals. So you can use them for cleaning unwanted plants from your garden or field.</li>\r\n<li>Sheep hardly destroy trees than goats.</li>\r\n<li>Sheep can survive by consuming low quality grass and turn the feed into meat and wool.</li>\r\n<li>Sheep products such as wool, meat and milk are used for different purposes.</li>\r\n<li>They are very hardy animal, and can adopt themselves with almost all types of environment.</li>\r\n<li>Sheep require less space for living. Even you can raise sheep with your other livestock animals.</li>\r\n<li>By proper care and management, commercial sheep farming business can be a great source of earning and employment. Unemployed educated young can also make a good income and employment source through raising sheep commercially.</li>\r\n</ul>', 'upload/d4a9d8e616.jpg', 'admin', 'sheep, farming', '2018-02-19 19:36:12', 2),
(24, 10, 'Poultry Farming', '<p>Poultry farming means &lsquo;raising various types of domestic birds commercially for the purpose of meat, eggs and feather production&rsquo;. The most common and widely raised poultry birds are chicken. About 5k million chickens are being raised every year as a source of food (both meat and eggs of chicken). The chickens which are raised for eggs are called layer chicken, and the chickens which are raised for their meat production are called broiler chickens. The UK and USA consume more meat and eggs of chicken than other countries of the world. On an average the UK alone consumes more than 29 million chicken eggs everyday. However, in a word commercial poultry farming is very necessary to meet up the demand of animal nutrition (eggs and meat). Commercial poultry farming is also very profitable. And commercial poultry farming business is one of the traditional business ventures. Here we are describing more about the advantages of poultry farming business and the steps for running this business.</p>', 'upload/3b362a763c.jpg', 'admin', 'poultry, farming', '2018-02-19 20:01:58', 2),
(21, 18, 'Expart Advice', '<div class="title">\r\n<h2>Farm animals as pets</h2>\r\n</div>\r\n<p>Before deciding to keep any farm animals it&rsquo;s important to consider if you have the knowledge, time, facilities, money, and commitment needed to care for them.</p>\r\n<p>We advise not trying to keep cattle as it&rsquo;s very difficult to care for them properly without a lot of knowledge, experience, large amounts of land and specialist facilities. Pigs can also be challenging to care for, and we\'d urge anyone considering keeping a pig as a pet to find out as much as possible about their needs and whether it\'s a realistic pet for you.</p>\r\n<h2>Notifiable diseases (including avian influenza/bird flu)</h2>\r\n<p>In the event of an outbreak of a notifiable disease in the UK, keepers in England should refer to the Defra website, and keepers in Wales should refer to the Welsh Government website for the most up-to-date information and advice.</p>\r\n<h2>Knowledge and experience</h2>\r\n<p>You should first get knowledge and experience of farm animal health and welfare, including:</p>\r\n<ul style="list-style-type: disc;">\r\n<li style="text-align: left;">understanding the animals&rsquo; physical and behavioural needs</li>\r\n<li style="text-align: left;">knowing how to provide the correct diet</li>\r\n<li style="text-align: left;">being able to recognise signs of injury and disease, knowing how to prevent these and&nbsp;when to get veterinary help</li>\r\n<li style="text-align: left;">knowing how to handle the animals correctly and safely</li>\r\n<li style="text-align: left;">knowing how to carry out day-to-day husbandry tasks</li>\r\n<li style="text-align: left;">understanding the laws and requirements.</li>\r\n</ul>\r\n<p>Consider learning from experienced owners, joining a breed club or society, helping on a farm, or attending a training course.</p>\r\n<h2><strong> Environment</strong></h2>\r\n<div class="embeddedImg"><img id="embedded:Image_C:1232712996106" src="https://www.rspca.org.uk/ImageLocator/LocateAsset?asset=image&amp;assetId=1232712996106&amp;imageSize=Large&amp;mode=prd" alt="Close-up of a goat &copy; Andrew Forsyth/RSPCA Photolibrary" /></div>\r\n<p>Farm animals need enough space, the right type of land, housing and shelter, and things to keep them interested and let them behave normally. For some animals this may mean building new housing, which may require planning permission.</p>\r\n<p>The correct type of fencing is important.</p>\r\n<p>Most farm animals need to live in groups, which means keeping at least two animals of the same species which get on well together</p>\r\n<h2><strong> Veterinary care</strong></h2>\r\n<p>Farm animals often need regular visits from a vet for things like vaccinations, health checks and emergency care.</p>\r\n<h2><strong> Laws</strong></h2>\r\n<p>Under the Animal Welfare Act (2006) anyone responsible for a pet has a legal responsibility to meet the five basic welfare needs of pets.</p>\r\n<p>In addition there are strict laws covering the keeping, feeding, identification, transport and slaughter/killing of farm animals. Contact&nbsp;Defra&nbsp;for information.</p>', 'upload/c9627907e1.png', 'admin', 'expart, advice', '2018-02-19 19:45:31', 2),
(22, 13, 'Pigeon Farming', '<p>Pigeon farming is very interesting, profitable and pigeons are very popular domestic bird. Pigeons are considered as the symbol of peace. Almost all types of people who have facilities, love to raise some pigeon in their home. Pigeon farming require less labor and low investment. Even you can also raise and take care of them during your in leisure time. The meat of baby pigeon (squab) is very tasty, nutritious and restorative. Squabs also have huge demand and price in the market. On the other hand pigeon farming can be a great source of some extra income and entertainment. Raising pigeons using modern methods is very profitable than traditional way. So, to be successful in pigeon farming business, use modern rearing techniques and take good care of your birds. Here we are describing more about the advantages of pigeon farming and steps for starting this lucrative business.</p>\r\n<p><strong>Benefits of Pigeon Farming</strong><br /> Pigeon farming has some great benefits. The main and notable advantages of this business profitable are described below.</p>\r\n<ul>\r\n<li>Pigeons are domestic bird and it&rsquo;s very easy to handle them.</li>\r\n<li>From their six month of age they start laying eggs and produce two baby pigeon per month on an average.</li>\r\n<li>Pigeon can be raised easily in the home yard and roof of the house.</li>\r\n<li>It takes about 18 days to hatch their eggs.</li>\r\n<li>Baby pigeon (squab) become suitable for consumption within their 3 to 4 weeks of age.</li>\r\n<li>You can build a pigeon house in a small place with little investment.</li>\r\n<li>Pigeon feeding costs is very low. In most cases they collect food by themselves.</li>\r\n<li>Pigeon meat is very tasty, nutritious and has a great demand and value in the market.</li>\r\n</ul>\r\n<ul>\r\n<li>Pigeon farming is also very pleasing and entertaining. You can spent some good times through watching the activities of pigeons.</li>\r\n<li>You can get maximum profit form them, by investing small capital and labor.</li>\r\n<li>Diseases are comparatively less in pigeons.</li>\r\n<li>Closet of pigeon is a good manure for crop cultivation.</li>\r\n<li>Different types of toys can be made by the feather of pigeons.</li>\r\n<li>Pigeons help to keep the environment safe by eating different types of insects.</li>\r\n<li>The squab has has a great demand in the market as a good patient&rsquo;s diet.</li>\r\n<li>Pigeons start laying eggs at their 5 to 6 months of age.</li>\r\n<li>Pigeon farming can be a great income source for the people of some poor country, such as Bangladesh, India, Nigeria, Pakistan etc.</li>\r\n</ul>', 'upload/4eb7470f40.jpg', 'admin', 'pigeon, farming', '2018-02-19 19:51:11', 2),
(23, 14, 'Quail Farming', '<p>Before discussing more about commercial quail farming business, let me first explain &lsquo;what is quail farming?&rsquo; Actually the term &lsquo;quail farming&rsquo; means, raising quails commercially (like other poultry birds) for the purpose of profitable eggs and meat&nbsp;production. As far as we have experienced, quail farming business is very easy, lucrative and entertaining. It&rsquo;s very easy to maintain a quail farm, because quails are among the smallest species of poultry birds. The Japanese scientists first tamed&nbsp;the wild quails and revealed&nbsp;the ways to raise them as domestic birds. Commercial quail farming in Japan has spread tremendously. Now, people throughout the world performing quail farming business commercially for the purpose of meat and egg production.</p>\r\n<p>Quail farming is very profitable like other farming ventures, such as chicken, turkey or duck farming business. Almost all types of weather conditions are suitable for starting quail farming business. Meat and eggs of quail are very tasty and nutritious. Quail eggs are very nutritious than other poultry eggs. Because quail eggs contain comparatively more protein, phosphorus, iron, vitamin A, B1 and B2. Quail farming can play a vital role to meet up the demand of food and nutrition. Quail farming business require small capital and labor. Quails can be raised along with your other poultry birds&nbsp;for meat or eggs production.</p>\r\n<p><strong>Characteristics of Quail</strong></p>\r\n<ul>\r\n<li>Quails are very small sized bird.</li>\r\n<li>An adult quail weights between 150 to 200 grams and an egg weights around 7 to 15 grams.</li>\r\n<li>Female quails start laying eggs within their 6 to 7 weeks of age and continuously&nbsp;lay one egg daily.</li>\r\n<li>They lay about 300 eggs in their first year of life. After that they produce about 150 to 175 eggs in second year. Eggs production gradually decrease after their first year of laying period.</li>\r\n<li>Quail egg is very suitable for human health. It contains 2.47 % less fat than chicken egg. Many people believe that &lsquo;quail eggs help to prevent blood pressure, diabetic, pant etc&rsquo;.</li>\r\n<li>Quail meat is very tasty and nutritious. Fat is very low in their meat. So quail meat is very suitable for blood pressure patients.</li>\r\n<li>Eggs are very beautiful with multiple color.</li>\r\n<li>Quails do not incubate their eggs. So you have to use an incubator or brooder chickens for hatching their eggs.</li>\r\n</ul>', 'upload/1f280066b9.jpg', 'admin', 'quail, farming', '2018-02-19 19:54:29', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'Dairy Farming', 'upload/slider/8be8a17302.jpg'),
(4, 'Poultry Farming', 'upload/slider/45536f4f92.jpg'),
(3, 'Goat Farming', 'upload/slider/255e00f991.jpg'),
(5, 'Fish Farming', 'upload/slider/1a6fd35119.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/kabirbd.tk', 'http://twitter.com/kabir', 'http://linkedin.com/kabir', 'http://google.com/kabir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(2, 'Salehin Kabir', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'kabir@gmail.com', '<p>Hello! I am Salehin from Bangladesh.</p>', 0),
(6, 'manik', 'author', '202cb962ac59075b964b07152d234b70', 'manik@gmail.com', 'manik details...', 1),
(7, 'raton', 'editor', '202cb962ac59075b964b07152d234b70', 'raton@gmail.com', 'details of raton', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Cattle Farm', 'Dairy , Poultry , Fish Farming', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
