--INSERT INTO profile (reg_no, hsc_roll, name, father_name, mother_name, birth_date, address, email, religion) VALUES
INSERT INTO profile VALUES ('R001', 'HSC001', 'John Doe', 'Michael Doe', 'Jane Doe', date '2000-01-01', '123 Main St', 'johndoe@example.com', 'Islam');
INSERT INTO profile VALUES ('R002', 'HSC002', 'Jane Smith', 'David Smith', 'Mary Smith', date '1998-05-15', '456 Elm St', 'janesmith@example.com', 'Hindu');
INSERT INTO profile VALUES ('R003', 'HSC003', 'Robert Johnson', 'Thomas Johnson', 'Sarah Johnson', date '1999-08-22', '789 Oak St', 'robertjohnson@example.com', 'Budhha');
INSERT INTO profile VALUES ('R004', 'HSC004', 'Emily Davis', 'Daniel Davis', 'Laura Davis', date '2001-03-10', '321 Pine St', 'emilydavis@example.com', 'Christ');
INSERT INTO profile VALUES ('R005', 'HSC005', 'Michael Wilson', 'John Wilson', 'Emily Wilson', date '2002-07-17', '567 Maple St', 'michaelwilson@example.com', 'Islam');
INSERT INTO profile VALUES ('R006', 'HSC006', 'Sarah Thompson', 'James Thompson', 'Jennifer Thompson', date '1999-11-05', '890 Cedar St', 'sarahthompson@example.com', 'Hindu');
INSERT INTO profile VALUES ('R007', 'HSC007', 'Matthew Lee', 'Brian Lee', 'Karen Lee', date '1999-02-28', '234 Birch St', 'matthewlee@example.com', 'Budhha');
INSERT INTO profile VALUES ('R008', 'HSC008', 'Olivia Martinez', 'Joseph Martinez', 'Maria Martinez', date '2000-06-12', '678 Oak St', 'oliviamartinez@example.com', 'Christ');
INSERT INTO profile VALUES ('R009', 'HSC009', 'Christopher Harris', 'William Harris', 'Jessica Harris', date '2000-09-20', '912 Pine St', 'christopherharris@example.com', 'Islam');
INSERT INTO profile VALUES ('R010', 'HSC010', 'Ava Clark', 'Christopher Clark', 'Samantha Clark', date '2001-12-08', '345 Maple St', 'avaclark@example.com', 'Hindu');
INSERT INTO profile VALUES ('R011', 'HSC011', 'David Rodriguez', 'Andrew Rodriguez', 'Elizabeth Rodriguez', date '1998-04-18', '567 Cedar St', 'davidrodriguez@example.com', 'Budhha');
INSERT INTO profile VALUES ('R012', 'HSC012', 'Sophia Walker', 'Jason Walker', 'Kimberly Walker', date '1999-07-25', '890 Birch St', 'sophiawalker@example.com', 'Christ');
INSERT INTO profile VALUES ('R013', 'HSC013', 'Daniel Green', 'Mark Green', 'Patricia Green', date '2002-10-14', '123 Oak St', 'danielgreen@example.com', 'Islam');
INSERT INTO profile VALUES ('R014', 'HSC014', 'Mia Lewis', 'Robert Lewis', 'Susan Lewis', date '2001-01-31', '456 Pine St', 'mialewis@example.com', 'Hindu');
INSERT INTO profile VALUES ('R015', 'HSC015', 'Andrew Hill', 'David Hill', 'Nancy Hill', date '2000-06-27', '789 Maple St', 'andrewhill@example.com','Islam');

--INSERT INTO applicant (applicant_id, exam_venue, apply_time) VALUES
INSERT INTO applicant VALUES ('A001', 'Venue1', timestamp '2023-05-18 09:00:00');
INSERT INTO applicant VALUES ('A002', 'Venue2', timestamp '2023-05-18 10:15:00');
INSERT INTO applicant VALUES ('A003', 'Venue1', timestamp '2023-05-18 11:30:00');
INSERT INTO applicant VALUES ('A004', 'Venue3', timestamp '2023-05-18 13:00:00');
INSERT INTO applicant VALUES ('A005', 'Venue2', timestamp '2023-05-18 14:30:00');
INSERT INTO applicant VALUES ('A006', 'Venue4', timestamp '2023-05-18 15:45:00');
INSERT INTO applicant VALUES ('A007', 'Venue3', timestamp '2023-05-18 17:00:00');
INSERT INTO applicant VALUES ('A008', 'Venue5', timestamp '2023-05-19 09:30:00');
INSERT INTO applicant VALUES ('A009', 'Venue2', timestamp '2023-05-19 10:45:00');
INSERT INTO applicant VALUES ('A010', 'Venue1', timestamp '2023-05-19 12:00:00');
INSERT INTO applicant VALUES ('A011', 'Venue4', timestamp '2023-05-19 13:15:00');
INSERT INTO applicant VALUES ('A012', 'Venue5', timestamp '2023-05-19 14:30:00');
INSERT INTO applicant VALUES ('A013', 'Venue3', timestamp '2023-05-19 15:45:00');
INSERT INTO applicant VALUES ('A014', 'Venue2', timestamp '2023-05-19 17:00:00');
INSERT INTO applicant VALUES ('A015', 'Venue1', timestamp '2023-05-20 09:00:00');

