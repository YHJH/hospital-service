CREATE TABLE `account` (
  `account_id` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `secured_question` varchar(50) DEFAULT NULL,
  `secured_answer` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cell_phone` varchar(20) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `repeat_password` varchar(100) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 


CREATE TABLE `medical_history_summary` (
  `user_id` int(11) NOT NULL,
  `diagnose` varchar(100) DEFAULT NULL,
  `proposed_plan` varchar(50) DEFAULT NULL,
  `created_time` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 


CREATE TABLE `patients` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `certificate_type` varchar(20) DEFAULT NULL,
  `certificate_no` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `occupation` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `academic_degree` varchar(20) DEFAULT NULL,
  `belongs_to_doctor` int(11) DEFAULT NULL,
  `current_status` varchar(10) DEFAULT NULL,
  `created_time` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


CREATE TABLE `patient_medical_history_xref` (
  `user_id` int(11) NOT NULL,
  `medical_record_id` int(11) NOT NULL,
  `medical_record_type` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`,`medical_record_id`,`medical_record_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


CREATE TABLE `patient_medical_record_xref` (
  `medical_record_id` varchar(255) NOT NULL,
  `medical_record_type` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  PRIMARY KEY (`medical_record_id`,`medical_record_type`,`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
