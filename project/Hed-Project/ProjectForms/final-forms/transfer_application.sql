create database transfer_application;
use transfer_application;

Create table district(
  district_id INT NOT NULL PRIMARY KEY,
  district_name VARCHAR(255) NOT NULL
);


Create table college(
  college_id INT NOT NULL PRIMARY KEY,
  district_id INT NOT NULL,
  college_name VARCHAR(255) NOT NULL,
  FOREIGN KEY (district_id) REFERENCES district(district_id)
);


CREATE TABLE remarks(
  remarks_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  teacher_id INT NOT NULL,
  principal_remarks_1 VARCHAR(255),
  principal_remarks_2 VARCHAR(255),
  director_remarks VARCHAR(255),
  secretory_remarks VARCHAR(255)
);


CREATE TABLE transfer_details(
  transfer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  district_from INT NOT NULL,
  FOREIGN KEY(district_from) REFERENCES district(district_id),
  college_from INT NOT NULL,
  FOREIGN KEY(college_from) REFERENCES college(college_id),
  district_priority_1 INT NOT NULL,
  FOREIGN KEY(district_priority_1) REFERENCES district(district_id),
  college_priority_1 INT NOT NULL,
  FOREIGN KEY(college_priority_1) REFERENCES college(college_id),
  district_priority_2 INT NOT NULL,
  FOREIGN KEY(district_priority_2) REFERENCES district(district_id),
  college_priority_2 INT NOT NULL,
  FOREIGN KEY(college_priority_2) REFERENCES college(college_id),
  district_priority_3 INT NOT NULL,
  FOREIGN KEY(district_priority_3) REFERENCES district(district_id),
  college_priority_3 INT NOT NULL,
  FOREIGN KEY(college_priority_3) REFERENCES college(college_id)
);


CREATE TABLE application_status(
    app_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT NOT NULL,
    remarks_id INT NOT NULL,
    FOREIGN KEY (remarks_id) REFERENCES remarks(remarks_id),
    transfer_id INT NOT NULL,
    FOREIGN KEY (transfer_id) REFERENCES transfer_details(transfer_id)
);
