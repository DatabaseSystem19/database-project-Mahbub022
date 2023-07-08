--drop tables & views
drop view admission;
drop table eligible;
drop table student;
drop table examinee;
drop table profile;
drop table applicant;
drop table department;


--profile
create table profile(
			reg_no varchar(30) primary key,
			hsc_roll varchar(30) not null,
			name varchar(30) not null, 
			father_name varchar(30) not null,
			mother_name varchar(30) not null,
			birth_date date not null,
			address varchar(30) not null,
			email varchar(30) unique not null,
			religion varchar(30) not null check (religion in ('Islam','Hindu','Budhha','Christ'))
);

--applicant
create table applicant(
			applicant_id varchar(30) primary key,
			exam_venue varchar(30) not null,
			apply_time timestamp not null
);

--eligible
create table eligible(
			reg_no varchar(30),
			applicant_id varchar(30),
			hsc_mark numeric(3) not null check (hsc_mark<=600),
			hsc_gpa numeric(3,2) not null check(hsc_gpa<=5.00),
			ssc_gpa numeric(3,2) not null check(ssc_gpa<=5.00), 
			eligibility varchar(5) not null check(eligibility in ('yes','no')),
			foreign key (reg_no) references profile (reg_no),
			foreign key (applicant_id) references applicant (applicant_id)
			on delete cascade
);

--examinee
create table examinee(
			applicant_id varchar(30),
			phy_mark numeric(3) not null check (phy_mark<=150),
			chem_mark numeric(3) not null check (chem_mark<=150),
			math_mark numeric(3) not null check (math_mark<=150),
			eng_mark numeric(3) not null check (eng_mark<=50),
			gpa_mark numeric(3) not null check (gpa_mark<=100),
			total_mark numeric(3) check (total_mark<=600),
			merit_place numeric(5) primary key,
			foreign key (applicant_id) references applicant(applicant_id)
			on delete cascade
);

--department
create table department(
			roll_no varchar(30) primary key,
			dept_name varchar(30) not null,
			dept_id numeric(2) not null,
			faculty varchar(30) not null
);

--student
create table student(
			merit_place numeric(5) not null,
			roll_no varchar(30) not null,
			dept_choice varchar(30) not null,
			priority numeric(2) not null,
			foreign key (merit_place) references examinee(merit_place),
			foreign key (roll_no) references department(roll_no)
			on delete cascade
<<<<<<< HEAD
);
=======
);
>>>>>>> d3c61a4cb8141bb22c264f82bf7fb81d38d7b22f
