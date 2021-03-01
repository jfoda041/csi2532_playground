CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20210301143000-create-athletes.sql', '2021-03-01 14:30:00');

INSERT INTO schema_migrations (migration, migrated_at) VALUES 
('20210301143500-create-migrations.sql', '2021-03-01 14:35:00');