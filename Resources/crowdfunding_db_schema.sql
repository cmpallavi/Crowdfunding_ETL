
drop table if exists campaign;
drop table if exists category;
drop table if exists subcategory;
drop table if exists contact;


CREATE TABLE category (
    category_id varchar   NOT NULL,
    category varchar   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar   NOT NULL,
    subcategory varchar   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE contact (
    contact_id int   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    email varchar   NOT NULL,
    CONSTRAINT pk_contact PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar   NOT NULL,
    description varchar   NOT NULL,
    goal float   NOT NULL,
    pledged float   NOT NULL,
    outcome varchar   NOT NULL,
    backers_count int   NOT NULL,
    country varchar   NOT NULL,
    currency varchar   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar   NOT NULL,
    subcategory_id varchar   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        cf_id
     )
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contact (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

