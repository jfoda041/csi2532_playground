CREATE TABLE Athlete (
    id int,
    nom varchar(255),
    identified_gender varchar(1),
    age int,
    PRIMARY KEY(id)
);

CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20200127173000-create-athletes.sql', '2020-01-27 17:30:00');

INSERT INTO schema_migrations (migration, migrated_at) VALUES 
('20200126174000-create-migrations.sql', '2020-01-27 17:40:00');

ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20200206230001-update-athletes.sql', '2020-01-27 18:30:00');

CREATE TABLE Competitions (
    compid int,
    comp_name varchar(255),
    venue varchar(255),
    start_time date,
    duration time(0),
    PRIMARY KEY(compid)
);
