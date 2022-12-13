CREATE TABLE nhom6_class(
    tenvideo varchar(50) PRIMARY KEY,
    noidung varchar(255),
    loiich varchar(255),
    tuthe varchar(100),
    theoloai varchar(100)
);
CREATE TABLE nhom6_teacher(
    tenteacher varchar(50) primary key,
    kynang varchar(50),
    mota varchar(255)
);
create TABLE nhom6_course(
    tencourse varchar(50) PRIMARY KEY,
    gia int,
    thoigian int,
    loiich varchar(255),
    mota varchar(255)
);
CREATE TABLE nhom6_book(
    tenbook varchar(50) primary key,
    gia int,
    mota varchar(255)
);
CREATE TABLE nhom6_Class_Teacher(
    tenclass VARCHAR(50) FOREIGN KEY REFERENCES nhom6_class(tenvideo),
    tenteacher varchar(50) FOREIGN KEY REFERENCES nhom6_teacher(tenteacher)
);
CREATE TABLE nhom6_Teacher_Course(
    tenteacher VARCHAR(50) FOREIGN KEY REFERENCES nhom6_teacher(tenteacher),
    tencourse VARCHAR(50) FOREIGN KEY REFERENCES nhom6_course(tencourse)
);
CREATE TABLE nhom6_Course_Book(
    tencourse varchar(50) FOREIGN KEY REFERENCES nhom6_course(tencourse),
    tenbook VARCHAR (50) FOREIGN KEY REFERENCES nhom6_book(tenbook)
);
