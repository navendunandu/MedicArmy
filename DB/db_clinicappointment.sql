# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_clinicappointment
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2024-11-02 16:11:42
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_clinicappointment'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_clinicappointment" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_clinicappointment";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "admin_name" varchar(50) default NULL,
  "admin_contact" varchar(50) default NULL,
  "admin_email" varchar(50) default NULL,
  "admin_password" varchar(50) default NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_name", "admin_contact", "admin_email", "admin_password") VALUES
	('2','Adwaitha Saju','9562920965','adwaitha@gmail.com','123');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_appointment'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_appointment" (
  "appointment_id" int(10) unsigned NOT NULL auto_increment,
  "appointment_date" varchar(50) default NULL,
  "appointment_fordate" varchar(50) default NULL,
  "availability_id" int(10) unsigned default NULL,
  "appointment_token" varchar(50) default NULL,
  "user_id" int(10) unsigned default NULL,
  "appointment_status" int(10) unsigned default '0',
  "appointment_amount" int(10) unsigned default NULL,
  "deliveryboy_id" int(10) unsigned default NULL,
  "presecription_image" varchar(50) default NULL,
  "shop_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("appointment_id")
) AUTO_INCREMENT=22;



#
# Dumping data for table 'tbl_appointment'
#

LOCK TABLES "tbl_appointment" WRITE;
/*!40000 ALTER TABLE "tbl_appointment" DISABLE KEYS;*/
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "availability_id", "appointment_token", "user_id", "appointment_status", "appointment_amount", "deliveryboy_id", "presecription_image", "shop_id") VALUES
	('12',NULL,'2024-10-30','4','15','9','4','100','1',' seyybgdyyhghy','12');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "availability_id", "appointment_token", "user_id", "appointment_status", "appointment_amount", "deliveryboy_id", "presecription_image", "shop_id") VALUES
	('13',NULL,'2024-10-30','5','15','6','4','100','4',' Paracetamol
vitaminA','13');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "availability_id", "appointment_token", "user_id", "appointment_status", "appointment_amount", "deliveryboy_id", "presecription_image", "shop_id") VALUES
	('14',NULL,'2024-10-22','6','5','6','4','100','4',' Dolo 
Vitamin A','13');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "availability_id", "appointment_token", "user_id", "appointment_status", "appointment_amount", "deliveryboy_id", "presecription_image", "shop_id") VALUES
	('15',NULL,'2024-10-16','6','5','6','0','100',NULL,NULL,NULL);
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "availability_id", "appointment_token", "user_id", "appointment_status", "appointment_amount", "deliveryboy_id", "presecription_image", "shop_id") VALUES
	('16',NULL,'2024-10-09','8','8','6','4','100','5',' dolo vitamin A','13');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "availability_id", "appointment_token", "user_id", "appointment_status", "appointment_amount", "deliveryboy_id", "presecription_image", "shop_id") VALUES
	('20','2024-10-31','2024-11-01','7','5','7','2','20',NULL,'presecriptionImage1620.png','13');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "availability_id", "appointment_token", "user_id", "appointment_status", "appointment_amount", "deliveryboy_id", "presecription_image", "shop_id") VALUES
	('21','2024-11-02','2024-11-15','7','5','7','5','200','6','presecriptionImage1806.jpg','14');
/*!40000 ALTER TABLE "tbl_appointment" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_availability'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_availability" (
  "availability_id" int(15) unsigned NOT NULL auto_increment,
  "availability_stime" varchar(15) default NULL,
  "availability_slot" int(15) unsigned default NULL,
  "clinic_id" int(15) unsigned default NULL,
  "availability_etime" varchar(15) default NULL,
  PRIMARY KEY  ("availability_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_availability'
#

LOCK TABLES "tbl_availability" WRITE;
/*!40000 ALTER TABLE "tbl_availability" DISABLE KEYS;*/
REPLACE INTO "tbl_availability" ("availability_id", "availability_stime", "availability_slot", "clinic_id", "availability_etime") VALUES
	('6','11:43','5','13','00:43');
