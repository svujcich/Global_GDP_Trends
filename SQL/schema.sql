-- Create tables 
CREATE TABLE GDP_growth (
    Country_Name varchar(20),
    Country_Code varchar(3),
    2001 FLOAT NOT NULL, 
    2002 FLOAT NOT NULL,
    2003 FLOAT NOT NULL,
    2004 FLOAT NOT NULL,
    2005 FLOAT NOT NULL,
    2006 FLOAT NOT NULL,
    2007 FLOAT NOT NULL,
    2008 FLOAT NOT NULL,
    2009 FLOAT NOT NULL,
    2010 FLOAT NOT NULL,
    2011 FLOAT NOT NULL,
    2012 FLOAT NOT NULL,
    2013 FLOAT NOT NULL,
    2014 FLOAT NOT NULL,
    2015 FLOAT NOT NULL,
    2016 FLOAT NOT NULL,
    2017 FLOAT NOT NULL,
    2018 FLOAT NOT NULL,	
    2019 FLOAT NOT NULL,
    Income_Group varchar(40) pk fk,
    FOREIGN KEY () REFERENCES *table_name*(*key*),
    PRIMARY KEY(Country_Code)
);

CREATE TABLE population_ (
    Country_Name varchar(20),
    Country_Code varchar(3),	
    2001 FLOAT NOT NULL, 
    2002 FLOAT NOT NULL,
    2003 FLOAT NOT NULL,
    2004 FLOAT NOT NULL,
    2005 FLOAT NOT NULL,
    2006 FLOAT NOT NULL,
    2007 FLOAT NOT NULL,
    2008 FLOAT NOT NULL,
    2009 FLOAT NOT NULL,
    2010 FLOAT NOT NULL,
    2011 FLOAT NOT NULL,
    2012 FLOAT NOT NULL,
    2013 FLOAT NOT NULL,
    2014 FLOAT NOT NULL,
    2015 FLOAT NOT NULL,
    2016 FLOAT NOT NULL,
    2017 FLOAT NOT NULL,
    2018 FLOAT NOT NULL,	
    2019 FLOAT NOT NULL,
    Income_Group varchar(40) pk fk,
    FOREIGN KEY () REFERENCES *table_name*(*key*),
    PRIMARY KEY(Country_Code)
);

CREATE TABLE education (
    Country_Name varchar(20),
    Country_Code varchar(3),	
    2001 FLOAT NOT NULL, 
    2002 FLOAT NOT NULL,
    2003 FLOAT NOT NULL,
    2004 FLOAT NOT NULL,
    2005 FLOAT NOT NULL,
    2006 FLOAT NOT NULL,
    2007 FLOAT NOT NULL,
    2008 FLOAT NOT NULL,
    2009 FLOAT NOT NULL,
    2010 FLOAT NOT NULL,
    2011 FLOAT NOT NULL,
    2012 FLOAT NOT NULL,
    2013 FLOAT NOT NULL,
    2014 FLOAT NOT NULL,
    2015 FLOAT NOT NULL,
    2016 FLOAT NOT NULL,
    2017 FLOAT NOT NULL,
    2018 FLOAT NOT NULL,	
    2019 FLOAT NOT NULL,
    Income_Group varchar(40) pk fk,
    IncomeGroup varchar(40) pk fk	
    University_Count int pk
    Tuition varchar(40) pk fk
    FOREIGN KEY () REFERENCES *table_name*(*key*),
    PRIMARY KEY(Country_Code)
);