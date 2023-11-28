CREATE TABLE IF NOT EXISTS role
(
    role_id serial,
    name    character varying(255) NOT NULL UNIQUE,
    PRIMARY KEY (role_id)
);

CREATE TABLE IF NOT EXISTS person_role
(
    person_id integer NOT NULL,
    role_id   integer NOT NULL,
    FOREIGN KEY (role_id) REFERENCES role (role_id) ON DELETE CASCADE,
    PRIMARY KEY (person_id, role_id)
);

CREATE TABLE IF NOT EXISTS refresh_token_info
(
    token_id        serial,
    refresh_token   character varying(255) NOT NULL UNIQUE,
    person_id       integer                NOT NULL,
    role            character varying(255) NOT NULL,
    expiration_time timestamp              NOT NULL,
    PRIMARY KEY (token_id)
);

CREATE OR REPLACE FUNCTION clear_expired_refresh_tokens()
    RETURNS TRIGGER AS
$$
BEGIN
    DELETE
    FROM refresh_token_info
    WHERE person_id = NEW.person_id
      AND expiration_time < CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER clear_expired_refresh_tokens
    AFTER INSERT
    ON refresh_token_info
    FOR EACH ROW
EXECUTE FUNCTION clear_expired_refresh_tokens();