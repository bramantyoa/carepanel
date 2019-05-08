ALTER TABLE %dbprefix%patient ADD age INT(11) NULL AFTER dob;
ALTER TABLE %dbprefix%bill ADD clinic_id INT(11) NULL AFTER sync_status;
INSERT INTO %dbprefix%navigation_menu (menu_name, parent_name, menu_order, menu_url, menu_icon, menu_text, required_module, is_deleted, sync_status) VALUES ('patient_report', 'reports', '90', 'patient/patient_report', NULL, 'Patient Report ', NULL, NULL, NULL);
INSERT INTO %dbprefix%menu_access ( menu_name, category_name, allow) VALUES ('patient_report', 'Administrator', '1');
CREATE TABLE %dbprefix%patient_account (  patient_account_id int(11) NOT NULL AUTO_INCREMENT,  patient_id int(11) NOT NULL,  payment_id int(11) DEFAULT NULL,  bill_id int(11) DEFAULT NULL,  adjust_amount decimal(11,2) NOT NULL,PRIMARY KEY (patient_account_id));
UPDATE %dbprefix%navigation_menu SET menu_name = 'bill_report' WHERE menu_name = 'bill report';
UPDATE %dbprefix%navigation_menu SET menu_name = 'appointment_report' WHERE menu_name = 'appointment report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'clinic_details' WHERE menu_name = 'clinic detail';
UPDATE %dbprefix%navigation_menu SET menu_text = 'patients' WHERE menu_name = 'patients';
UPDATE %dbprefix%navigation_menu SET menu_text = 'appointments' WHERE menu_name = 'appointments';
UPDATE %dbprefix%navigation_menu SET menu_text = 'reports' WHERE menu_name = 'reports';
UPDATE %dbprefix%navigation_menu SET menu_text = 'modules' WHERE menu_name = 'modules';
UPDATE %dbprefix%navigation_menu SET menu_text = 'administration' WHERE menu_name = 'administration';
UPDATE %dbprefix%navigation_menu SET menu_text = 'payments' WHERE menu_name = 'payment';
UPDATE %dbprefix%navigation_menu SET menu_text = 'frontend' WHERE menu_name = 'frontend';
UPDATE %dbprefix%navigation_menu SET menu_text = 'cases' WHERE menu_name = 'snaap_cases';
UPDATE %dbprefix%navigation_menu SET menu_text = 'account' WHERE menu_name = 'account';
UPDATE %dbprefix%navigation_menu SET menu_text = 'rooms_beds' WHERE menu_name = 'rooms';
UPDATE %dbprefix%navigation_menu SET menu_text = 'doctor' WHERE menu_name = 'doctor';
UPDATE %dbprefix%navigation_menu SET menu_text = 'treatments' WHERE menu_name = 'treatment';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock' WHERE menu_name = 'stock';
UPDATE %dbprefix%navigation_menu SET menu_text = 'cash_payment' WHERE menu_name = 'cash_payment';
UPDATE %dbprefix%navigation_menu SET menu_text = 'bank_receipt' WHERE menu_name = 'bank_receipt';
UPDATE %dbprefix%navigation_menu SET menu_text = 'cash_receipt' WHERE menu_name = 'cash_receipt';
UPDATE %dbprefix%navigation_menu SET menu_text = 'bank_payment' WHERE menu_name = 'bank_payment';
UPDATE %dbprefix%navigation_menu SET menu_text = 'journal_voucher' WHERE menu_name = 'journal_voucher';
UPDATE %dbprefix%navigation_menu SET menu_text = 'account_group_master' WHERE menu_name = 'account_group_master';
UPDATE %dbprefix%navigation_menu SET menu_text = 'account_details_meta' WHERE menu_name = 'account_details_meta';
UPDATE %dbprefix%navigation_menu SET menu_text = 'accounts' WHERE menu_name = 'accounts';
UPDATE %dbprefix%navigation_menu SET menu_text = 'reference_by' WHERE menu_name = 'reference_by';
UPDATE %dbprefix%navigation_menu SET menu_text = 'backup' WHERE menu_name = 'backup';
UPDATE %dbprefix%navigation_menu SET menu_text = 'working_days' WHERE menu_name = 'working_days';
UPDATE %dbprefix%navigation_menu SET menu_text = 'clinic_detail' WHERE menu_name = 'center_details';
UPDATE %dbprefix%navigation_menu SET menu_text = 'all_users' WHERE menu_name = 'all_users';
UPDATE %dbprefix%navigation_menu SET menu_text = 'users' WHERE menu_name = 'users';
UPDATE %dbprefix%navigation_menu SET menu_text = 'add_patient' WHERE menu_name = 'new_patient';
UPDATE %dbprefix%navigation_menu SET menu_text = 'general_settings' WHERE menu_name = 'general_settings';
UPDATE %dbprefix%navigation_menu SET menu_text = 'all_patients' WHERE menu_name = 'all_patients';
UPDATE %dbprefix%navigation_menu SET menu_text = 'new_inquiry' WHERE menu_name = 'new_inquiry';
UPDATE %dbprefix%navigation_menu SET menu_text = 'setting' WHERE menu_name = 'setting';
UPDATE %dbprefix%navigation_menu SET menu_text = 'services' WHERE menu_name = 'services';
UPDATE %dbprefix%navigation_menu SET menu_text = 'services_type' WHERE menu_name = 'service_type';
UPDATE %dbprefix%navigation_menu SET menu_text = 'service' WHERE menu_name = 'all_services';
UPDATE %dbprefix%navigation_menu SET menu_text = 'patient_report' WHERE menu_name = 'patient_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'doctor_detail' WHERE menu_name = 'doctor_detail';
UPDATE %dbprefix%navigation_menu SET menu_text = 'department' WHERE menu_name = 'department';
UPDATE %dbprefix%navigation_menu SET menu_text = 'fees_detail' WHERE menu_name = 'fees_detail';
UPDATE %dbprefix%navigation_menu SET menu_text = 'doctor_schedule' WHERE menu_name = 'doctor_schdule';
UPDATE %dbprefix%navigation_menu SET menu_text = 'doctor_inavailability' WHERE menu_name = 'doctor_inavailability';
UPDATE %dbprefix%navigation_menu SET menu_text = 'doctor_preferences' WHERE menu_name = 'doctor_preferences';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_item' WHERE menu_name = 'stock_item';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_suppliers' WHERE menu_name = 'stock_supplier ';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_purchase' WHERE menu_name = 'stock_purchase';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_sell' WHERE menu_name = 'stock_sell';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_all_sell' WHERE menu_name = 'stock_all_sell';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_stock_report' WHERE menu_name = 'stock_stock_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_purchase_report' WHERE menu_name = 'stock_purchase_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_report' WHERE menu_name = 'stock_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'stock_sell_report' WHERE menu_name = 'stock_sell_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'purchase_return' WHERE menu_name = 'purchase_return';
UPDATE %dbprefix%navigation_menu SET menu_text = 'sell_return' WHERE menu_name = 'sell_return';
UPDATE %dbprefix%navigation_menu SET menu_text = 'opening_stock' WHERE menu_name = 'opening_stock';
UPDATE %dbprefix%navigation_menu SET menu_text = 'receipt_template' WHERE menu_name = 'receipt_template';
UPDATE %dbprefix%navigation_menu SET menu_text = 'alert_settings' WHERE menu_name = 'alert_settings';
UPDATE %dbprefix%navigation_menu SET menu_text = 'alert_sms_log' WHERE menu_name = 'alert_sms_log';
UPDATE %dbprefix%navigation_menu SET menu_text = 'alert_email_log' WHERE menu_name = 'alert_email_log';
UPDATE %dbprefix%navigation_menu SET menu_text = 'import' WHERE menu_name = 'import';
UPDATE %dbprefix%navigation_menu SET menu_text = 'category' WHERE menu_name = 'category';
UPDATE %dbprefix%navigation_menu SET menu_text = 'categories' WHERE menu_name = 'categories';
UPDATE %dbprefix%navigation_menu SET menu_text = 'menu_access' WHERE menu_name = 'menu_access';
UPDATE %dbprefix%navigation_menu SET menu_text = 'special_access' WHERE menu_name = 'special_access';
UPDATE %dbprefix%navigation_menu SET menu_text = 'medicine' WHERE menu_name = 'medicine';
UPDATE %dbprefix%navigation_menu SET menu_text = 'rebrand' WHERE menu_name = 'rebrand';
UPDATE %dbprefix%navigation_menu SET menu_text = 'treatment' WHERE menu_name = 'treatment';
UPDATE %dbprefix%navigation_menu SET menu_text = 'treatment_report' WHERE menu_name = 'treatment_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'bills_payments', menu_url='#' WHERE menu_name = 'payment';
UPDATE %dbprefix%navigation_menu SET menu_text = 'header_settings' WHERE menu_name = 'header_settings';
UPDATE %dbprefix%navigation_menu SET menu_text = 'home_settings' WHERE menu_name = 'home_settings';
UPDATE %dbprefix%navigation_menu SET menu_text = 'footer_settings' WHERE menu_name = 'footer_settings';
UPDATE %dbprefix%navigation_menu SET menu_text = 'news_setting' WHERE menu_name = 'news_setting';
UPDATE %dbprefix%navigation_menu SET menu_text = 'services_setting' WHERE menu_name = 'services_setting';
UPDATE %dbprefix%navigation_menu SET menu_text = 'images' WHERE menu_name = 'images';
UPDATE %dbprefix%navigation_menu SET menu_text = 'bills' WHERE menu_name = 'bill';
UPDATE %dbprefix%navigation_menu SET menu_text = 'appointment_report' WHERE menu_name = 'appointment_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'doctor_bonus_report' WHERE menu_name = 'doctor_bonus_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'bill_report' WHERE menu_name = 'bill_report';
UPDATE %dbprefix%navigation_menu SET menu_text = 'clinic_details' WHERE menu_name = 'clinic_details';
CREATE OR REPLACE VIEW %dbprefix%view_patient AS SELECT patient.patient_id,patient.clinic_id,patient.patient_since, patient.display_id,patient.gender,patient.dob, patient.reference_by, patient.followup_date,(SELECT IFNULL(SUM(IFNULL(patient_account.adjust_amount,0)),0) FROM %dbprefix%patient_account AS patient_account WHERE patient_account.patient_id = patient.patient_id AND payment_id IS NOT NULL) - (SELECT IFNULL(SUM(IFNULL(patient_account.adjust_amount,0)),0) FROM %dbprefix%patient_account AS patient_account WHERE patient_account.patient_id = patient.patient_id AND bill_id IS NOT NULL) AS in_account_amount,contacts.display_name,contacts.contact_id,contacts.first_name,contacts.middle_name,contacts.last_name,(SELECT contact_details.detail FROM %dbprefix%contact_details as contact_details WHERE contact_details.contact_id = contacts.contact_id AND contact_details.type='mobile' LIMIT 1) AS phone_number,	   contacts.email   FROM %dbprefix%patient as patient        LEFT JOIN %dbprefix%contacts as contacts ON patient.contact_id = contacts.contact_id;
CREATE OR REPLACE VIEW %dbprefix%view_payment AS SELECT DISTINCT payment.payment_id,payment.clinic_id,payment.pay_date,payment.pay_mode,payment.cheque_no,payment.pay_amount,patient.patient_id,patient.display_id,contacts.first_name,contacts.middle_name,contacts.last_name   FROM %dbprefix%payment AS payment	       INNER JOIN %dbprefix%patient as patient ON patient.patient_id = payment.patient_id 	   INNER JOIN %dbprefix%contacts as contacts ON contacts.contact_id = patient.contact_id;
CREATE OR REPLACE VIEW %dbprefix%view_doctor AS SELECT doctor.contact_id,concat(ifnull(contacts.first_name,''),' ',ifnull(contacts.middle_name,''),' ',ifnull(contacts.last_name,'')) AS name,doctor.doctor_id AS doctor_id,doctor.userid AS userid,users.centers AS centers from %dbprefix%doctor doctor      join %dbprefix%contacts contacts on contacts.contact_id = doctor.contact_id	 join %dbprefix%users users on users.userid = doctor.userid;
UPDATE %dbprefix%patient SET clinic_id = 1;
UPDATE %dbprefix%bill SET clinic_id = 1;
UPDATE %dbprefix%payment SET clinic_id = 1;
CREATE OR REPLACE VIEW %dbprefix%view_patient AS SELECT patient.patient_id, patient.age,patient.clinic_id,patient.patient_since, patient.age,patient.display_id,patient.gender,patient.dob, patient.reference_by, patient.followup_date,(SELECT IFNULL(SUM(IFNULL(patient_account.adjust_amount,0)),0) FROM %dbprefix%patient_account AS patient_account WHERE patient_account.patient_id = patient.patient_id AND payment_id IS NOT NULL) - (SELECT IFNULL(SUM(IFNULL(patient_account.adjust_amount,0)),0) FROM %dbprefix%patient_account AS patient_account WHERE patient_account.patient_id = patient.patient_id AND bill_id IS NOT NULL) AS in_account_amount,contacts.display_name,contacts.contact_id,contacts.first_name,contacts.middle_name,contacts.last_name,(SELECT contact_details.detail FROM %dbprefix%contact_details as contact_details WHERE contact_details.contact_id = contacts.contact_id AND contact_details.type='mobile' LIMIT 1) AS phone_number,	   contacts.email   FROM %dbprefix%patient as patient        LEFT JOIN %dbprefix%contacts as contacts ON patient.contact_id = contacts.contact_id;
UPDATE %dbprefix%navigation_menu SET menu_text = 'appointment_calendar' WHERE menu_name = 'appointment_calendar';
INSERT INTO %dbprefix%navigation_menu ( menu_name, parent_name, menu_order, menu_url, menu_icon, menu_text) VALUES ( 'bill', 'payment', '100', 'bill/index', NULL, 'bills');
INSERT INTO %dbprefix%menu_access (menu_name, category_name, allow) VALUES ('bill', 'Administrator', '1');
INSERT INTO %dbprefix%navigation_menu ( menu_name, parent_name, menu_order, menu_url, menu_icon, menu_text) VALUES ( 'payments', 'payment', '200', 'payment/index', NULL, 'payments');
INSERT INTO %dbprefix%menu_access (menu_name, category_name, allow) VALUES ('payments', 'Administrator', '1');
INSERT INTO %dbprefix%data (ck_key, ck_value) VALUES ('login_page', 'appointment/index');
ALTER TABLE %dbprefix%modules ADD activation_hook VARCHAR( 50 ) NULL AFTER module_version;
ALTER TABLE %dbprefix%doctor_preferences ADD enable_online_appointment INT( 1 ) NULL AFTER is_deleted;
ALTER TABLE %dbprefix%contacts CHANGE first_name first_name VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL;
ALTER TABLE %dbprefix%contacts CHANGE middle_name middle_name VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL;
ALTER TABLE %dbprefix%contacts CHANGE last_name last_name VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL;
INSERT INTO %dbprefix%menu_access (menu_name, category_name, allow) VALUES ('clinic_details', 'Administrator', '1');
INSERT INTO %dbprefix%menu_access (menu_name, category_name, allow) VALUES ('menu_access', 'Administrator', '1');
ALTER TABLE %dbprefix%bill CHANGE visit_id visit_id INT(11) NULL;
CREATE OR REPLACE VIEW %dbprefix%view_bill AS SELECT bill.bill_id AS bill_id,               bill.bill_date AS bill_date,			   bill.visit_id AS visit_id,			   doctor.name AS doctor_name,			   visit.doctor_id AS doctor_id,			   bill.clinic_id,			   clinic.clinic_name,			   patient.patient_id AS patient_id,			   patient.display_id AS display_id,			   contacts.first_name AS first_name,			   contacts.middle_name AS middle_name,			   contacts.last_name AS last_name,			   bill.total_amount AS total_amount,			   bill.due_amount AS due_amount,			   SUM(bill_payment_r.adjust_amount) AS pay_amount          FROM %dbprefix%bill AS bill   				JOIN %dbprefix%patient AS patient on bill.patient_id = patient.patient_id   								JOIN %dbprefix%contacts AS contacts on contacts.contact_id = patient.contact_id   		        LEFT OUTER JOIN %dbprefix%visit AS visit ON bill.visit_id = visit.visit_id   				LEFT OUTER JOIN %dbprefix%clinic AS clinic on clinic.clinic_id = bill.clinic_id			    LEFT OUTER JOIN %dbprefix%view_doctor As doctor ON visit.doctor_id = doctor.doctor_id   			    LEFT OUTER JOIN %dbprefix%bill_payment_r AS bill_payment_r ON bill_payment_r.bill_id = bill.bill_id			    LEFT OUTER JOIN %dbprefix%payment AS payment on payment.payment_id = bill_payment_r.payment_id			    GROUP BY bill.bill_id,doctor.name,visit.userid, patient.patient_id;
UPDATE %dbprefix%version SET current_version='0.6.3';