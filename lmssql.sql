CREATE database LMS;
use LMS;
#CREATE TABLE USER DETAILS
CREATE TABLE user_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    contact_number VARCHAR(10),
    verified VARCHAR(10),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(50) 
);
#CREATE TABLE HIRED CANDIDATE.
CREATE TABLE hired_candidate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    email_id VARCHAR(255) NOT NULL,
    hired_city VARCHAR(50) NOT NULL,
    degree VARCHAR(50),
    hired_date DATE,
    mobile_number VARCHAR(10) NOT NULL,
    permanent_pincode VARCHAR(10),
    hired_lab VARCHAR(50),
    attitude VARCHAR(255),
    communication_remark VARCHAR(255),
    knowledge_remark VARCHAR(255),
    aggregate_remark VARCHAR(255),
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user_id INT,
    FOREIGN KEY (creator_user_id) REFERENCES user_details(id)
);

#FELLOWSHIP CANDIDATE
CREATE TABLE fellowship_candidate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cic_id VARCHAR(20) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    email_id VARCHAR(255) NOT NULL,
    hired_city VARCHAR(50) NOT NULL,
    degree VARCHAR(50),
    hired_date DATE,
    mobile_number VARCHAR(15) NOT NULL,
    permanent_pincode VARCHAR(10),
    hired_lab VARCHAR(50),
    attitude VARCHAR(255),
    communication_remark VARCHAR(255),
    knowledge_remark VARCHAR(255),
    aggregate_remark VARCHAR(255),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user_id INT,
    birth_date DATE,
    is_birth_date_verified BOOLEAN,
    parent_name VARCHAR(100),
    parent_occupation VARCHAR(100),
    parents_mobile_number VARCHAR(15),
    parents_annual_salary DECIMAL(8,2), #it will accept 8 digit having 2 decimal point .ex:-12345.56
    local_address VARCHAR(255),
    permanent_address VARCHAR(255),
    photo_path VARCHAR(255),
    joining_date DATE,
    candidate_status VARCHAR(50),
    personal_information VARCHAR(100),
    bank_information VARCHAR(100),
    educational_information VARCHAR(100),
    document_status VARCHAR(50),
    remark VARCHAR(255),
    FOREIGN KEY (creator_user_id) REFERENCES user_details(id)
);
#Candidate Bank Details
CREATE TABLE candidate_bank_details (
    Id INT PRIMARY KEY,
    candidate_Id INT,
    Name VARCHAR(255),
    Account_Number VARCHAR(20),
    Is_Account_Num_Verified BOOLEAN,
    Ifsc_code VARCHAR(20),
    is_ifsc_code_verified BOOLEAN,
    pan_number VARCHAR(20),
    is_pan_number_verified BOOLEAN,  #boolean :-it will return true,false or null.
    addhaar_num VARCHAR(20),
    is_addhaar_num_verified BOOLEAN,
    creator_stamp TIMESTAMP,
    creator_user INT,
    FOREIGN KEY (candidate_Id) REFERENCES user_details(id)
);
#Candidate Qualification
CREATE TABLE candidate_qualification (
    Id INT PRIMARY KEY,
    candidate_id INT,
    diploma VARCHAR(255),
    degree_name VARCHAR(255),
    is_degree_name_verified BOOLEAN,
    employee_discipline VARCHAR(255),
    is_employee_discipline_verified BOOLEAN,
    passing_year INT,
    is_passing_year_verified BOOLEAN,
    aggr_per DECIMAL(5,2), -- Adjust precision and scale as needed
    is_aggr_per_verified BOOLEAN,
    final_year_per DECIMAL(5,2), -- Adjust precision and scale as needed
    is_final_year_per_verified BOOLEAN,
    training_institute VARCHAR(255),
    is_training_institute_verified BOOLEAN,
    training_duration_month INT,
    is_training_duration_month_verified BOOLEAN,
    other_training VARCHAR(255),
    is_other_training_verified BOOLEAN,
    creator_stamp TIMESTAMP,
    creator_user INT,
    FOREIGN KEY (candidate_id) REFERENCES candidate_bank_details(candidate_Id),
    FOREIGN KEY (candidate_Id) REFERENCES user_details(id)
);
#Candidate documents 
CREATE TABLE candidate_documents (
    Id INT PRIMARY KEY,
    candidate_id INT,
    doc_type VARCHAR(255),
    doc_path VARCHAR(255),
    Status VARCHAR(50),
    creator_stamp TIMESTAMP,
    creator_user INT,
    FOREIGN KEY (candidate_id) REFERENCES candidate_qualification(Id)
);
#Company
CREATE TABLE Company (
    Id INT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    location VARCHAR(255),
    status VARCHAR(50), -- You can use BOOLEAN or another appropriate type based on your requirements
    creator_stamp TIMESTAMP,
    creator_user INT
);