REPLACE INTO "tbl_availability" ("availability_id", "availability_stime", "availability_slot", "clinic_id", "availability_etime") VALUES
	('7','00:43','5','16','10:45');
REPLACE INTO "tbl_availability" ("availability_id", "availability_stime", "availability_slot", "clinic_id", "availability_etime") VALUES
	('8','17:09','8','17','17:09');
/*!40000 ALTER TABLE "tbl_availability" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_cart'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_cart" (
  "cart_id" int(10) unsigned NOT NULL auto_increment,
  "cart_quantity" int(50) default '1',
  "cart_status" int(10) unsigned default '0',
  "medicine_id" int(10) unsigned default NULL,
  "appointment_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("cart_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_cart'
#

LOCK TABLES "tbl_cart" WRITE;
/*!40000 ALTER TABLE "tbl_cart" DISABLE KEYS;*/
REPLACE INTO "tbl_cart" ("cart_id", "cart_quantity", "cart_status", "medicine_id", "appointment_id") VALUES
	('1',1,'1','5','20');
REPLACE INTO "tbl_cart" ("cart_id", "cart_quantity", "cart_status", "medicine_id", "appointment_id") VALUES
	('2',1,'1','4','21');
/*!40000 ALTER TABLE "tbl_cart" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_category'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_category" (
  "category_id" int(10) unsigned NOT NULL auto_increment,
  "category_name" varchar(50) default NULL,
  PRIMARY KEY  ("category_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_category'
#

LOCK TABLES "tbl_category" WRITE;
/*!40000 ALTER TABLE "tbl_category" DISABLE KEYS;*/
REPLACE INTO "tbl_category" ("category_id", "category_name") VALUES
	('5','Vitamin');
REPLACE INTO "tbl_category" ("category_id", "category_name") VALUES
	('6','Pain Killer');
REPLACE INTO "tbl_category" ("category_id", "category_name") VALUES
	('7','Antidiabetic');
REPLACE INTO "tbl_category" ("category_id", "category_name") VALUES
	('8','AntiHyperTension');
