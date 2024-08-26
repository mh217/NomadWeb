-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2024 at 12:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `price` int(100) NOT NULL,
  `image_urls` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image_urls`)),
  `latitude` decimal(10,5) NOT NULL,
  `longitude` decimal(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `hotel_name`, `city_name`, `image_name`, `price`, `image_urls`, `latitude`, `longitude`) VALUES
(1, 'Hotel Dubrovnik', 'Dubrovnik', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/268175127.jpg?k=22be69f134c0e0d512e91bb4acc64ff74cd8086c2d5fdecea1b9223bd5047bc5&o=&hp=1', 139, '[\"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/06/69/ee7e546ce5c4f73b8eb7ea6da436b4a96dd5b0cca4891ee603fdaa57df83.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/92/4c/3c5d524b0670a55b6c70bec8f42201e016ff536efbdf304a496c72134e1f.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/f0/70/8ac0756ee4d1b8813537bb196ccae706a177f33894d9884190352cd40036.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/f5/81/f3187a984e011c5fc85c8b28a007703ea77f92f042474da350b49d7fcb99.jpeg\"]', 42.65665, 18.07268),
(2, 'Rixos Premium Hotel', 'Dubrovnik', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/519848142.jpg?k=adf87bbf705236ec3f122ca83d98ba92c4c53b0572d6d0758ba2362a4eaa9e6b&o=&hp=1', 424, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/ae/55/e1d7e80bfb865940f2e50cf57e4d8e5368678274615ee46a57d427ee0e34.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/7f/fa/3ad672cd7296ebb7851c6ed1ae8f8434f593437bb7eefe988454529e6945.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/2e/d7/15c1369bda32cf33b7fec7e20b75ecb005bb90d20ce3340679a873453e88.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/4d/01/55b729040f65e015aab91c3d40b1c128c3365f188fc58143f0750b508101.jpeg\"]', 42.64547, 18.09092),
(3, 'Grand Hotel Park', 'Dubrovnik', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/130776877.jpg?k=3fa8b4ac4ad39224193822e73b815d66044dfdd811c1a668a028b84238692841&o=&hp=1', 193, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/c0/35/5a483e4e281e3d75e33b751cc358a4a6198165a81075e9f99248a5477cad.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/24/52/cad12b28efe0f31a6ead6282621063850f6c5aa0491cc31fe4b4c4a7c54c.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/b9/02/098f284260c67c3af61ce1104c9afe64217b098d90e7a58988c2c17ab4e3.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/39/f3/a4d6380b01f50320d1945d5a9f8fb76cbe7ecd6a7739a1bad32385d980ec.jpeg\"]', 42.65564, 18.07294),
(4, 'Hotel Carlstadt ', 'Karlovac', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/213259570.jpg?k=76753f6059d38c7b9bb3d95395868d0df4798d7d9f42f2c9577cf34493ac9663&o=&hp=1', 70, '[\"https://carlstadt.hr/wp-content/uploads/2014/12/Carlstadt-troposteljna-soba.jpg\", \"https://carlstadt.hr/wp-content/uploads/2014/12/apartmani-naslovna.jpg\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/219326747.jpg?k=d45ab645d207758fcf11a00840962c18ae1607ee320b0892bf9dae10a294c961&o=&hp=10\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/216954975.jpg?k=df0830967bf00c8545d3cea3d0035561bc5df60a4502249f5d3a7212e077737b&o=&hp=1\"]', 45.49389, 15.55050),
(5, 'Hotel Florian & Godler', 'Karlovac', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/205463260.jpg?k=f112be117aa7a4e95297d3a8e26b2065b06d256e9bba38c9bc67ea69eef9ac8d&o=&hp=1', 80, '[\"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/73/84/efc95b104766e19922129997a737fa59a24d6e2a3fe2d33c7c5d379ba48c.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/3d/a0/dd755fce2caf6fd4e4ba6c1c20fa0dd5bd25c8d4aae6c197cf7ff64b13cf.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/da/0a/84288e6089ad303edaf4091043693091a7c74b55db06bfaeecd571bff1d6.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/49/45/a5881228d179bad4cb54dd5e3e242bd87f3d5fd63d8986e257325932d16a.jpeg\"]', 45.49763, 15.55033),
(6, 'Hotel Korana Srakovcic', 'Karlovac', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/104107280.jpg?k=0429b3bdfaa34aaaad11d1e60bf33907d509a9d324893b341047269fdee6b491&o=&hp=1', 115, '[\"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/52/75/60b9da657dbfaa35ae81c27c9d92f2a36f3fa3b303afbe64eee428301a04.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/99/9d/f47a26df150ea9f93173f03b451c80cbe2a82193a17ee3e788d2dd87bef1.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/c5/f3/affa5944ef5277a0fd57ccf142cee0f8ba765ec511b6b41816b534b9b17d.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/7f/f4/a843da35f8575dc8d2722b7414d287e68cc65092262f9cfa16f1d6ad3169.jpeg\"]', 45.48905, 15.56159),
(7, 'Palace ', 'Zagreb', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/309934444.jpg?k=21b9bcd9de9feb12bfa9d5bf60fad6dfef1506521775edc48189b58c9cb465fe&o=&hp=1', 80, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/3a/42/013db30e6750b65395a76874d9cc0b027b3c581b440d1b1f1eaf7380ee24.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/c4/43/3b8a1d204d1d7fa3d814c03d6b70c9e4f7e506b42f62a2a4b9871d47c960.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/f8/aa/05f3cbfb447012cc813209f55c790466596a596b9e2b652f601e01614766.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_534,q_40,w_800/partner-images/cd/59/059397ce8a98e0b21f18618bacbf511008607006a461f3844f133b5a328d.jpeg\"]', 45.80909, 15.97758),
(8, 'Hotel Laguna', 'Zagreb', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/290650919.jpg?k=67beb9e621ae9382949423deffbea10537761addda7f83a054abe9daecc384de&o=&hp=1', 53, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/28/b4/c4a17b5461fe3f3eb2157878f02c6fe680a12e9a4248e3f0a3ef6f06f694.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/b9/ac/97a00fe6cfd7a9f46ac8371c450b10ea41b69fcd20c9362f4465f5ec58bb.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/a0/f1/52963271ca1c724c29386c01027ae9e715550cfec008c916cf5a8217d351.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/da/88/d6784db3054dc8a2e707c7629ab2405d05cba08fc62cde0e90837fe24024.jpeg\"]', 45.80385, 15.95822),
(9, 'Esplanade', 'Zagreb', 'https://kongresniturizam.com/storage/objects/3PrFLqKQuQ0nlbvb.jpg', 255, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/9c/9a/8e1a389a1d340abda84bc9d63f5b47a339c2ea0b3b0450e5340ee8f3e6ca.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/9c/9a/8e1a389a1d340abda84bc9d63f5b47a339c2ea0b3b0450e5340ee8f3e6ca.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/76/7b/8df267423853be84bc07b5ec878fd99aafaa3a57590fd138489218cfadc5.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/b2/35/303ec884ed14603eceb9a7da002bb38261627592805377f59a8eb07d8d95.jpeg\"]', 45.80551, 15.97597),
(10, 'Hotel Porto ', 'Zadar', 'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=NxvfWvjxPMo9zruGd5rtrA&cb_client=search.gws-prod.gps&yaw=252.17537&pitch=0&thumbfov=100&w=592&h=404', 86, '[\"https://cf.bstatic.com/xdata/images/hotel/max1024x768/411703880.jpg?k=c30a929e62d783f31fa3eb6cdba2369e1faed30189595918df7bdda4d187c749&o=&hp=1\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/297047778.jpg?k=12345552d27d53a1eb332047e32b8e201f9922d37ba917fae76525edab1429f3&o=&hp=1\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/297052822.jpg?k=1ad4b6ff95b95b7cf456b4aa5e19c0e0cfeb255cd5a5f9e2a31272872473549f&o=&hp=1\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/297058936.jpg?k=c426a581936387adea93583861ac988c2366c8fb5f77e28686eb2f9fbb3c6b59&o=&hp=1\"]', 44.10227, 15.26825),
(11, 'A mare Hotel', 'Zadar', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/545135568.jpg?k=7af0234a157dc49123fbfec9f6d45bbcc3c60d036da0379c28aea228b7ed325d&o=&hp=1', 220, '[\"https://zadarskitjednik.hr/images/2023/01/05/o_15233_1280.jpg\", \"https://www.057info.hr/wp-content/uploads/2022/08/hotel_iz_2_1660302988.jpg\", \"https://cf2.bstatic.com/xdata/images/hotel/max1024x768/407627058.jpg?k=9ed43c566ab4f482fcbe1bfcc624145aed48f66918d2bb6af49889edb3e5a544&o=&hp=1\", \"https://cf2.bstatic.com/xdata/images/hotel/max1024x768/545137547.jpg?k=0a047a1b6bd1f5b917ddb42d13b07cee6155fe07c016e61f0b77207d9712d703&o=&hp=1\"]', 44.11647, 15.23688),
(12, 'Boutique Hostel Forum', 'Zadar', 'https://www.almayer.hr/medias/almayer/big/15/almayer-art-and-heritage-hotel-secret-garden.jpg', 55, '[\"https://cf.bstatic.com/xdata/images/hotel/max1024x768/58908968.jpg?k=6bfbe4b3c50091e051cc4dea90bb1eba00b7f1ff46a6cb45b064862079c16e68&o=&hp=1\", \"https://cf2.bstatic.com/xdata/images/hotel/max1024x768/545137547.jpg?k=0a047a1b6bd1f5b917ddb42d13b07cee6155fe07c016e61f0b77207d9712d703&o=&hp=1\", \"https://hostelforumzadar.com/media/images/gallery/rooms/chat.jpg?r=560\", \"https://adrialin-live-images.s3.eu-central-1.amazonaws.com/accommodation/unit/227031/medium/FJqtc.jpg\"]', 44.11634, 15.22494),
(13, 'Hotel Maksimilian ', 'Osijek', 'https://lh3.googleusercontent.com/p/AF1QipPaCkh13_PD018ehszLFU6FExOr_pP1U9dlEQBG=s294-w294-h220-n-k-no', 80, '[\"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/94/d8/a15509dfb3e4af29e599d5ac30e90f88ba9b470f014a0aa6d3188f19611f.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/4d/ac/2cd846764ff410f8186f73da6b7819e65eb48b22b923d1f407385f01082a.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/93/06/009dbe9e40028788849d817264fb4a9c2afea4ce5456c3797b98b1608a5f.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/41/2a/bdc164ccc1e1cf7853d9bce120353e4b658d90d8777c5330d027378c6351.jpeg\"]', 45.56049, 18.69701),
(14, 'Hotel Osijek', 'Osijek', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/197205219.jpg?k=5f63d9575dbcd76322932275b2425f0ba56e74976ed51867e5644c604907f2bf&o=&hp=1', 153, '[\"https://cf.bstatic.com/xdata/images/hotel/max1024x768/298157317.jpg?k=d408bbbcff2e76aae4c605e1233a2332048aa1c440e9ba21a4edee51dcc0b715&o=&hp=1\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/521044900.jpg?k=3fa13a5ef6a7353c9c23e22f62a4e7aa5a5b59605aa469113afa66e4b7e0b472&o=&hp=1\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/298783681.jpg?k=a32dd11de3defd113933665bd947a62a682d4a5a9477522d5b822aa3815c62b8&o=&hp=1\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/214432702.jpg?k=a67bc0de36e87e53b10707c0d8852a96ae45b37bad81f9975263d3a0700849cf&o=&hp=1\"]', 45.56213, 18.68000),
(15, 'Hotel Waldinger', 'Osijek', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/24169613.jpg?k=d37f4c083018164e6280c28dc2cc1b9505c846f3b43f02dbdc34f3e4f11d27bc&o=&hp=1', 154, '[\"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/90/d9/c686f5cb0ea467643e760ea877391ae43818e839e9805bf347c1f58c21c4.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/88/67/824584d6b9385270a5d74becdf722fc1f737f9d7d0ace89241aa70a64420.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/c9/f4/feacf970212c1b81b61ef8498df8ec1bccceb4d77983799611b09679ec1b.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/56/e8/a148dd518636b5b26f10625575e82fc88cdc27b1fa19a2a7803010101917.jpeg\"]', 45.55886, 18.67587),
(16, 'Hotel As ', 'Split', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/203217843.jpg?k=4eba9085a91e3a3c058b0186599267d4ba444c05e915a9b43dd14cf5dee7abdd&o=&hp=1', 89, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/09/83/b7cd6c6c2cb370a775180bf7fcb0be8c168b57c0b3e502ac787159adcdc5.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/8b/0a/0508329b94a641830a1fc9e86f26e229cc41e87e5054526f033a7f126134.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/2d/ef/d29567f5738d7192ec3144e4484b2756f577ac31a8945f7fa0dd08bc93ab.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/d2/17/3867a040f9a4ff1e79fe83a9a1a4b35348ab738e7a309d2c797f093ddfa2.jpeg\"]', 43.52382, 16.45170),
(17, 'Radisson Blu Resort', 'Split', 'https://lh3.googleusercontent.com/p/AF1QipPLW2Clv_v07-n5KJ6rdesl3LXK8NB55Pv-WIjz=s294-w294-h220-n-k-no', 210, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/26/f9/99010e0168fd9a24d52d10aa81d12fcc6800f0b56d7b41793cbed991bce3.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/c4/cf/f806dcd8acd77e142833c358642e885a969101d85e82c55f2f20b4dbcfd0.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/hotelier-images/eb/ac/6c8373e69b24196aa0bc4d3a6a408dca6da489cdec099285be224e8bb47d.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/d4/82/fd064c52728985185f91907da3c249120e1cda71e4e790eea154ced3b010.jpeg\"]', 43.50308, 16.47059),
(18, 'Hotel Split', 'Split', 'https://lh3.googleusercontent.com/p/AF1QipNhmDAbDHKJySWJoAWm3_CwbS0MXe5wpDJ1l8Wg=s294-w294-h220-n-k-no', 96, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/6d/66/10f8280f12c7216c3d6830b4b5fc313f4b35c2d2232a041725ddc9ae2cce.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/67/a9/41608e6b4b9deb544890222b657ea623aec52238c8d1f4e77acbd03832ea.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/9b/2a/d80db4ea883e9322a29f3fb49f725f15d14f74a7eeb30df93228e0a5bc15.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/42/c5/873cac08ae2e802a9dfcb17bd104e14ea7e28405e873df26ad54021b1a03.jpeg\"]', 43.49822, 16.53571),
(19, 'Hotel Galija', 'Pula', 'https://lh3.googleusercontent.com/p/AF1QipPQPCjZlSfFcS6TdgWrw23bE1Y7EOMpZ2yPMWeh=s294-w294-h220-n-k-no', 76, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/62/68/6363086b2176b0f49b666367ce2d57db88cbc252540d6779d7db4dda5c45.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/32/38/1eeb9f603e50c0dce11d9becb0e5f766acedcd3c4b760f649b167882f14d.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/35/b5/95e31532f956a6eae028bda67ebd1cf14cc74a493ec92b2cb4af2d3dae4a.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_534,q_40,w_800/partner-images/c2/6b/740ac1c099fbd05d5de854f44998e767b10d86eea788639a163e607070ef.jpeg\"]', 44.86902, 13.84977),
(20, 'Park Plaza Histria', 'Pula', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/527905379.jpg?k=2c21910159d6bc13dc4720ae18f4090623918f2c8372eaf49a10b34cf940b57e&o=&hp=1', 460, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/3d/a5/ed3bd6fb941bdc6e25971631ed21f9f89b698717221784c2f0c51a3c4a1c.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/cd/c9/91c6a14fd3f283e3dd0b9481ba59a8701c1b89ab8a548131c75ce5c0ed01.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/b6/fa/a39c8cf818a3bb1bcbd1b6ed865680ff25612ce5c2d332b5513ca0d4fea1.jpeg\", \"https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1020,q_auto,w_2000/partner-images/66/fc/d4bb4e57336d7bddf94b790d38e790fa87d36ce1a96fec2d8e512b44e89b.jpeg\"]', 44.83645, 13.83947),
(21, 'Hotel Veli Jože', 'Pula', 'https://www.veli-joze.hr/ea/wp-content/uploads/2015/06/photo-10.jpg', 87, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/2c/11/d614c5733ebdf748ccf59749d0c0b77b8484c19b2076c13f03178666af44.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/5f/a5/808bfd917bb4a22596870d7f44cd8a9cbd605b79d37f7b9fb4582f66c6f9.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_534,q_40,w_800/partner-images/51/e5/2f0c254e93c00940b2c20c3d34d739795f0aec26ce045667362dc85cb66f.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/72/d2/4eb0d41f37672fcb646a10c91fb718890dfbc162fae7f5f89821b91cf031.jpeg\"]', 44.86264, 13.83798),
(22, 'Gajeva Rooms', 'Virovitica', 'https://gajeva-rooms-stockholm-apartman-virovitica.hotel-mix.de/data/Photos/OriginalPhoto/15482/1548213/1548213880/Gajeva-Rooms-Stockholm-Apartment-Self-Check-In-Virovitica-Exterior.JPEG', 60, '[\"https://cf.bstatic.com/xdata/images/hotel/max1024x768/380092580.jpg?k=35baea6ea1510ec9858682e9042b9130e97af27492294587825dd17da970e0cb&o=&hp=1\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/380092589.jpg?k=d90112f2cd37af4de1a702eb41747681cbfb2c11f034ba056690e2c70b3146d1&o=&hp=1\", \"https://q-xx.bstatic.com/xdata/images/hotel/max1280x900/491982694.jpg?k=06e8a9a9b6fed961d1679e747753d02cb288bd091c4db15fb5b86d6baa49ecda&o=\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/374487295.jpg?k=cc0983b1bd17a16a158c0e6c0d436a866bc400601d04a852a70b8323965ec821&o=&hp=1\"]', 45.83093, 17.38612),
(23, 'Hotel Mozart', 'Virovitica', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/12163137.jpg?k=aa788be06156424ba93e95f3a0b4829c9fc1ca1e87bde8c0d23165cc375193c0&o=&hp=1', 80, '[\"https://lh4.googleusercontent.com/proxy/LxqYWVGdyTn5pc3huuKiUY7nIWSQBX_25DIeca2399Tp0DcOCDZOj5wBRPlDxTD_574rht5b99et90KgA48F\", \"https://cf.bstatic.com/xdata/images/hotel/max1024x768/12165749.jpg?k=c97dcb86082dbf0554ba1ce46ca350703cb810948d7989e83d35740f0d8ceb4e&o=&hp=1\", \"https://media-cdn.tripadvisor.com/media/photo-s/08/33/d6/90/hotel-mozart.jpg\", \"https://q-xx.bstatic.com/xdata/images/hotel/max500/429183455.jpg?k=ad51c747c9e916fb995ecdbd80f0891135cdae495bdf2b726208f36655b88244&o=\"]', 45.83065, 17.28644),
(24, 'Kurija Janković', 'Virovitica', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/75121414.jpg?k=538bf974383cd726a5d4d23863aa86dbc431070be8b2e1426ed9958fd31df547&o=&hp=1', 79, '[\"https://q-xx.bstatic.com/xdata/images/hotel/max500/389092825.jpg?k=e839bd7a5eba8e327835dd02f7e1ca95aded86ca0a8c8d9c0469e68133d2e07d&o=\", \"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/1d/1b/f4/hotel-kurija-jankovic.jpg?w=700&h=-1&s=1\", \"https://www.kurija-jankovic.com/wp-content/uploads/2017/02/DJI_0904-Pano.jpg\", \"https://lh3.googleusercontent.com/p/AF1QipM0ib4yNjQ2bq-z3v5qt9qh-6dQE2D3Bn6eGy3g=s294-w294-h220-n-k-no\"]', 45.88930, 17.42043),
(25, 'Hotel Eden', 'Rovinj', 'https://res.cloudinary.com/maistra/image/upload/w_1920,c_lfill,g_auto,q_auto,dpr_auto/f_auto/w_1920,c_fill,g_auto,q_auto,dpr_auto/f_auto/v1643377130/Proprietes/Collection%20/Rovinj/Eden/Gallery/Hotel%20Eden/Eden%20Main%20Gallery/M18_003_00059_txtbmu.jpg', 251, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/56/4d/872184f6f063a8a26ca788926eff37714d1cad2c6ba64d314bc13096198d.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/c1/28/5a039ef673c6482cea1fdafd1db6077448911a34fc3e794882cf830c9291.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/40/96/81d052070f7ce642a3b4e0ec320b3a39ebe37ecbc125e6961e64b7aa376b.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_534,q_40,w_800/partner-images/67/b1/17a843c0cab6ce2d93590b85a945be63d48b9f0b780155500f52a5234c80.jpeg\"]', 45.07306, 13.64102),
(26, 'Sunset Residence', 'Rovinj', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/305226541.jpg?k=780db80927fb482c5989bd5d84bd34035da5b3e23759a023c16dd672b0f15fcc&o=&hp=1', 126, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/90/cf/f5c7b09be4b9bf6c149db6f1ee720adb86e9a898e11d5ee7fda711cd9b8a.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/f8/a0/46ab1be6427773da240c31c98a764c71aca3558f07b2f4b4a8b1db1a10bc.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/95/ac/a395448152fd446a5b6be73d04c6e0c24b74fd6a7dbc1377e201a415b0be.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_534,q_40,w_800/partner-images/ae/66/69cddbae1c8d983dbf69251d5290efc78cefbcb51b98a88d35803cf1549f.jpeg\"]', 45.07675, 13.64046),
(27, 'Hotel Arupinum', 'Rovinj', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/147544554.jpg?k=12190b7964ea578e61331967eaef377eea527013d7388542c75c8adfb860c9e6&o=&hp=1', 100, '[\"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/hotelier-images/a2/3d/3bccf991b0ed9b08c8e3299f6e90a8da37edcce5226bb5dfc426ebf35de2.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/4d/c0/f2260cea9e988bf8889383fbf24356c656bb75758db2a3129a9082a376d8.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/d5/1b/254fd52de4ecc645386b8a1e461b41900c075dd430b2adad96aabb6d8da5.jpeg\", \"https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_267,q_40,w_400/partner-images/ab/9d/7b466035da6a967a19593c98e83d414f17caada135c894bfdf0b76c79db7.jpeg\"]', 45.07534, 13.64149);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `image_name`, `description`) VALUES
(1, 'Zagreb', 'https://lp-cms-production.imgix.net/2020-10/View%20of%20Zagreb%20-%20J.%20Duval.jpg', 'Zagreb je glavni grad Republike Hrvatske i najveći grad u Hrvatskoj po broju stanovnika. Grad Zagreb je kao glavni grad Hrvatske posebna teritorijalna, upravna i samoupravna jedinica. Šire područje grada okuplja više od milijun stanovnika.'),
(3, 'Zadar', 'https://bookaweb.s3.eu-central-1.amazonaws.com/media/32223/pozdrav-suncu-%284%29.jpg', 'Zadar je grad te političko, kulturno, trgovačko, industrijsko, obrazovno i prometno središte Zadarske županije. Također je prijestolnica Zadarske nadbiskupije u Hrvatskoj. Smješten je na Jadranskom moru, na sjeverozapadnom dijelu Ravnih kotara.'),
(4, 'Osijek', 'https://www.tzosijek.hr/foto/naslovna/kalendar-manifestacija-osijek-2022.jpg', 'Osijek je grad u istočnoj Hrvatskoj. Smješten je u ravnici na desnoj obali rijeke Drave između 16. i 24. kilometra od ušća u Dunav. Najveći je grad u Slavoniji, četvrti po veličini grad u Hrvatskoj, te je industrijsko, upravno, akademsko, sudsko i kulturno središte Osječko-baranjske županije.'),
(5, 'Split', 'https://static-web.uniline-cdn.eu/932ce088-0f5f-4e78-8c33-398b8204c0ef/conversions/Split1c-thumb.jpg', 'Split je najveći grad u Dalmaciji, te po broju stanovnika i drugi najveći grad u Hrvatskoj, a predstavlja gospodarsko i kulturno središte Dalmacije'),
(6, 'Dubrovnik', 'https://croatia.hr/cmsmedia/Destinacija/Regija/stari-grad-dubrovnik-pogled-sa-srdja-optimizirano-za-tisak-luka-esenko-3500.jpg', 'Dubrovnik je grad na krajnjem jugu Hrvatske. Upravno je središte Dubrovačko-neretvanske županije i jedno od najvažnijih povijesno-turističkih središta Hrvatske. Prema popisu iz 2021. godine ima 41 562 stanovnika; njih 92% izjasnilo se Hrvatima.'),
(7, 'Pula', 'https://www.visit-croatia.hr/photos/districts/thumbs/Pula-i-okolica-618bdc2611c82175679156_huge.jpg', 'Pula, grad u Hrvatskoj. Najveći je grad Istarske županije, leži na jugozapadnom području istarskog poluotoka u dobro zaštićenom zaljevu. Grad ima dugu tradiciju vinarstva, ribarstva, brodogradnje i turizma, a ujedno je i tranzitna luka. Pula je kulturni centar Istre još od rimskoga doba.'),
(8, 'Virovitica', 'https://www.vpz.hr/wp-content/uploads/2020/11/bkhv6k68.jpg', 'Virovitica je grad na sjeveroistočnom dijelu Hrvatske, a na sjeverozapadnom dijelu Slavonije, te je kulturno, političko, sportsko i administrativno sjedište Virovitičko-podravske županije. Smještena je na sjeveroistoku Hrvatske u nizinskom i ravničarskom području.'),
(9, 'Karlovac', 'https://upload.wikimedia.org/wikipedia/commons/c/c0/Karlova%C4%8Dka_zvijezda-_Izvor-_Digitalni_Tisak.jpg', 'Karlovac je grad u Hrvatskoj, upravno središte Karlovačke županije.'),
(10, 'Rovinj', 'https://www.myluxoria.com/storage/app/uploads/public/649/9ad/3cc/6499ad3ccc369003500801.jpeg', 'Rovinj je grad na zapadnom dijelu Hrvatske. Nalazi se na zapadnoj obali Istre. Skupa s Porečom čini turistički centar Istre, te je jedno od najprivlačnijih turističkih odredišta na Jadranu. Područje grada Rovinja graniči s općinama Bale, Kanfanar, Sv. Lovreč i Vrsar.');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `email`, `message`) VALUES
(1, 'aa@gmail.com', 'Prva poruka'),
(2, 'aa@gmail.com', 'Druga poruka'),
(3, 'aa@gmail.com', 'Druga poruka '),
(4, 'aa@gmail.com', 'Treca poruka '),
(5, 'aa@gmail.com', 'Nova poruka'),
(6, 'aa@gmail.com', 'Novija poruka'),
(7, 'aa@gmail.com', 'Message\r\n'),
(8, 'ab@gmail.com', 'PORUKA'),
(9, 'ada@gmail.com', 'PORUKA'),
(10, 'ABA@gmail.com', 'PORUKA'),
(11, 'akkk@gmail.com', 'PORUKA'),
(12, 'abba@gmail.com', 'Home'),
(13, 'ana@gmail.com', 'Porukaaa'),
(14, 'amanda@gmail.com', 'Porukaaaa'),
(15, 'novi@gmail.com', 'Nova poruka 14.6'),
(16, 'novo.novo@gmail.com', 'Porukkka '),
(17, 'james@gmail.com', 'PORUAKAA\n'),
(18, 'neki@gmail.com', 'poruka '),
(19, 'netko@gmail.com', 'Poruka'),
(20, 'helga@gmail.com', 'Nova poruka'),
(21, 'adam@gmail.com', 'Ovo je najnovija poruka'),
(22, 'jessy@gmail.com', 'Rana poruka '),
(23, 'maja@gmail.com', 'Por');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `guests` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `check_in`, `check_out`, `guests`, `hotel_name`) VALUES
(1, 'Maja', 'maja@gmail.com', '2024-06-13', '2024-06-16', 0, 'Hotel Mozart'),
(2, 'john', 'john@gmail.com', '2024-06-13', '2024-06-17', 0, 'Hotel Mozart'),
(3, 'Andrew', 'andrew@gmail.com', '2024-06-13', '2024-06-28', 3, 'Hotel Mozart'),
(4, 'Barbara Kadabra', 'barbara@gmail.com', '2024-06-14', '2024-06-21', 4, 'Hotel Mozart'),
(5, 'Thomas Moon', 'aa@gmail.com', '2024-06-14', '2024-06-30', 5, 'Hotel Mozart'),
(6, 'Adam Adams', 'adam@gmail.com', '2024-06-25', '2024-06-30', 4, 'Boutique Hostel Forum'),
(7, 'Adam Adams', 'adam@gmail.com', '2024-06-27', '2024-07-07', 5, 'A mare Hotel'),
(8, 'Adam Adams', 'adam@gmail.com', '2024-06-27', '2024-07-07', 3, 'Boutique Hostel Forum');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `user_type`) VALUES
(1, 'Ana', 'Anić', 'ana@gmail.com', '$2y$10$PUnZXm5rSBHfkGSYJfVJNuo0oDsOpKgkvutU0Z34WBzXBZeeC3knO', 'user'),
(2, 'Andrej', 'Anić', 'andrej@gmail.com', '$2y$10$E8XOfOJX2uzJH8MySnJJAe1aMwDN9cnGSaeRVB6WUSl/pCY86Aipi', 'user'),
(3, 'Admin ', 'Admin', 'admin@admin.com', '$2y$10$GKGvNGzaOIkPIYhvQ5mhUefIg2CQMY2wAYoDsG1iWZora5R4CQEqS', 'admin'),
(4, 'korisnik', 'korisnik', 'aa@gmail.com', '$2y$10$nZZ1Rftaw4qpBQ/PhEMcYuUbKYClntNiDkoKPAaBjWLt4ZAIbCJm2', 'user'),
(5, 'Len', 'Lovi', 'len@gmail.com', '$2y$10$VKzky36tZ5yhSAb2Ayz/ce0N.Sr0kpcIf2zAhpwb8aPT.ukmR.5mG', 'user'),
(6, 'Lenny', 'Len', 'lenny@gmail.com', '$2y$10$QpM5oZ72SS4Eo.8qiPubUOFiydP.klowlmF5ra6dVUXpC0RpJx9qO', 'user'),
(7, 'Adam ', 'Adams ', 'adam@gmail.com', '$2y$10$4LWZLhi0k9D1I5b1FM70jO2wbsVEMoRbD.FQHEU5PNshSg4M3dUES', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
