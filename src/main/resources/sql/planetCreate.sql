CREATE TABLE IF NOT EXISTS planet
(
    planet_id     serial,
    planet_name   character varying(255) NOT NULL,
    planet_number integer                NOT NULL,
    system_id     integer                NOT NULL,
    PRIMARY KEY (planet_id)
);