#Lab
CREATE TABLE Lab(
Id INT PRIMARY KEY,
name VARCHAR(50),
location VARCHAR(50),
address VARCHAR(50),
Status  VARCHAR(50),
creator_stamp TIMESTAMP,
creator_user INT );

#Lab Threshold
CREATE TABLE Lab_threshold (
    Id INT PRIMARY KEY,
    lab_id INT,
    lab_capacity INT,
    lead_threshold INT,
    ideation_engg_threshold INT,
    buddy_engg_threshold INT,
    Status VARCHAR(50), 
    creator_stamp TIMESTAMP,
    creator_user INT,
    FOREIGN KEY (lab_id) REFERENCES Lab(Id)
);
#Tech Type
CREATE TABLE Tech_type (
    Id INT PRIMARY KEY,
    type_name VARCHAR(255),
    cur_status VARCHAR(50),
    creator_stamp TIMESTAMP,
    creator_user INT
);
#Tech Stack
CREATE TABLE Tech_Stack (
    Id INT PRIMARY KEY,
    tech_name VARCHAR(255),
    image_path VARCHAR(255),
    framework VARCHAR(255),
    cur_status VARCHAR(50), 
    creator_stamp TIMESTAMP,
    creator_user INT
);
#Maker Program
CREATE TABLE Maker_Program (
    Id INT PRIMARY KEY,
    program_name VARCHAR(255) NOT NULL,
    program_type VARCHAR(50),
    program_link VARCHAR(255),
    tech_stack_id INT,
    tech_type_id INT,
    is_program_approved BOOLEAN,
    Description TEXT,
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Creator_user VARCHAR(255),
    FOREIGN KEY (tech_stack_id) REFERENCES  Tech_Stack(Id),
    FOREIGN KEY (tech_type_id) REFERENCES  Tech_type(Id)
);
#App Parameters
CREATE TABLE AppParameters (
    Id INT PRIMARY KEY,
    key_type VARCHAR(50) NOT NULL,
    key_value VARCHAR(255),
    key_text TEXT,
    cur_status VARCHAR(50),
    lastupd_user VARCHAR(255),
    lastupd_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(255),
    seq_num INT
);
#Mentor 
CREATE TABLE Mentor (
    Id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    mentor_type VARCHAR(50),
    lab_id INT,
    Status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(255),
    FOREIGN KEY (lab_id) REFERENCES Lab(Id)
);
#Mentor Tech Stack
CREATE TABLE MentorTechStack (
    Id INT PRIMARY KEY,
    mentor_id INT,
    tech_stack_id INT,
    Status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(255),
    FOREIGN KEY (mentor_id) REFERENCES Mentor(Id),
    FOREIGN KEY (tech_stack_id) REFERENCES Tech_Stack(Id)
);
#Company Requirement
CREATE TABLE CompanyRequirement (
    id INT PRIMARY KEY,
    company_id INT,
    requested_month DATE,
    city VARCHAR(255),
    is_doc_verification BOOLEAN,
    requirement_doc_path VARCHAR(255),
    no_of_engg INT,
    tech_stack_id INT,
    tech_type_id INT,
    maker_program_id INT,
    lead_id INT,
    ideation_engg_id INT,
    buddy_engg_id INT,
    special_remark TEXT,
    Status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(255),
    FOREIGN KEY (tech_stack_id) REFERENCES Tech_Stack(Id),
    FOREIGN KEY (tech_type_id) REFERENCES  Tech_type(Id),
    FOREIGN KEY (maker_program_id) REFERENCES  Maker_Program(Id),
    FOREIGN KEY (lead_id) REFERENCES Mentor(Id),
    FOREIGN KEY (ideation_engg_id) REFERENCES Mentor(Id),
    FOREIGN KEY (buddy_engg_id) REFERENCES Mentor(Id),
    FOREIGN KEY (company_id) REFERENCES Company(Id)
);
#Candidate Stack Assignment
CREATE TABLE CandidateStackAssignment (
    Id INT PRIMARY KEY,
    requirement_id INT,
    candidate_id INT,
    assign_date DATE,
    complete_date DATE,
    Status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(255),
    FOREIGN KEY (requirement_id) REFERENCES  CompanyRequirement(id),
    FOREIGN KEY (candidate_id) REFERENCES user_details(id)
);
#Mentor Ideation Map 
CREATE TABLE Mentor_Ideation_Map (
    Id INT PRIMARY KEY,
    parent_mentor_id INT,
    mentor_id INT,
    status VARCHAR(255),
    creator_stamp TIMESTAMP,
    creator_user VARCHAR(255),
    FOREIGN KEY (parent_mentor_id) REFERENCES Mentor(Id),
    FOREIGN KEY (mentor_id) REFERENCES Mentor(Id)
);