/*!40000 ALTER TABLE "tbl_category" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_chat'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_chat" (
  "chat_id" int(10) unsigned NOT NULL auto_increment,
  "chat_content" varchar(50) default NULL,
  "chat_datetime" varchar(50) default NULL,
  "chat_fromdid" int(10) unsigned default NULL,
  "chat_fromuid" int(10) unsigned default NULL,
  "chat_touid" int(10) unsigned default NULL,
  "chat_todid" int(10) unsigned default NULL,
  "chat_status" int(10) unsigned default NULL,
  PRIMARY KEY  ("chat_id")
) AUTO_INCREMENT=28;



#
# Dumping data for table 'tbl_chat'
#

LOCK TABLES "tbl_chat" WRITE;
/*!40000 ALTER TABLE "tbl_chat" DISABLE KEYS;*/
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('16','hi','November 02 2024, 12:28 PM',NULL,'6',NULL,'13',NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('17','hi','November 02 2024, 12:29 PM','13',NULL,'6',NULL,NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('18','HI','November 02 2024, 12:32 PM','13',NULL,'6',NULL,NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('19','hi','November 02 2024, 12:58 PM',NULL,'6',NULL,'13',NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('20','hi','November 02 2024, 12:58 PM','13',NULL,'6',NULL,NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('21','hi','November 02 2024, 03:41 PM',NULL,'6',NULL,'13',NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('22','','November 02 2024, 03:42 PM',NULL,'6',NULL,'13',NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('23','hi','November 02 2024, 03:42 PM','13',NULL,'6',NULL,NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('24','hi','November 02 2024, 03:42 PM','13',NULL,'6',NULL,NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('25','','November 02 2024, 03:42 PM','13',NULL,'6',NULL,NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('26','hi','November 02 2024, 03:42 PM','13',NULL,'6',NULL,NULL);
REPLACE INTO "tbl_chat" ("chat_id", "chat_content", "chat_datetime", "chat_fromdid", "chat_fromuid", "chat_touid", "chat_todid", "chat_status") VALUES
	('27','hi','November 02 2024, 03:42 PM','13',NULL,'6',NULL,NULL);
/*!40000 ALTER TABLE "tbl_chat" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_chatlist'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_chatlist" (
  "chatlist_id" int(10) unsigned default NULL,
  "chatlist_content" varchar(50) default NULL,
  "chatlist_datetime" varchar(50) default NULL,
  "chatlist_fromid" int(10) unsigned default NULL,
  "chatlist_toid" int(10) unsigned default NULL,
  "chatlist_type" varchar(50) default NULL,
  "chatlist_status" varchar(50) default NULL
);



#
# Dumping data for table 'tbl_chatlist'
#

# No data found.



#
# Table structure for table 'tbl_clinic'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_clinic" (
  "clinic_id" int(10) unsigned NOT NULL auto_increment,
  "clinic_name" varchar(50) default NULL,
  "clinic_email" varchar(50) default NULL,
  "clinic_address" varchar(50) default NULL,
  "clinic_contact" varchar(50) default NULL,
  "clinic_logo" varchar(50) default NULL,
  "clinic_proof" varchar(50) default NULL,
  "type_id" int(10) unsigned default NULL,
  "clinic_vstatus" int(10) unsigned default '0',
  "place_id" tinyint(3) unsigned default NULL,
  "clinic_password" varchar(50) default NULL,
  "clinic_prooftype" varchar(50) default NULL,
  "clinic_regno" varchar(50) default NULL,
  PRIMARY KEY  ("clinic_id")
) AUTO_INCREMENT=19;



#
# Dumping data for table 'tbl_clinic'
#

LOCK TABLES "tbl_clinic" WRITE;
/*!40000 ALTER TABLE "tbl_clinic" DISABLE KEYS;*/
REPLACE INTO "tbl_clinic" ("clinic_id", "clinic_name", "clinic_email", "clinic_address", "clinic_contact", "clinic_logo", "clinic_proof", "type_id", "clinic_vstatus", "place_id", "clinic_password", "clinic_prooftype", "clinic_regno") VALUES
	('9','Excellence Medical Group','excellence@gmail.com','pala,kottayam','9872346689','clinicLogo1276.pdf','clinicProof1642.pdf','12','1',6,'123',NULL,NULL);
REPLACE INTO "tbl_clinic" ("clinic_id", "clinic_name", "clinic_email", "clinic_address", "clinic_contact", "clinic_logo", "clinic_proof", "type_id", "clinic_vstatus", "place_id", "clinic_password", "clinic_prooftype", "clinic_regno") VALUES
	('11','Skin Care','vision@gmail.com','Vengola p.o
pvbr','63848943993','clinicLogo1992.png','clinicProof1100.pdf','11','1',4,'123',NULL,NULL);
REPLACE INTO "tbl_clinic" ("clinic_id", "clinic_name", "clinic_email", "clinic_address", "clinic_contact", "clinic_logo", "clinic_proof", "type_id", "clinic_vstatus", "place_id", "clinic_password", "clinic_prooftype", "clinic_regno") VALUES
	('13','BioFusion Clinic','biofusion@gmail.com','chaganasherry,kottayam','9834567747','clinicLogo1048.jpg','clinicProof1380.jpg','15','1',5,'123',NULL,NULL);
REPLACE INTO "tbl_clinic" ("clinic_id", "clinic_name", "clinic_email", "clinic_address", "clinic_contact", "clinic_logo", "clinic_proof", "type_id", "clinic_vstatus", "place_id", "clinic_password", "clinic_prooftype", "clinic_regno") VALUES
	('14','Precision Medical Clinic','precision@gmail.com','peruva,kottayam','9568439495','clinicLogo1201.jpg','clinicProof1638.jpg','13','1',3,'123',NULL,NULL);
REPLACE INTO "tbl_clinic" ("clinic_id", "clinic_name", "clinic_email", "clinic_address", "clinic_contact", "clinic_logo", "clinic_proof", "type_id", "clinic_vstatus", "place_id", "clinic_password", "clinic_prooftype", "clinic_regno") VALUES
	('15','Excellence Medical Group','excellence@gmail.com','Cheganashery,kottayam','8474539298','clinicLogo1949.jpg','clinicProof1384.jpg','13','1',5,'123',NULL,NULL);
REPLACE INTO "tbl_clinic" ("clinic_id", "clinic_name", "clinic_email", "clinic_address", "clinic_contact", "clinic_logo", "clinic_proof", "type_id", "clinic_vstatus", "place_id", "clinic_password", "clinic_prooftype", "clinic_regno") VALUES
	('16','besedha clinic','besedha@gmail.com','pbvr,erklm','965874678','clinicLogo1072.jpg','clinicProof2034.jpg','15','1',4,'123',NULL,NULL);
REPLACE INTO "tbl_clinic" ("clinic_id", "clinic_name", "clinic_email", "clinic_address", "clinic_contact", "clinic_logo", "clinic_proof", "type_id", "clinic_vstatus", "place_id", "clinic_password", "clinic_prooftype", "clinic_regno") VALUES
	('18','Trustcare Medical Clinic','trustcare@gmail.com','Mutzha p.o 
Mutzha','965874678','clinicLogo2037.jpg','clinicProof1860.jpg','11','0',2,'123','License','MC1018');
/*!40000 ALTER TABLE "tbl_clinic" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "complaint_id" int(10) unsigned NOT NULL auto_increment,
  "complaint_title" varchar(50) default NULL,
  "complaint_content" varchar(50) default NULL,
  "complaint_reply" varchar(50) default NULL,
  "complaint_date" date default NULL,
  "user_id" int(10) unsigned default NULL,
  "clinic_id" int(10) unsigned default NULL,
  "complaint_status" int(10) unsigned default '0',
  "reply_date" date default NULL,
  PRIMARY KEY  ("complaint_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_date", "user_id", "clinic_id", "complaint_status", "reply_date") VALUES
	('8','time issue','consulte time','correct it','2024-10-09','6','6','1','2024-10-05');
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_date", "user_id", "clinic_id", "complaint_status", "reply_date") VALUES
	('9','not access','ghhjjjks',NULL,'2024-10-15','5','6','0',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_title", "complaint_content", "complaint_reply", "complaint_date", "user_id", "clinic_id", "complaint_status", "reply_date") VALUES
	('10','time issue','time management','okkeyyy next time we will manage it','2024-10-23','6','13','1','2024-10-31');
/*!40000 ALTER TABLE "tbl_complaint" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_deliveryboy'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_deliveryboy" (
  "deliveryboy_id" int(10) unsigned NOT NULL auto_increment,
  "deliveryboy_name" varchar(50) default NULL,
  "deliveryboy_email" varchar(50) default NULL,
  "deliveryboy_address" varchar(50) default NULL,
  "deliveryboy_contact" varchar(50) default NULL,
  "deliveryboy_password" varchar(50) default NULL,
  "shop_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("deliveryboy_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_deliveryboy'
#

LOCK TABLES "tbl_deliveryboy" WRITE;
/*!40000 ALTER TABLE "tbl_deliveryboy" DISABLE KEYS;*/
REPLACE INTO "tbl_deliveryboy" ("deliveryboy_id", "deliveryboy_name", "deliveryboy_email", "deliveryboy_address", "deliveryboy_contact", "deliveryboy_password", "shop_id") VALUES
	('3','Akhil','akhil@gmail.com','pvbr,erklm','8943837238','123','14');
REPLACE INTO "tbl_deliveryboy" ("deliveryboy_id", "deliveryboy_name", "deliveryboy_email", "deliveryboy_address", "deliveryboy_contact", "deliveryboy_password", "shop_id") VALUES
	('4','Ajith','ajith@gmail.com','chaganassery,kottayam','8943837238','123','13');
REPLACE INTO "tbl_deliveryboy" ("deliveryboy_id", "deliveryboy_name", "deliveryboy_email", "deliveryboy_address", "deliveryboy_contact", "deliveryboy_password", "shop_id") VALUES
	('5','ajal','ajal@gmail.com','chaganasherry,kottayam','876767766','123','13');
REPLACE INTO "tbl_deliveryboy" ("deliveryboy_id", "deliveryboy_name", "deliveryboy_email", "deliveryboy_address", "deliveryboy_contact", "deliveryboy_password", "shop_id") VALUES
	('6','Ajay','ajay@gmail.com','Mutzha p.o 
Mutzha','98676786778','123','14');
/*!40000 ALTER TABLE "tbl_deliveryboy" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) unsigned NOT NULL auto_increment,
  "district_name" varchar(50) default NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('1','Ernakulam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('2','Kottayam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('4','Kollam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('5','Idukki');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('6','Kannur');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('7','Alapuzha');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('8','Malapuram');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_medicine'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_medicine" (
  "medicine_id" int(10) unsigned NOT NULL auto_increment,
  "medicine_name" varchar(50) default NULL,
  "medicine_description" varchar(50) default NULL,
  "medicine_image" varchar(50) default NULL,
  "subcategory_id" int(10) unsigned default NULL,
  "medicine_rate" int(10) unsigned default NULL,
  "shop_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("medicine_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_medicine'
#

LOCK TABLES "tbl_medicine" WRITE;
/*!40000 ALTER TABLE "tbl_medicine" DISABLE KEYS;*/
REPLACE INTO "tbl_medicine" ("medicine_id", "medicine_name", "medicine_description", "medicine_image", "subcategory_id", "medicine_rate", "shop_id") VALUES
	('2','dolo','fever','box3.png','4','34','1');
REPLACE INTO "tbl_medicine" ("medicine_id", "medicine_name", "medicine_description", "medicine_image", "subcategory_id", "medicine_rate", "shop_id") VALUES
	('4','Vitamin A',' vitamin tablets','medicineImage2039.jpg','7','50','14');
REPLACE INTO "tbl_medicine" ("medicine_id", "medicine_name", "medicine_description", "medicine_image", "subcategory_id", "medicine_rate", "shop_id") VALUES
	('5','Paracetamol','Painkiller','medicineImage1104.jpg','5','20','13');
REPLACE INTO "tbl_medicine" ("medicine_id", "medicine_name", "medicine_description", "medicine_image", "subcategory_id", "medicine_rate", "shop_id") VALUES
	('6','dzdgd','hziujzsnjjhuiszjkjusa','medicineImage2106.jpg','5','23','14');
/*!40000 ALTER TABLE "tbl_medicine" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(10) unsigned NOT NULL auto_increment,
  "place_name" varchar(50) default NULL,
  "district_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("place_id")
) AUTO_INCREMENT=14;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('2','mvtzha','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('3','peruva','2');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('4','Perubavoor','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('5','Changanassery','2');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('6','pala','2');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('7','Kochi','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('8','Kainagiri','7');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('9','Kuttanad','7');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('10','Kattapana','5');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('11','kottarakara','4');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('12','Thelpara','8');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	('13','Vattapadam','8');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_review'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_review" (
  "review_id" int(10) unsigned NOT NULL auto_increment,
  "user_review" varchar(50) default NULL,
  "user_rating" int(10) unsigned default NULL,
  "review_datetime" varchar(50) default NULL,
  "user_id" int(50) default NULL,
  "clinic_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("review_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_review'
#

LOCK TABLES "tbl_review" WRITE;
/*!40000 ALTER TABLE "tbl_review" DISABLE KEYS;*/
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('1','null','5','2024-08-14',2,'2');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('2','null','5','2024-08-06',2,'2');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('3','null','5','2024-08-07',2,'2');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('4','null','8','2024-01-31',2,'2');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('5','null','8','2024-08-13',2,'3');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('6','null','8','2024-08-06',2,'2');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('7','jin','8','2024-08-14',3,'2');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('8','jin','8','2024-08-06',2,'2');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('9','jin','8','2024-08-20',2,'2');
REPLACE INTO "tbl_review" ("review_id", "user_review", "user_rating", "review_datetime", "user_id", "clinic_id") VALUES
	('10','ghhdukjj','3','2024-11-02 16:09:55',6,'13');
/*!40000 ALTER TABLE "tbl_review" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_shop'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_shop" (
  "shop_id" int(10) unsigned NOT NULL auto_increment,
  "shop_name" varchar(20) default NULL,
  "shop_email" varchar(50) default NULL,
  "shop_address" varchar(30) default NULL,
  "shop_contact" varchar(15) default NULL,
  "shop_logo" varchar(50) default NULL,
  "shop_proof" varchar(30) default NULL,
  "shop_vstatus" int(10) unsigned default '0',
  "place_id" int(3) unsigned default NULL,
  "shop_password" varchar(50) default NULL,
  "shop_regno" varchar(50) default NULL,
  PRIMARY KEY  ("shop_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_shop'
#

LOCK TABLES "tbl_shop" WRITE;
/*!40000 ALTER TABLE "tbl_shop" DISABLE KEYS;*/
REPLACE INTO "tbl_shop" ("shop_id", "shop_name", "shop_email", "shop_address", "shop_contact", "shop_logo", "shop_proof", "shop_vstatus", "place_id", "shop_password", "shop_regno") VALUES
	('12','PharmaPlus','pharma@gmail.com','chaganasherry,kottayam','998735567','shopLogo1001.jpg','shopProof1448.pdf','1','5','123',NULL);
REPLACE INTO "tbl_shop" ("shop_id", "shop_name", "shop_email", "shop_address", "shop_contact", "shop_logo", "shop_proof", "shop_vstatus", "place_id", "shop_password", "shop_regno") VALUES
	('13','MedMart','medmart@gmail.com','chaganassery,kottayam','98345677','shopLogo1704.jpg','shopProof1440.jpg','1','5','123',NULL);
REPLACE INTO "tbl_shop" ("shop_id", "shop_name", "shop_email", "shop_address", "shop_contact", "shop_logo", "shop_proof", "shop_vstatus", "place_id", "shop_password", "shop_regno") VALUES
	('14','meical','medical@gmail.com','pvbr,erklm','976543456','shopLogo1808.jpg','shopProof1198.jpg','1','4','123',NULL);
REPLACE INTO "tbl_shop" ("shop_id", "shop_name", "shop_email", "shop_address", "shop_contact", "shop_logo", "shop_proof", "shop_vstatus", "place_id", "shop_password", "shop_regno") VALUES
	('16','wellness ','wellness@gmail.com','chaganasherry,kottayam','98676786778','shopLogo1412.jpg','shopProof1396.jpg','0','5','123','SHID1016');
/*!40000 ALTER TABLE "tbl_shop" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_stock'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_stock" (
  "stock_id" int(10) unsigned NOT NULL auto_increment,
  "stock_quantity" int(10) unsigned default NULL,
  "stock_date" date default NULL,
  "medicine_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("stock_id")
) AUTO_INCREMENT=14;



#
# Dumping data for table 'tbl_stock'
#

LOCK TABLES "tbl_stock" WRITE;
/*!40000 ALTER TABLE "tbl_stock" DISABLE KEYS;*/
REPLACE INTO "tbl_stock" ("stock_id", "stock_quantity", "stock_date", "medicine_id") VALUES
	('7','9','2024-08-21','5');
REPLACE INTO "tbl_stock" ("stock_id", "stock_quantity", "stock_date", "medicine_id") VALUES
	('8','6','2024-11-15','4');
REPLACE INTO "tbl_stock" ("stock_id", "stock_quantity", "stock_date", "medicine_id") VALUES
	('10','7','2024-11-03','6');
REPLACE INTO "tbl_stock" ("stock_id", "stock_quantity", "stock_date", "medicine_id") VALUES
	('11','6','2024-11-06','6');
REPLACE INTO "tbl_stock" ("stock_id", "stock_quantity", "stock_date", "medicine_id") VALUES
	('12','2','2024-11-01','6');
/*!40000 ALTER TABLE "tbl_stock" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_subcategory'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_subcategory" (
  "subcategory_id" int(10) unsigned NOT NULL auto_increment,
  "subcategory_name" varchar(50) default NULL,
  "category_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("subcategory_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_subcategory'
#

LOCK TABLES "tbl_subcategory" WRITE;
/*!40000 ALTER TABLE "tbl_subcategory" DISABLE KEYS;*/
REPLACE INTO "tbl_subcategory" ("subcategory_id", "subcategory_name", "category_id") VALUES
	('2','hii','1');
REPLACE INTO "tbl_subcategory" ("subcategory_id", "subcategory_name", "category_id") VALUES
	('4','Dolo','4');
REPLACE INTO "tbl_subcategory" ("subcategory_id", "subcategory_name", "category_id") VALUES
	('5','Paracetamol','6');
REPLACE INTO "tbl_subcategory" ("subcategory_id", "subcategory_name", "category_id") VALUES
	('6','Sulphanomids','7');
REPLACE INTO "tbl_subcategory" ("subcategory_id", "subcategory_name", "category_id") VALUES
	('7','vitaminA','5');
REPLACE INTO "tbl_subcategory" ("subcategory_id", "subcategory_name", "category_id") VALUES
	('8','Betablockers','8');
/*!40000 ALTER TABLE "tbl_subcategory" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_type'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_type" (
  "type_id" int(10) unsigned NOT NULL auto_increment,
  "type_name" varchar(50) default NULL,
  PRIMARY KEY  ("type_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_type'
#

LOCK TABLES "tbl_type" WRITE;
/*!40000 ALTER TABLE "tbl_type" DISABLE KEYS;*/
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('11','dermetology');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('12','orthology');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('13','omcology');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('14','Allergist');
REPLACE INTO "tbl_type" ("type_id", "type_name") VALUES
	('15','Paediatriction');
/*!40000 ALTER TABLE "tbl_type" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_user" (
  "user_id" int(10) unsigned NOT NULL auto_increment,
  "user_name" varchar(50) default NULL,
  "user_email" varchar(50) default NULL,
  "user_password" varchar(50) default NULL,
  "user_address" varchar(50) default NULL,
  "user_contact" varchar(15) default NULL,
  "user_gender" varchar(50) default NULL,
  "user_dob" date default NULL,
  "user_photo" varchar(50) default NULL,
  "place_id" tinyint(3) unsigned default NULL,
  PRIMARY KEY  ("user_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_user'
#

LOCK TABLES "tbl_user" WRITE;
/*!40000 ALTER TABLE "tbl_user" DISABLE KEYS;*/
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_password", "user_address", "user_contact", "user_gender", "user_dob", "user_photo", "place_id") VALUES
	('5','Toby Jose','toby@gmail.com','123456','MPA','98676786778','male','2024-08-29','userPhoto1079.jpg',4);
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_password", "user_address", "user_contact", "user_gender", "user_dob", "user_photo", "place_id") VALUES
	('6','Albin john','albin@gmail.com','123','Mutzha p.o 
Mutzha','8589060141','male','2001-03-26','userPhoto2045.png',2);
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_password", "user_address", "user_contact", "user_gender", "user_dob", "user_photo", "place_id") VALUES
	('7','Akhila','akhila@gmail.com','123','Mutzha p.o 
Mutzha','98676786778','female','2024-10-27','userPhoto1350.png',2);
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_password", "user_address", "user_contact", "user_gender", "user_dob", "user_photo", "place_id") VALUES
	('8','Amala','amala@gmail.com','123','chaganasherry,kottayam','8789766837','female','2001-09-20','userPhoto1395.png',5);
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_password", "user_address", "user_contact", "user_gender", "user_dob", "user_photo", "place_id") VALUES
	('9','Ajith','ajith@gmail.com','123','chaganasherry,kottayam','8789766837','male','1996-06-04','userPhoto1825.png',5);
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
