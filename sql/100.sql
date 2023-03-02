CREATE TABLE IF NOT EXISTS %dbprefix%chikitsa_xml_check( id int(11) NOT NULL AUTO_INCREMENT,last_checked_date date  NULL, xml_content varchar(5000) NULL, PRIMARY KEY (id));
ALTER TABLE %dbprefix%chikitsa_xml_check CHANGE xml_content xml_content TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL; 
ALTER TABLE %dbprefix%chikitsa_xml_check ADD module_name VARCHAR(50) NULL AFTER xml_content; 
ALTER TABLE %dbprefix%chikitsa_xml_check ADD xml_version VARCHAR(50) NULL AFTER module_name; 
UPDATE  %dbprefix%receipt_template SET template = '<h1 style=\"text-align: center;\">[clinic_name]</h1>\r\n<h2 style=\"text-align: center;\">[tag_line]</h2>\r\n<p style=\"text-align: center;\">[clinic_address]</p>\r\n<p style=\"text-align: center;\"><strong style=\"line-height: 1.42857143;\">Landline : </strong><span style=\"line-height: 1.42857143;\">[landline]</span> <strong style=\"line-height: 1.42857143;\">Mobile : </strong><span style=\"line-height: 1.42857143;\">[mobile]</span> <strong style=\"line-height: 1.42857143;\">Email : </strong><span style=\"text-align: center;\"> [email]</span></p>\r\n<hr id=\"null\" />\r\n<h3 style=\"text-align: center;\"><u style=\"text-align: center;\">RECEIPT</u></h3>\r\n<p><span style=\"text-align: left;\"><strong>Date : </strong>[bill_date] [bill_time]</span><span style=\"float: right;\"><strong>Receipt Number :</strong> [bill_id]</span></p>\r\n<p><span style=\"float: right;\"><strong>Created By :</strong> [created_by]</span></p>\r\n<p style=\"text-align: left;\"><strong style=\"text-align: left;\">Patient Name: </strong><span style=\"text-align: left;\">[patient_name]<br /></span></p>\r\n<hr id=\"null\" style=\"text-align: left;\" />\r\n<p>Received fees for Professional services and other charges of our:</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>[tax_column_header]</p>\r\n<table style=\"width: 100%; margin-top: 25px; margin-bottom: 25px; border-collapse: collapse; border: 1px solid black;\">\r\n<thead>\r\n<tr>\r\n<td style=\"width: 400px; text-align: left; padding: 5px; border: 1px solid black;\"><strong style=\"width: 400px; text-align: left;\">Item</strong></td>\r\n<td style=\"padding: 5px; border: 1px solid black;\"><strong>Quantity</strong></td>\r\n<td style=\"width: 100px; text-align: right; padding: 5px; border: 1px solid black;\"><strong>M.R.P.</strong></td>\r\n<td style=\"width: 100px; text-align: right; padding: 5px; border: 1px solid black;\"><strong>Amount</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td colspan=\"4\">[col:particular|quantity|mrp|amount|tax_amount]</td>\r\n</tr>\r\n\r\n<tr>\r\n<td style=\"padding: 5px; border: 1px solid black;\" colspan=\"3\">Discount</td>\r\n<td style=\"text-align: right; padding: 5px; border: 1px solid black;\"><strong>[discount]</strong></td>\r\n</tr>\r\n<tr>\r\n<td>[tax_details]</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 5px; border: 1px solid black;\" colspan=\"3\"><strong style=\"width: 400px; text-align: left;\">Total</strong></td>\r\n<td style=\"text-align: right; padding: 5px; border: 1px solid black;\"><strong>[total]</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 5px; border: 1px solid black;\" colspan=\"2\"><strong style=\"width: 400px; text-align: left;\">Payment Method</strong></td>\r\n<td style=\"padding: 5px; border: 1px solid black;\"><strong style=\"width: 400px; text-align: left;\">Collected By</strong></td>\r\n<td style=\"text-align: right; padding: 5px; border: 1px solid black;\"><strong style=\"width: 400px; text-align: left;\">Amount</strong></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">[paycol:payment_mode|collected_by|payment_amount]</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 5px; border: 1px solid black;\" colspan=\"3\"><strong style=\"width: 400px; text-align: left;\">Paid Amount</strong></td>\r\n<td style=\"text-align: right; padding: 5px; border: 1px solid black;\"><strong>[paid_amount]</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 5px; border: 1px solid black;\" colspan=\"3\"><strong style=\"width: 400px; text-align: left;\">Due Amount</strong></td>\r\n<td style=\"text-align: right; padding: 5px; border: 1px solid black;\"><strong>[due_amount]</strong></td>\r\n</tr>\r\n\r\n</tbody>\r\n</table>\r\n<p>Received with Thanks,</p>\r\n<p>For [clinic_name]</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Signature</p>' WHERE   template_name = 'Main with Tax' OR template_name = 'Main with Payment'   ;
UPDATE  %dbprefix%version SET current_version='1.0.0';