--INSERT INTO eligible INSERT INTO eligible VALUES (reg_no, applicant_id, hsc_mark, hsc_gpa, ssc_gpa, eligibility) VALUES
INSERT INTO eligible VALUES ('R001', 'A001', 580, 4.50, 4.00, 'yes');
INSERT INTO eligible VALUES ('R002', 'A002', 550, 4.00, 3.50, 'yes');
INSERT INTO eligible VALUES ('R003', 'A003', 600, 5.00, 4.50, 'yes');
INSERT INTO eligible VALUES ('R004', 'A004', 540, 3.75, 3.25, 'no');
INSERT INTO eligible VALUES ('R005', 'A005', 590, 4.80, 4.20, 'yes');
INSERT INTO eligible VALUES ('R006', 'A006', 510, 3.50, 3.00, 'yes');
INSERT INTO eligible VALUES ('R007', 'A007', 570, 4.30, 3.75, 'yes');
INSERT INTO eligible VALUES ('R008', 'A008', 480, 3.00, 2.75, 'no');
INSERT INTO eligible VALUES ('R009', 'A009', 560, 4.20, 3.50, 'yes');
INSERT INTO eligible VALUES ('R010', 'A010', 520, 3.80, 3.25, 'yes');
INSERT INTO eligible VALUES ('R011', 'A011', 590, 4.80, 4.20, 'yes');
INSERT INTO eligible VALUES ('R012', 'A012', 500, 3.25, 2.75, 'no');
INSERT INTO eligible VALUES ('R013', 'A013', 550, 4.00, 3.50, 'yes');
INSERT INTO eligible VALUES ('R014', 'A014', 580, 4.50, 4.00, 'yes');
INSERT INTO eligible VALUES ('R015', 'A015', 530, 3.60, 3.00, 'yes');

--INSERT INTO examinee (applicant_id, phy_mark, chem_mark, math_mark, eng_mark, gpa_mark, total_mark, merit_place) VALUES
INSERT INTO examinee VALUES ('A001', 120, 140, 145, 40, 85, 530, 2);
INSERT INTO examinee VALUES ('A002', 110, 130, 135, 38, 75, 488, 6);
INSERT INTO examinee VALUES ('A003', 145, 150, 150, 48, 95, 588, 1);
INSERT INTO examinee VALUES ('A005', 100, 120, 125, 35, 90, 470, 8);
INSERT INTO examinee VALUES ('A006', 130, 145, 140, 42, 65, 522, 4);
INSERT INTO examinee VALUES ('A007', 90, 110, 115, 32, 80, 427, 10);
INSERT INTO examinee VALUES ('A009', 115, 135, 130, 37, 77, 494, 5);
INSERT INTO examinee VALUES ('A010', 80, 100, 105, 30, 71, 386, 11);
INSERT INTO examinee VALUES ('A011', 105, 125, 120, 36, 90, 476, 7);
INSERT INTO examinee VALUES ('A013', 95, 115, 110, 33, 75, 428, 9);
INSERT INTO examinee VALUES ('A014', 125, 140, 135, 41, 85, 526, 3);
INSERT INTO examinee VALUES ('A015', 85, 105, 100, 29, 66, 385, 12);

--INSERT INTO department (roll_no, dept_name, dept_id, faculty) VALUES
INSERT INTO department VALUES ('R001', 'Computer Science', 07, 'Faculty of Science');
INSERT INTO department VALUES ('R002', 'Electrical Engineering', 01, 'Faculty of Engineering');
INSERT INTO department VALUES ('R003', 'Mechanical Engineering', 05, 'Faculty of Engineering');
INSERT INTO department VALUES ('R004', 'Chemistry', 15, 'Faculty of Science');
INSERT INTO department VALUES ('R005', 'Physics', 13, 'Faculty of Science');
INSERT INTO department VALUES ('R006', 'English Literature', 19, 'Faculty of Arts');
INSERT INTO department VALUES ('R007', 'Business Administration', 17, 'Faculty of Business');
INSERT INTO department VALUES ('R008', 'Mathematics', 09, 'Faculty of Science');
INSERT INTO department VALUES ('R009', 'Civil Engineering', 03, 'Faculty of Engineering');
INSERT INTO department VALUES ('R010', 'Biology', 11, 'Faculty of Science');

--INSERT INTO student (merit_place, roll_no, dept_choice, priority) VALUES
INSERT INTO student VALUES (1, 'R001', 'Computer Science', 1);
INSERT INTO student VALUES (2, 'R002', 'Electrical Engineering', 1);
INSERT INTO student VALUES (3, 'R003', 'Mechanical Engineering', 1);
INSERT INTO student VALUES (4, 'R004', 'Chemistry', 2);
INSERT INTO student VALUES (5, 'R005', 'Physics', 2);
INSERT INTO student VALUES (6, 'R006', 'English Literature', 3);
INSERT INTO student VALUES (7, 'R007', 'Business Administration', 5);
INSERT INTO student VALUES (8, 'R008', 'Mathematics', 4);
INSERT INTO student VALUES (9, 'R009', 'Civil Engineering', 1);
INSERT INTO student VALUES (10, 'R010', 'Biology', 6);

