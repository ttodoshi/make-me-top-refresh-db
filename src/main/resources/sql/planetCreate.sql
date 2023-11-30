CREATE TABLE IF NOT EXISTS planet
(
    planet_id     bigserial,
    planet_name   character varying(255) NOT NULL,
    planet_number integer                NOT NULL,
    system_id     bigint                 NOT NULL,
    PRIMARY KEY (planet_id)
);
