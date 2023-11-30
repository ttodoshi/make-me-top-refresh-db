CREATE TABLE IF NOT EXISTS person
(
    person_id         integer,
    first_name        character varying(255) NOT NULL,
    last_name         character varying(255) NOT NULL,
    patronymic        character varying(255) NULL,
    registration_date timestamp              NOT NULL,
    max_explorers     integer                NOT NULL,
    PRIMARY KEY (person_id)
);

CREATE TABLE IF NOT EXISTS keeper
(
    keeper_id  bigserial,
    course_id  bigint    NOT NULL,
    person_id  bigint    NOT NULL,
    start_date timestamp NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person (person_id) ON DELETE CASCADE,
    PRIMARY KEY (keeper_id)
);

CREATE TABLE IF NOT EXISTS explorer_group
(
    group_id  bigserial,
    course_id bigint NOT NULL,
    keeper_id bigint NOT NULL,
    FOREIGN KEY (keeper_id) REFERENCES keeper (keeper_id) ON DELETE CASCADE,
    PRIMARY KEY (group_id)
);
CREATE TABLE IF NOT EXISTS explorer
(
    explorer_id bigserial,
    person_id   bigint    NOT NULL,
    group_id    bigint    NOT NULL,
    start_date  timestamp NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person (person_id) ON DELETE CASCADE,
    FOREIGN KEY (group_id) REFERENCES explorer_group (group_id) ON DELETE CASCADE,
    PRIMARY KEY (explorer_id)
);