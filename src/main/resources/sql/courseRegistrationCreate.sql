CREATE TABLE IF NOT EXISTS course_registration_request_status
(
    status_id bigserial,
    status    character varying(255) NOT NULL UNIQUE,
    PRIMARY KEY (status_id)
);
CREATE TABLE IF NOT EXISTS course_registration_request
(
    request_id   bigserial,
    course_id    bigint    NOT NULL,
    person_id    bigint    NOT NULL,
    request_date timestamp NOT NULL,
    status_id    bigint    NOT NULL,
    FOREIGN KEY (status_id) REFERENCES course_registration_request_status (status_id) ON DELETE CASCADE,
    PRIMARY KEY (request_id)
);
CREATE TABLE IF NOT EXISTS course_registration_request_keeper_status
(
    status_id bigserial,
    status    character varying(255) NOT NULL UNIQUE,
    PRIMARY KEY (status_id)
);
CREATE TABLE IF NOT EXISTS course_registration_request_keeper
(
    response_id   bigserial,
    request_id    bigint    NOT NULL,
    keeper_id     bigint    NOT NULL,
    response_date timestamp NOT NULL,
    status_id     bigint    NOT NULL,
    FOREIGN KEY (request_id) REFERENCES course_registration_request (request_id) ON DELETE CASCADE,
    FOREIGN KEY (status_id) REFERENCES course_registration_request_keeper_status (status_id) ON DELETE CASCADE,
    PRIMARY KEY (response_id)
);
CREATE TABLE IF NOT EXISTS rejection_reason
(
    reason_id bigserial,
    name      character varying(255) NOT NULL UNIQUE,
    PRIMARY KEY (reason_id)
);
CREATE TABLE IF NOT EXISTS keeper_rejection
(
    response_id bigint NOT NULL,
    reason_id   bigint NOT NULL,
    FOREIGN KEY (response_id) REFERENCES course_registration_request_keeper (response_id) ON DELETE CASCADE,
    FOREIGN KEY (reason_id) REFERENCES rejection_reason (reason_id) ON DELETE CASCADE,
    PRIMARY KEY (response_id)
);