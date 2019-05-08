CREATE OR REPLACE VIEW %dbprefix%view_payment AS SELECT payment.payment_id,payment.bill_id,payment.pay_date,payment.pay_mode,payment.cheque_no,payment.pay_amount,bill.bill_date,bill.patient_id,patient.display_id,contacts.first_name,contacts.middle_name,contacts.last_name FROM %dbprefix%payment AS payment	INNER JOIN %dbprefix%bill as bill ON payment.bill_id = bill.bill_id INNER JOIN %dbprefix%patient as patient ON patient.patient_id = bill.patient_id INNER JOIN %dbprefix%contacts as contacts ON contacts.contact_id = patient.contact_id;
UPDATE %dbprefix%version SET current_version='0.2.4';
