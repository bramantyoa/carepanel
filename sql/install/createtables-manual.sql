CREATE TABLE IF NOT EXISTS cp_navigation_menu ( id int(11) NOT NULL AUTO_INCREMENT, menu_name varchar(250) UNIQUE, parent_name varchar(250) NOT NULL,menu_order int(11) NOT NULL,menu_url varchar(500), menu_icon varchar(100), menu_text varchar(200),required_module VARCHAR(25) NULL, PRIMARY KEY (id), is_deleted INT NULL, sync_status INT NULL );
CREATE TABLE IF NOT EXISTS cp_menu_access ( id int(11) NOT NULL AUTO_INCREMENT, menu_name varchar(50) NOT NULL, category_name varchar(50) NOT NULL, allow tinyint(1), PRIMARY KEY (id), UNIQUE( menu_name, category_name) );
CREATE TABLE IF NOT EXISTS cp_doctor (  doctor_id int(11) NOT NULL AUTO_INCREMENT, dob DATE NULL ,description VARCHAR( 250 ) NULL , contact_id int(11) NOT NULL, degree varchar(150) NULL, specification varchar(300) NULL,experience varchar(300) NULL, joining_date date NULL, licence_number varchar(50) NULL,  department_id int(11) NULL,  gender varchar(10) NULL,userid VARCHAR(16) NULL ,sync_status INT NULL,is_deleted INT(1) NULL,erpnext_key VARCHAR(25) NULL, PRIMARY KEY (doctor_id));
CREATE TABLE IF NOT EXISTS cp_data (ck_data_id int(11) NOT NULL AUTO_INCREMENT,ck_key varchar(255) NOT NULL ,ck_value TEXT NOT NULL ,PRIMARY KEY (ck_data_id), UNIQUE(ck_key) ,is_deleted INT NULL, sync_status INT NULL);
CREATE TABLE IF NOT EXISTS cp_appointments ( appointment_id int(11) NOT NULL AUTO_INCREMENT,appointment_date date NOT NULL,end_date date NULL DEFAULT NULL,start_time time NOT NULL,end_time time NOT NULL,title varchar(150) NOT NULL,patient_id int(11) NOT NULL,userid int(11) NOT NULL,doctor_id int(11) NOT NULL,status varchar(255) NOT NULL, visit_id int(11) NOT NULL DEFAULT 0,appointment_reason VARCHAR(100),PRIMARY KEY (appointment_id),clinic_id INT( 11 ) NULL, is_deleted INT NULL, sync_status INT NULL, clinic_code VARCHAR(6) NULL DEFAULT NULL);
CREATE TABLE IF NOT EXISTS cp_appointment_log (appointment_log_id INT NOT NULL AUTO_INCREMENT, appointment_id int(11) NOT NULL,change_date_time varchar(255) NOT NULL,start_time time NOT NULL,from_time time NOT NULL,to_time time NOT NULL,old_status varchar(255) NOT NULL,status varchar(255) NOT NULL,name varchar(255) NOT NULL,appointment_reason VARCHAR(100),PRIMARY KEY ( appointment_log_id ), is_deleted INT NULL, sync_status INT NULL, clinic_code VARCHAR(6) NULL);
CREATE TABLE IF NOT EXISTS cp_bill_payment_r (bill_payment_id INT(11) NOT NULL AUTO_INCREMENT , bill_id INT(11) NOT NULL , payment_id INT(11) NOT NULL , adjust_amount DECIMAL(11) NULL, PRIMARY KEY (bill_payment_id), is_deleted INT NULL,sync_status INT NULL,clinic_code VARCHAR(6) NULL);
CREATE TABLE IF NOT EXISTS cp_bill (bill_id int(11) NOT NULL AUTO_INCREMENT, clinic_id  int(11) NULL, doctor_id  int(11) NULL,bill_date date NOT NULL,bill_time TIME NULL, patient_id int(11) NOT NULL,visit_id INT(11) NULL,total_amount DECIMAL(10,2) NOT NULL DEFAULT '0',tax_amount DECIMAL(10,2) NULL DEFAULT '0',due_amount DECIMAL(11,2) NOT NULL DEFAULT '0',PRIMARY KEY (bill_id), is_deleted INT NULL, sync_status INT NULL,clinic_code VARCHAR(6) NULL,created_by VARCHAR(50) NULL,appointment_id INT(11) NULL);
CREATE TABLE IF NOT EXISTS cp_bill_detail (bill_detail_id int(11) NOT NULL AUTO_INCREMENT, clinic_code VARCHAR(6) NULL ,tax_id INT(11) NULL,item_id INT NULL , bill_id int(11) NOT NULL , particular VARCHAR(50) NULL, amount DECIMAL(10,2) NULL, quantity INT(11) NULL, mrp DECIMAL(10,2) NULL, type varchar(25) NOT NULL, purchase_id int(11), tax_amount DECIMAL(10,2) NULL ,PRIMARY KEY (bill_detail_id), is_deleted INT NULL, sync_status INT NULL);
CREATE TABLE IF NOT EXISTS cp_clinic ( clinic_id int(11) NOT NULL AUTO_INCREMENT,start_time varchar(10) NOT NULL, end_time varchar(10) NOT NULL, time_interval decimal(11,2) NOT NULL DEFAULT '0.50', clinic_name varchar(50), clinic_code VARCHAR(6) NULL, tag_line VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL, clinic_address VARCHAR(500), landline VARCHAR(50), mobile VARCHAR(50), email VARCHAR(50), facebook VARCHAR(50), twitter VARCHAR(50), google_plus VARCHAR(50), next_followup_days INT(11) NULL DEFAULT '15',clinic_logo VARCHAR(255) NULL , website VARCHAR(50) NULL,max_patient INT( 11 ) NULL, is_deleted INT NULL, sync_status INT NULL,PRIMARY KEY(clinic_id));
CREATE TABLE IF NOT EXISTS cp_contacts ( contact_id int(11) NOT NULL AUTO_INCREMENT, title VARCHAR( 5 ) NULL,     first_name varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,     middle_name varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,    last_name varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,    display_name varchar(255) NULL,     phone_number varchar(15) NULL,    second_number VARCHAR( 25 ) NULL,    email varchar(150) NULL, contact_image VARCHAR(255) NOT NULL DEFAULT '', type VARCHAR( 50 ) NULL, address_line_1 varchar(150) NULL, address_line_2 varchar(150) NULL, city varchar(50) NULL, state varchar(50) NULL, postal_code varchar(50) NULL, country varchar(50) NULL, PRIMARY KEY (contact_id),is_deleted INT NULL, sync_status INT NULL,clinic_code VARCHAR(6) NULL);
CREATE TABLE IF NOT EXISTS cp_contact_details ( contact_detail_id int(11) NOT NULL AUTO_INCREMENT, clinic_code VARCHAR(6) NULL ,contact_id int(11) NOT NULL, type varchar(50) NOT NULL, detail varchar(150) NOT NULL, is_default INT(1) NULL, PRIMARY KEY (contact_detail_id), is_deleted INT NULL, sync_status INT NULL );
CREATE TABLE IF NOT EXISTS cp_followup ( id INT(11) NOT NULL AUTO_INCREMENT,doctor_id int(11) NOT NULL,patient_id int(11) NOT NULL,followup_date date NOT NULL,PRIMARY KEY (id), is_deleted INT NULL, sync_status INT NULL);
CREATE TABLE IF NOT EXISTS cp_invoice ( invoice_id INT(11) NOT NULL AUTO_INCREMENT , static_prefix VARCHAR(10) NOT NULL DEFAULT '', left_pad INT(11) NOT NULL , next_id INT(11) NOT NULL , currency_symbol VARCHAR(10) NULL, currency_postfix CHAR(10) NULL DEFAULT '/-', PRIMARY KEY ( invoice_id ), is_deleted INT NULL, sync_status INT NULL ,number_of_decimal INT(11) NOT NULL DEFAULT '2',decimal_symbol VARCHAR(20) NOT NULL DEFAULT "." ,thousands_separator VARCHAR(20) NOT NULL  DEFAULT ",");
CREATE TABLE IF NOT EXISTS cp_modules ( module_id int(11) NOT NULL AUTO_INCREMENT, module_name varchar(50) UNIQUE NOT NULL, module_display_name varchar(50) NOT NULL, module_description varchar(150) NOT NULL, module_status int(1) NOT NULL, PRIMARY KEY (module_id),module_version VARCHAR(10) NULL, activation_hook VARCHAR(50) NULL , license_key VARCHAR(100) NULL, license_status VARCHAR(100) NULL,required_modules VARCHAR(250) NULL, is_deleted INT NULL, sync_status INT NULL ,UNIQUE(module_name),valid_till DATE NULL);
CREATE TABLE IF NOT EXISTS cp_patient ( patient_id int(11) NOT NULL AUTO_INCREMENT,blood_group VARCHAR(3) NULL, reference_by_detail VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,contact_id int(11) NOT NULL, patient_since date NOT NULL, display_id varchar(12) NULL, ssn_id VARCHAR(25) NULL, followup_date date NULL, reference_by VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL, gender VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL , dob DATE , age INT(11) NULL, wp_user_id INT(11) NULL, clinic_id INT(11) NULL ,is_deleted INT NULL, sync_status INT NULL , clinic_code VARCHAR(6) NULL, is_inquiry INT(1) NULL,inquiry_reason VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,erpnext_key VARCHAR(25) NULL, PRIMARY KEY (patient_id));
CREATE TABLE IF NOT EXISTS cp_payment ( payment_id int(11) NOT NULL AUTO_INCREMENT, patient_id int(11) NOT NULL, pay_date date NOT NULL, pay_mode varchar(50) NOT NULL, pay_amount DECIMAL(10,0) NOT NULL DEFAULT '0', additional_detail VARCHAR(50) NULL, level VARCHAR(25) NOT NULL, clinic_id INT(11) NULL ,is_deleted INT NULL, sync_status INT NULL , payment_status varchar(25) NOT NULL DEFAULT 'complete', clinic_code VARCHAR(6) NULL,collected_by VARCHAR(50) NULL ,PRIMARY KEY (payment_id));
CREATE TABLE IF NOT EXISTS cp_payment_transaction ( transaction_id  int(11) NOT NULL AUTO_INCREMENT,bill_id int(11),patient_id int(11) NOT NULL,visit_id int(11) NOT NULL, amount decimal(11,2) NOT NULL,payment_type varchar(50) NOT NULL,PRIMARY KEY (transaction_id), sync_status INT NULL);
CREATE TABLE IF NOT EXISTS cp_reference_by (reference_id int(11) NOT NULL AUTO_INCREMENT, reference_option varchar(25) NOT NULL, reference_add_option int(1) DEFAULT NULL, placeholder VARCHAR( 25 ) NULL , PRIMARY KEY (reference_id),is_deleted INT NULL, sync_status INT NULL);
CREATE TABLE IF NOT EXISTS cp_receipt_template (template_id int(11) NOT NULL AUTO_INCREMENT,template TEXT CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,is_default int(1) NOT NULL,template_name varchar(25) NOT NULL,type VARCHAR(15) NULL,PRIMARY KEY (template_id), is_deleted INT NULL, sync_status INT NULL, is_original INT(1) NULL);
CREATE TABLE IF NOT EXISTS cp_todos ( id_num int(11) NOT NULL AUTO_INCREMENT, userid int(11) DEFAULT '0', todo varchar(250) DEFAULT NULL, done int(11) DEFAULT '0', add_date datetime DEFAULT NULL, done_date datetime DEFAULT NULL, PRIMARY KEY (id_num), is_deleted INT NULL, sync_status INT NULL);
CREATE TABLE IF NOT EXISTS cp_user_verification ( verification_id int(11) NOT NULL AUTO_INCREMENT, user_email varchar(50) NOT NULL, verification_code int(6) NOT NULL, code_generated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, code_is_verified int(1) DEFAULT NULL,  PRIMARY KEY (verification_id));
CREATE TABLE IF NOT EXISTS cp_user_categories ( id int(11) NOT NULL AUTO_INCREMENT, category_name VARCHAR(50) NULL DEFAULT NULL, PRIMARY KEY (id), is_deleted INT NULL, sync_status INT NULL );
CREATE TABLE IF NOT EXISTS cp_visit ( visit_id int(11) NOT NULL AUTO_INCREMENT, patient_id int(11) NOT NULL, userid int(11) NOT NULL, doctor_id int(11) NOT NULL, notes TEXT NULL, type varchar(50) NOT NULL, visit_date varchar(60) NOT NULL, clinic_id INT(1) NULL, visit_time varchar(50), patient_notes TEXT NULL,appointment_reason VARCHAR(100), PRIMARY KEY (visit_id), is_deleted INT NULL, sync_status INT NULL ,clinic_code VARCHAR(6) NULL);
CREATE TABLE IF NOT EXISTS cp_patient_account (  patient_account_id int(11) NOT NULL AUTO_INCREMENT,  patient_id int(11) NOT NULL,  payment_id int(11) DEFAULT NULL,  bill_id int(11) DEFAULT NULL,  adjust_amount decimal(11,2) NOT NULL,refund_id INT(11) NULL,PRIMARY KEY (patient_account_id));
CREATE TABLE IF NOT EXISTS cp_version (id INT NOT NULL AUTO_INCREMENT,current_version varchar(11) NOT NULL, is_deleted INT NULL, sync_status INT NULL ,  PRIMARY KEY (id));
CREATE TABLE IF NOT EXISTS cp_working_days (uid int(11) NOT NULL AUTO_INCREMENT,working_date date NOT NULL,working_status varchar(15) NOT NULL, working_reason varchar(50) NULL, PRIMARY KEY (uid), is_deleted INT NULL, sync_status INT NULL,end_date DATE NULL,start_time TIME NULL,end_time TIME NULL);
CREATE TABLE IF NOT EXISTS cp_payment_methods ( payment_method_id INT(11) NOT NULL AUTO_INCREMENT , payment_method_name VARCHAR(25) NOT NULL , has_additional_details INT(1) NOT NULL , additional_detail_label VARCHAR(50) NOT NULL , needs_cash_calc INT(1) NOT NULL DEFAULT '0',payment_pending INT(1) NULL,PRIMARY KEY (payment_method_id));
CREATE TABLE IF NOT EXISTS cp_language_data ( id INT(11) NOT NULL AUTO_INCREMENT , l_name VARCHAR(25) NOT NULL , l_index VARCHAR(150) NOT NULL , l_value VARCHAR(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL , PRIMARY KEY (id),UNIQUE( l_name, l_index));
CREATE TABLE cp_tax_rates (  tax_id INT(11) NOT NULL AUTO_INCREMENT,  tax_rate_name varchar(25) NOT NULL,  tax_rate decimal(10,2) NOT NULL, PRIMARY KEY (tax_id)) ;
CREATE TABLE cp_refund ( refund_id int(11) NOT NULL, patient_id int(11) NOT NULL, refund_amount int(12) NOT NULL, refund_date date NOT NULL, refund_note varchar(25) NOT NULL);
CREATE TABLE cp_nurse ( nurse_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY , contact_id INT(11) NOT NULL , joining_date DATE NOT NULL , department_id VARCHAR(25) NOT NULL , userid VARCHAR(16) NOT NULL , is_deleted INT(11) NOT NULL , sync_status INT(11) NOT NULL , gender VARCHAR(10) NOT NULL );
CREATE TABLE cp_language_master (language_id int(11) NOT NULL AUTO_INCREMENT,language_name varchar(25) NOT NULL,is_rtl int(1) NOT NULL DEFAULT '0',PRIMARY KEY (language_id),UNIQUE(language_name),is_default INT(1) NOT NULL DEFAULT '0');
CREATE TABLE IF NOT EXISTS cp_chikitsa_xml_check( id int(11) NOT NULL AUTO_INCREMENT,last_checked_date date  NULL, xml_content TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,module_name VARCHAR(50) NULL,xml_version VARCHAR(50) NULL, PRIMARY KEY (id));
ALTER TABLE cp_language_master ADD is_loaded INT(1) NULL AFTER is_default; 
ALTER TABLE cp_language_data ADD file_name VARCHAR(200) NULL AFTER l_value; 
CREATE TABLE IF NOT EXISTS cp_users ( userid int(11) NOT NULL AUTO_INCREMENT, name varchar(255) DEFAULT NULL, username varchar(25) DEFAULT NULL, password varchar(255) NOT NULL, level varchar(25) NOT NULL,is_active INT(1) NOT NULL DEFAULT '1', PRIMARY KEY (userid), UNIQUE KEY username (username),contact_id INT( 11 ) NULL, centers VARCHAR( 50 ) NULL, is_deleted INT NULL, sync_status INT NULL ,prefered_language VARCHAR(25) NULL,profile_image VARCHAR(500) NULL);
ALTER TABLE cp_clinic ADD favicon_logo VARCHAR(200) NULL AFTER sync_status; 