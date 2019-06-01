/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 31/03/2019 15:05:02
*/
use shop;
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buylist
-- ----------------------------
DROP TABLE IF EXISTS `buylist`;
CREATE TABLE `buylist` (
  `m_account` varchar(20) DEFAULT NULL,
  `s_id` varchar(45) DEFAULT NULL,
  `p_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(5) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `send_place` varchar(45) DEFAULT NULL,
  `send_way` varchar(45) DEFAULT NULL,
  `pay_way` varchar(45) DEFAULT NULL,
  `totalprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for counter
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `count` varchar(9999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------
BEGIN;
INSERT INTO `counter` VALUES ('58');
COMMIT;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `p_id` varchar(255) NOT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_class` varchar(255) DEFAULT NULL,
  `p_price` int(255) DEFAULT NULL,
  `p_storage` int(255) DEFAULT NULL,
  `p_size` varchar(255) DEFAULT NULL,
  `p_color` varchar(255) DEFAULT NULL,
  `p_originprice` varchar(255) DEFAULT NULL,
  `p_image` varchar(255) DEFAULT NULL,
  `p_image2` varchar(255) DEFAULT NULL,
  `p_image3` varchar(255) DEFAULT NULL,
  `p_image4` varchar(255) DEFAULT NULL,
  `p_poster` varchar(255) DEFAULT NULL,
  `p_poster2` varchar(255) DEFAULT NULL,
  `p_star` varchar(255) DEFAULT NULL,
  `p_hot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` VALUES ('1', '簡約棉麻手提包(白)', 'bag', 299, 120, '60*70', '白', '299', 'border/bag/bagwhite.png', 'border/bag/bag-white.png', 'border/line.png', 'border/line.png', 'poster/bag-poster.png', 'poster/space.jpg', 'bag', '15');
INSERT INTO `goods` VALUES ('10', '時尚時尚最時尚洋裝(S)', 'clothes', 899, 300, 's', '白', '899', 'border/dress/dresswhite.png', 'border/dress/dress-white.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-s', '66');
INSERT INTO `goods` VALUES ('11', '時尚時尚最時尚洋裝(S)', 'clothes', 899, 270, 's', '藍', '899', 'border/dress/dressblue.png', 'border/dress/dress-blue.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-s', '31');
INSERT INTO `goods` VALUES ('12', '時尚時尚最時尚洋裝(S)', 'clothes', 899, 299, 's', '粉紅', '899', 'border/dress/dresspink.png', 'border/dress/dress-pink.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-s', '67');
INSERT INTO `goods` VALUES ('13', '時尚時尚最時尚洋裝(M)', 'clothes', 899, 60, 'm', '白', '899', 'border/dress/dresswhite.png', 'border/dress/dress-white.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-m', '77');
INSERT INTO `goods` VALUES ('14', '時尚時尚最時尚洋裝(M)', 'clothes', 899, 30, 'm', '藍', '899', 'border/dress/dressblue.png', 'border/dress/dress-blue.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-m', '88');
INSERT INTO `goods` VALUES ('15', '時尚時尚最時尚洋裝(M)', 'clothes', 899, 30, 'm', '粉紅', '899', 'border/dress/dresspink.png', 'border/dress/dress-pink.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-m', '99');
INSERT INTO `goods` VALUES ('16', '時尚時尚最時尚洋裝(L)', 'clothes', 899, 60, 'l', '白', '899', 'border/dress/dresswhite.png', 'border/dress/dress-white.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-l', '141');
INSERT INTO `goods` VALUES ('17', '時尚時尚最時尚洋裝(L)', 'clothes', 899, 60, 'l', '藍', '899', 'border/dress/dressblue.png', 'border/dress/dress-blue.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-l', '255');
INSERT INTO `goods` VALUES ('18', '時尚時尚最時尚洋裝(L)', 'clothes', 899, 60, 'l', '粉紅', '899', 'border/dress/dresspink.png', 'border/dress/dress-pink.png', 'border/line.png', 'border/line.png', 'poster/dress-poster.png', 'poster/space.jpg', 'dress-l', '67');
INSERT INTO `goods` VALUES ('19', '荷葉邊清涼短T(S)', 'clothes', 399, 30, 's', '白', '399', 'border/tshirt/tshirtwhite.png', 'border/tshirt/tshirt-white.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-s', '88');
INSERT INTO `goods` VALUES ('2', '簡約棉麻手提包(藍)', 'bag', 299, 27, '60*70', '藍', '299', 'border/bag/bagblue.png', 'border/bag/bag-blue.png', 'border/line.png', 'border/line.png', 'poster/bag-poster.png', 'poster/space.jpg', 'bag', '29');
INSERT INTO `goods` VALUES ('20', '荷葉邊清涼短T(S)', 'clothes', 399, 300, 's', '藍', '399', 'border/tshirt/tshirtblue.png', 'border/tshirt/tshirt-blue.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-s', '53');
INSERT INTO `goods` VALUES ('21', '荷葉邊清涼短T(S)', 'clothes', 399, 15, 's', '粉紅', '399', 'border/tshirt/tshirtpink.png', 'border/tshirt/tshirt-pink.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-s', '87');
INSERT INTO `goods` VALUES ('22', '荷葉邊清涼短T(M)', 'clothes', 399, 3, 'm', '白', '399', 'border/tshirt/tshirtwhite.png', 'border/tshirt/tshirt-white.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-m', '55');
INSERT INTO `goods` VALUES ('23', '荷葉邊清涼短T(M)', 'clothes', 399, 201, 'm', '藍', '399', 'border/tshirt/tshirtblue.png', 'border/tshirt/tshirt-blue.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-m', '44');
INSERT INTO `goods` VALUES ('24', '荷葉邊清涼短T(M)', 'clothes', 399, 15, 'm', '粉紅', '399', 'border/tshirt/tshirtpink.png', 'border/tshirt/tshirt-pink.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-m', '11');
INSERT INTO `goods` VALUES ('25', '荷葉邊清涼短T(L)', 'clothes', 399, 55, 'l', '白', '399', 'border/tshirt/tshirtwhite.png', 'border/tshirt/tshirt-white.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-l', '334');
INSERT INTO `goods` VALUES ('26', '荷葉邊清涼短T(L)', 'clothes', 399, 33, 'l', '藍', '399', 'border/tshirt/tshirtblue.png', 'border/tshirt/tshirt-blue.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-l', '23');
INSERT INTO `goods` VALUES ('27', '荷葉邊清涼短T(L)', 'clothes', 399, 15, 'l', '粉紅', '399', 'border/tshirt/tshirtpink.png', 'border/tshirt/tshirt-pink.png', 'border/line.png', 'border/line.png', 'poster/tshirt-poster.png', 'poster/space.jpg', 'tshirt-l', '456');
INSERT INTO `goods` VALUES ('28', '布行紀念帽T(S)', 'clothes', 399, 51, 's', '白', '399', 'border/TT/TTwhite.png', 'border/TT/TT-white.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-s', '14');
INSERT INTO `goods` VALUES ('29', '布行紀念帽Ｔ(S)', 'clothes', 399, 223, 's', '藍', '399', 'border/TT/TTblue.png', 'border/TT/TT-blue.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-s', '10');
INSERT INTO `goods` VALUES ('3', '簡約棉麻手提包(粉)', 'bag', 399, 299, '60*70', '粉紅', '399', 'border/bag/bagpink.png', 'border/bag/bag-pink.png', 'border/line.png', 'border/line.png', 'poster/bag-poster.png', 'poster/space.jpg', 'bag', '335');
INSERT INTO `goods` VALUES ('30', '布行紀念帽Ｔ(S)', 'clothes', 399, 10, 's', '粉紅', '399', 'border/TT/TTpink.png', 'border/TT/TT-pink.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-s', '32');
INSERT INTO `goods` VALUES ('31', '布行紀念帽Ｔ(M)', 'clothes', 499, 111, 'm', '白', '499', 'border/TT/TTwhite.png', 'border/TT/TT-white.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-m', '25');
INSERT INTO `goods` VALUES ('32', '布行紀念帽Ｔ(M)', 'clothes', 499, 111, 'm', '藍', '499', 'border/TT/TTblue.png', 'border/TT/TT-blue.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-m', '71');
INSERT INTO `goods` VALUES ('33', '布行紀念帽Ｔ(M)', 'clothes', 499, 24, 'm', '粉紅', '499', 'border/TT/TTpink.png', 'border/TT/TT-pink.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-m', '121');
INSERT INTO `goods` VALUES ('34', '布行紀念帽Ｔ(L)', 'clothes', 499, 57, 'l', '白', '499', 'border/TT/TTwhite.png', 'border/TT/TT-white.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-l', '32');
INSERT INTO `goods` VALUES ('35', '布行紀念帽Ｔ(L)', 'clothes', 399, 21, 'l', '藍', '399', 'border/TT/TTblue.png', 'border/TT/TT-blue.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-l', '15');
INSERT INTO `goods` VALUES ('36', '布行紀念帽Ｔ(L)', 'clothes', 499, 32, 'l', '粉紅', '499', 'border/TT/TTpink.png', 'border/TT/TT-pink.png', 'border/line.png', 'border/line.png', 'poster/TT-poster.png', 'poster/space.jpg', 'tt-l', '111');
INSERT INTO `goods` VALUES ('37', '豪華船筆帶(白)', 'stationery', 199, 90, '18*5', '白', '199', 'border/pen/penwhite.png', 'border/pen/pen-white.png', 'border/line.png', 'border/line.png', 'poster/pen-poster.png', 'poster/space.jpg', 'pen', '40');
INSERT INTO `goods` VALUES ('38', '豪華船筆帶(藍)', 'stationery', 199, 19, '18*5', '藍', '199', 'border/pen/penblue.png', 'border/pen/pen-blue.png', 'border/line.png', 'border/line.png', 'poster/pen-poster.png', 'poster/space.jpg', 'pen', '44');
INSERT INTO `goods` VALUES ('39', '豪華船筆帶(粉)', 'stationery', 199, 24, '18*5', '粉紅', '199', 'border/pen/penpink.png', 'border/pen/pen-pink.png', 'border/line.png', 'border/line.png', 'poster/pen-poster.png', 'poster/space.jpg', 'pen', '9');
INSERT INTO `goods` VALUES ('4', '美式小清新多功能包(白)', 'bag', 499, 99, '30*50', '白', '499', 'border/function/functionwhite.png', 'border/function/funtion-white.png', 'border/line.png', 'border/line.png', 'poster/funtion-poster.png', 'poster/space.jpg', 'funcbag', '44');
INSERT INTO `goods` VALUES ('40', '桃花朵朵名片夾(白)', 'stationery', 99, 0, 'A4', '白', '99', 'border/wallet/open-idwhite.png', 'border/wallet/open-id-white.png', 'border/wallet/midas-white.png', 'border/line.png', 'poster/open-id-poster.png', 'poster/space.jpg', 'wallet', '63');
INSERT INTO `goods` VALUES ('41', '桃花朵朵名片夾(藍)', 'stationery', 499, 33, 'A4', '藍', '499', 'border/wallet/open-idblue.png', 'border/wallet/open-id-blue.png', 'border/wallet/midas-blue.png', 'border/line.png', 'poster/open-id-poster.png', 'poster/space.jpg', 'wallet', '34');
INSERT INTO `goods` VALUES ('42', '桃花朵朵名片夾(粉)', 'stationery', 499, 53, 'A4', '粉紅', '499', 'border/wallet/open-idpink.png', 'border/wallet/open-id-pink.png', 'border/wallet/midas-pink.png', 'border/line.png', 'poster/open-id-poster.png', 'poster/space.jpg', 'wallet', '86');
INSERT INTO `goods` VALUES ('43', '超級好用文件夾(白)', 'stationery', 499, 33, 'A4', '白', '499', 'border/file/all-filewhite.png', 'border/file/all-file-white.png', 'border/file/file-white.png', 'border/file/open-file-white.png', 'poster/all-file-poster.png', 'poster/space.jpg', 'file', '11');
INSERT INTO `goods` VALUES ('44', '超級好用文件夾(藍)', 'stationery', 499, 33, 'A4', '藍', '499', 'border/file/all-fileblue.png', 'border/file/all-file-blue.png', 'border/file/file-blue.png', 'border/file/open-file-blue.png', 'poster/all-file-poster.png', 'poster/space.jpg', 'file', '22');
INSERT INTO `goods` VALUES ('45', '超級好用文件夾(粉)', 'stationery', 499, 9, 'A4', '粉紅', '499', 'border/file/all-filepink.png', 'border/file/all-file-pink.png', 'border/file/file-pink.png', 'border/file/open-file-pink.png', 'poster/all-file-poster.png', 'poster/space.jpg', 'file', '43');
INSERT INTO `goods` VALUES ('46', '廚神筆記本', 'stationery', 299, 42, '18*15', '白', '299', 'border/book/bookwhite.png', 'border/book/book-white.png', 'border/book/men_book.png', 'border/book/book_pic.png', 'poster/book-poster.png', 'poster/long.png', 'book', '65');
INSERT INTO `goods` VALUES ('47', '廚神筆記本', 'stationery', 299, 57, '18*15', '藍', '299', 'border/book/bookblue.png', 'border/book/book-blue.png', 'border/book/men_book.png', 'border/book/book_pic.png', 'poster/book-poster.png', 'poster/long.png', 'book', '22');
INSERT INTO `goods` VALUES ('48', '廚神筆記本', 'stationery', 299, 15, '18*15', '粉紅', '299', 'border/book/bookpink.png', 'border/book/book-pink.png', 'border/book/men_book.png', 'border/book/book_pic.png', 'poster/book-poster.png', 'poster/long.png', 'book', '90');
INSERT INTO `goods` VALUES ('5', '美式小清新多功能包(藍)', 'bag', 499, 99, '30*50', '藍', '499', 'border/function/functionblue.png', 'border/function/funtion-blue.png', 'border/line.png', 'border/line.png', 'poster/funtion-poster.png', 'poster/space.jpg', 'funcbag', '515');
INSERT INTO `goods` VALUES ('6', '美式小清新多功能包(粉)', 'bag', 499, 300, '30*50', '粉紅', '499', 'border/function/functionpink.png', 'border/function/funtion-pink.png', 'border/line.png', 'border/line.png', 'poster/funtion-poster.png', 'poster/space.jpg', 'funcbag', '23');
INSERT INTO `goods` VALUES ('7', '董哥愛用款後背包(白)', 'bag', 999, 300, '70*50*50', '白', '999', 'border/schoolbag/schoolbagwhite.png', 'border/schoolbag/schoolbag-white.png', 'border/line.png', 'border/line.png', 'poster/school-poster.png', 'poster/space.jpg', 'schbag', '56');
INSERT INTO `goods` VALUES ('8', '董哥愛用款後背包(藍)', 'bag', 999, 299, '70*50*50', '藍', '999', 'border/schoolbag/schoolbagblue.png', 'border/schoolbag/schoolbag-blue.png', 'border/line.png', 'border/line.png', 'poster/school-poster.png', 'poster/space.jpg', 'schbag', '79');
INSERT INTO `goods` VALUES ('9', '董哥愛用款後背包(粉)', 'bag', 799, 271, '70*50*50', '粉紅', '799', 'border/schoolbag/schoolbagpink.png', 'border/schoolbag/schoolbag-pink.png', 'border/line.png', 'border/line.png', 'poster/school-poster.png', 'poster/space.jpg', 'schbag', '50');
COMMIT;

-- ----------------------------
-- Table structure for guestbook
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `gender` varchar(5) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `suggesttype` varchar(50) DEFAULT NULL,
  `content` text,
  `item` varchar(50) DEFAULT '青色-L',
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
BEGIN;
INSERT INTO `guestbook` VALUES (47, 'boy', 'midas112800@gmail.com', NULL, '0920869551', '商品品質', '我好喜歡這個網頁的設計，購物流程好順暢～', '青色-L', '2019-01-05 02:23');
INSERT INTO `guestbook` VALUES (48, 'boy', '123@gmail.com', NULL, '0912345667', '出貨效率', '請問我的退款怎麼沒入帳。傻眼貓咪', '青色-L', '2019-01-05 02:25');
INSERT INTO `guestbook` VALUES (49, 'girl', 'ooiamsohandsome@yahoo.com.tw', NULL, '0929384771', '商品品質', '很快就收到衣服了，幫先生買的，先生試穿剛好，挺喜歡的。', '青色-L', '2019-01-05 02:26');
INSERT INTO `guestbook` VALUES (50, 'girl', 'goodboy1123@hotmail.com', NULL, '0988937112', '其他', '背景小豬怎麼可以這麼可愛～～～<3<3<3', '青色-L', '2019-01-05 02:26');
INSERT INTO `guestbook` VALUES (51, 'girl', 'vicky870606@gmail.com', NULL, '0920398884', '其他', '時尚時尚最時尚洋裝剛好裡面穿毛衣也不會太緊款式很好看&nbsp;', '青色-L', '2019-01-05 02:30');
INSERT INTO `guestbook` VALUES (52, 'boy', 'tracy09102@gmail.com', NULL, '0910283774', '售後服務', '有一名叫做小豬的客服人員好親切，有問題都可以指名他呦！整體網站設計就是只有一個字....「讚」！大愛', '青色-L', '2019-01-05 02:34');
INSERT INTO `guestbook` VALUES (53, 'boy', 'tracy09102@gmail.com', NULL, '0910283774', '商品品質', '買了一個廚神筆記本，本身就是一名廚師覺得這項商品真的是造福世界上的廚師們。', '青色-L', '2019-01-05 02:38');
INSERT INTO `guestbook` VALUES (54, 'girl', 'mpmpwoof@gmail.com', NULL, '0987987361', '其他', '封面的海報都好有特色，畫風好喜歡～想知道繪師的名字', '青色-L', '2019-01-05 02:39');
INSERT INTO `guestbook` VALUES (55, 'girl', 'jojocheater@gmail.com', NULL, '0225378971', '出貨效率', '前天才按下訂單，今天就收到了，好驚喜', '青色-L', '2019-01-05 02:40');
INSERT INTO `guestbook` VALUES (56, 'boy', '10612345@cycu.org.com', NULL, '0912345678', '商品品質', '才用了3個禮拜，你們的手提包提把就斷了！！這是什麼品質，果然夠「簡約」哈！？不會再光臨了', '青色-L', '2019-01-05 02:42');
COMMIT;

-- ----------------------------
-- Table structure for list_shopping
-- ----------------------------
DROP TABLE IF EXISTS `list_shopping`;
CREATE TABLE `list_shopping` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `p_id` int(11) NOT NULL,
  `l_number` int(11) NOT NULL,
  `m_account` varchar(45) NOT NULL,
  `l_status` varchar(45) NOT NULL DEFAULT '0',
  `message` varchar(1000) DEFAULT NULL,
  `stars` int(11) DEFAULT '3',
  `l_name` varchar(45) NOT NULL,
  `l_address` varchar(45) NOT NULL,
  `l_cellphone` varchar(45) NOT NULL,
  `delivery_time` varchar(45) NOT NULL,
  `l_idd` int(11) NOT NULL,
  `l_country` varchar(255) DEFAULT NULL,
  `totalprice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list_shopping
-- ----------------------------
BEGIN;
INSERT INTO `list_shopping` VALUES (119, '2019-03-13 17:25:13', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 44169, '台灣', '857');
INSERT INTO `list_shopping` VALUES (120, '2019-03-13 17:25:13', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 44169, '台灣', '857');
INSERT INTO `list_shopping` VALUES (121, '2019-03-13 17:25:13', 40, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 44169, '台灣', '857');
INSERT INTO `list_shopping` VALUES (122, '2019-03-13 17:25:50', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 33501, '台灣', '857');
INSERT INTO `list_shopping` VALUES (123, '2019-03-13 17:25:50', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 33501, '台灣', '857');
INSERT INTO `list_shopping` VALUES (124, '2019-03-13 17:25:50', 40, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 33501, '台灣', '857');
INSERT INTO `list_shopping` VALUES (125, '2019-03-13 17:25:54', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 48988, '台灣', '857');
INSERT INTO `list_shopping` VALUES (126, '2019-03-13 17:25:54', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 48988, '台灣', '857');
INSERT INTO `list_shopping` VALUES (127, '2019-03-13 17:25:54', 40, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 48988, '台灣', '857');
INSERT INTO `list_shopping` VALUES (128, '2019-03-13 17:27:19', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 81987, '台灣', '857');
INSERT INTO `list_shopping` VALUES (129, '2019-03-13 17:27:19', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 81987, '台灣', '857');
INSERT INTO `list_shopping` VALUES (130, '2019-03-13 17:27:19', 40, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-20', 81987, '台灣', '857');
INSERT INTO `list_shopping` VALUES (131, '2019-03-13 17:30:59', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-31', 59610, '台灣', '857');
INSERT INTO `list_shopping` VALUES (132, '2019-03-13 17:31:00', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-31', 59610, '台灣', '857');
INSERT INTO `list_shopping` VALUES (133, '2019-03-13 17:31:00', 40, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-31', 59610, '台灣', '857');
INSERT INTO `list_shopping` VALUES (134, '2019-03-13 17:36:58', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-31', 47600, '台灣', '857');
INSERT INTO `list_shopping` VALUES (135, '2019-03-13 17:36:58', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-31', 47600, '台灣', '857');
INSERT INTO `list_shopping` VALUES (136, '2019-03-13 17:36:58', 40, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-31', 47600, '台灣', '857');
INSERT INTO `list_shopping` VALUES (137, '2019-03-13 17:54:37', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 59561, '台灣', '857');
INSERT INTO `list_shopping` VALUES (138, '2019-03-13 17:54:38', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 59561, '台灣', '857');
INSERT INTO `list_shopping` VALUES (139, '2019-03-13 17:54:38', 40, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 59561, '台灣', '857');
INSERT INTO `list_shopping` VALUES (140, '2019-03-13 17:55:57', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 58498, '台灣', '857');
INSERT INTO `list_shopping` VALUES (141, '2019-03-13 17:55:57', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 58498, '台灣', '857');
INSERT INTO `list_shopping` VALUES (142, '2019-03-13 17:55:57', 40, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 58498, '台灣', '857');
INSERT INTO `list_shopping` VALUES (143, '2019-03-13 17:57:47', 38, 1, '87112800', '0', NULL, 3, '董建霖', '天龍市貧民區林森北路', '0920869551', '2019-07-18', 76919, '台灣', '1057');
INSERT INTO `list_shopping` VALUES (144, '2019-03-13 17:57:47', 3, 1, '87112800', '0', NULL, 3, '董建霖', '天龍市貧民區林森北路', '0920869551', '2019-07-18', 76919, '台灣', '1057');
INSERT INTO `list_shopping` VALUES (145, '2019-03-13 17:57:47', 25, 1, '87112800', '0', NULL, 3, '董建霖', '天龍市貧民區林森北路', '0920869551', '2019-07-18', 76919, '台灣', '1057');
INSERT INTO `list_shopping` VALUES (146, '2019-03-15 12:11:59', 2, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-12', 51270, '台灣', '1857');
INSERT INTO `list_shopping` VALUES (147, '2019-03-15 12:12:00', 36, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-12', 51270, '台灣', '1857');
INSERT INTO `list_shopping` VALUES (148, '2019-03-15 12:12:00', 8, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-12', 51270, '台灣', '1857');
INSERT INTO `list_shopping` VALUES (149, '2019-03-15 12:26:32', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-28', 13118, '台灣', '758');
INSERT INTO `list_shopping` VALUES (150, '2019-03-15 12:26:32', 33, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-28', 13118, '台灣', '758');
INSERT INTO `list_shopping` VALUES (151, '2019-03-15 12:41:30', 12, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 69776, '台灣', '1258');
INSERT INTO `list_shopping` VALUES (152, '2019-03-15 12:41:30', 2, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 69776, '台灣', '1258');
INSERT INTO `list_shopping` VALUES (153, '2019-03-15 12:57:31', 1, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 26902, '台灣', '757');
INSERT INTO `list_shopping` VALUES (154, '2019-03-15 12:57:31', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 26902, '台灣', '757');
INSERT INTO `list_shopping` VALUES (155, '2019-03-15 12:57:31', 39, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 26902, '台灣', '757');
INSERT INTO `list_shopping` VALUES (156, '2019-03-15 12:58:30', 1, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 98921, '台灣', '757');
INSERT INTO `list_shopping` VALUES (157, '2019-03-15 12:58:30', 38, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 98921, '台灣', '757');
INSERT INTO `list_shopping` VALUES (158, '2019-03-15 12:58:30', 39, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '', 98921, '台灣', '757');
INSERT INTO `list_shopping` VALUES (159, '2019-03-15 12:59:11', 1, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-05', 40749, '台灣', '757');
INSERT INTO `list_shopping` VALUES (160, '2019-03-15 12:59:11', 38, 1, 'a', '6', '1234', 3, 'Eric', 'null', 'null', '2019-03-05', 40749, '台灣', '757');
INSERT INTO `list_shopping` VALUES (161, '2019-03-15 12:59:11', 39, 1, 'a', '0', NULL, 3, 'Eric', 'null', 'null', '2019-03-05', 40749, '台灣', '757');
INSERT INTO `list_shopping` VALUES (162, '2019-03-18 15:52:05', 38, 1, '87112800', '6', '123', 3, '董建霖', '天龍市貧民區林森北路', '0920869551', '0003-03-13', 62382, '台灣', '259');
COMMIT;

-- ----------------------------
-- Table structure for love
-- ----------------------------
DROP TABLE IF EXISTS `love`;
CREATE TABLE `love` (
  `love_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_account` varchar(45) NOT NULL,
  `p_id` varchar(45) NOT NULL,
  PRIMARY KEY (`love_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of love
-- ----------------------------
BEGIN;
INSERT INTO `love` VALUES (73, 'a', '39');
INSERT INTO `love` VALUES (74, 'a', '38');
INSERT INTO `love` VALUES (75, 'a', '1');
COMMIT;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `m_account` varchar(45) NOT NULL,
  `m_password` varchar(45) DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL,
  `m_sex` varchar(45) DEFAULT NULL,
  `m_phone` varchar(45) DEFAULT NULL,
  `m_mail` varchar(45) DEFAULT NULL,
  `m_address` varchar(45) DEFAULT NULL,
  `m_level` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`m_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
BEGIN;
INSERT INTO `member` VALUES ('123', '1', '123', NULL, NULL, '123@gmail.com', NULL, '0');
INSERT INTO `member` VALUES ('87112800', '1', '董建霖', '男', '0920869551', 'midas112800@gmail.com', '天龍市貧民區林森北路', '0');
INSERT INTO `member` VALUES ('a', 'b', 'Eric', NULL, 'null', 'xxxxxx@xx', 'null', '0');
INSERT INTO `member` VALUES ('test123', '1', '管理員', NULL, '0912345656', '', '管理員之村', '1');
INSERT INTO `member` VALUES ('tray0601', '1', '阿嬿', '女', '09111111111', '', '埼玉县春日部市双叶町904', '0');
COMMIT;

-- ----------------------------
-- Table structure for receiver
-- ----------------------------
DROP TABLE IF EXISTS `receiver`;
CREATE TABLE `receiver` (
  `receipt` int(10) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(10) DEFAULT NULL,
  `m_phone` varchar(20) DEFAULT NULL,
  `m_address` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `rdate` varchar(30) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `m_mail` varchar(1000) DEFAULT NULL,
  `bought` varchar(9000) DEFAULT NULL,
  `deal` varchar(100) DEFAULT NULL,
  `send` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`receipt`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receiver
-- ----------------------------
BEGIN;
INSERT INTO `receiver` VALUES (1, 'null', '', 'null', 'null', 'null', 'null', 'null', NULL, NULL, '2019-01-30');
INSERT INTO `receiver` VALUES (2, 'null', '', 'null', 'null', 'null', 'null', 'null', NULL, NULL, '2019-01-12');
INSERT INTO `receiver` VALUES (3, 'null', '', 'null', 'null', 'null', 'null', 'null', NULL, NULL, NULL);
INSERT INTO `receiver` VALUES (4, 'null', '', 'null', 'null', 'null', 'null', 'null', NULL, NULL, NULL);
INSERT INTO `receiver` VALUES (5, 'null', '', 'null', 'null', 'null', 'null', 'null', NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
