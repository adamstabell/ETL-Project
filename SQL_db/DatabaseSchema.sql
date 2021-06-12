CREATE TABLE "Police_Department" (
    "City" varchar(30)   NOT NULL,
    "ORI" int   NOT NULL,
    "Department_Name" varchar(30)   NOT NULL,
    "State" varchar(2)   NOT NULL,
    CONSTRAINT "pk_Police_Department" PRIMARY KEY (
        "City"
     )
);

CREATE TABLE "Reported_Crime_Frequency" (
    "ORI" serial   NOT NULL,
    "Agg_Assault" int   NOT NULL,
    "Sex_Offences" int   NOT NULL,
    "Manslaughter_Neg" int   NOT NULL,
    "Murder_and_Nonneg_Man" int   NOT NULL,
    "Rape" int   NOT NULL,
    "Robbery" int   NOT NULL,
    "Simp_Assault" int   NOT NULL,
    "Humman_Trafficking_Commercial_SA" int   NOT NULL,
    "Humman_Trafficking_Invol_Ser" int   NOT NULL,
    "Offences_Total" int   NOT NULL,
    CONSTRAINT "pk_Reported_Crime_Frequency" PRIMARY KEY (
        "ORI"
     )
);

CREATE TABLE "Property_Address" (
    "House_ID" int   NOT NULL,
    "Street" varchar   NOT NULL,
    "City" varchar(30)   NOT NULL,
    "State" varchar(2)   NOT NULL,
    "Zipcode" int   NOT NULL,
    CONSTRAINT "pk_Property_Address" PRIMARY KEY (
        "House_ID"
    ),
    FOREIGN KEY("City") REFERENCES "Police_Department" ("City")
    
);

CREATE TABLE "Property_Amenities" (
    "House_ID" int   NOT NULL,
    "Number_of_Beds" int   NOT NULL,
    "Number_of_Baths" float   NOT NULL,
    "Square_Footage" float   NOT NULL,
    CONSTRAINT "pk_Property_Amenities" PRIMARY KEY (
        "House_ID"
     ),
    FOREIGN KEY("House_ID") REFERENCES "Property_Address" ("House_ID")
);

CREATE TABLE "Property_Price" (
    "House_ID" int   NOT NULL,
    "Price" int   NOT NULL,
    CONSTRAINT "pk_Property_Price" PRIMARY KEY (
        "House_ID"
     ),
    FOREIGN KEY("House_ID") REFERENCES "Property_Address" ("House_ID")
);

CREATE TABLE "Police_Department" (
    "City" varchar(30)   NOT NULL,
    "ORI" int   NOT NULL,
    "Department_Name" varchar   NOT NULL,
    "State" varchar(2)   NOT NULL,
    CONSTRAINT "pk_Police_Department" PRIMARY KEY (
        "City"
    ),
    FOREIGN KEY("ORI") REFERENCES "Reported_Crime_Frequency" ("ORI")
    
);
