CREATE TABLE minions_birthdays (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    age INTEGER DEFAULT 0,
    present VARCHAR(100) DEFAULT '',
    party TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE minions_birthdays
ADD CONSTRAINT unique_id_constraint UNIQUE (id);