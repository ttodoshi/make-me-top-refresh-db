CREATE TABLE IF NOT EXISTS homework_status
(
    status_id serial                        NOT NULL,
    status    character varying(255) UNIQUE NOT NULL,
    PRIMARY KEY (status_id)
);
CREATE TABLE IF NOT EXISTS homework
(
    homework_id     serial,
    course_theme_id integer NOT NULL,
    content         text    NOT NULL,
    group_id        integer NOT NULL,
    status_id       integer NOT NULL,
    FOREIGN KEY (status_id) REFERENCES homework_status (status_id) ON DELETE CASCADE,
    PRIMARY KEY (homework_id)
);
CREATE TABLE IF NOT EXISTS homework_request_status
(
    status_id serial                        NOT NULL,
    status    character varying(255) UNIQUE NOT NULL,
    PRIMARY KEY (status_id)
);
CREATE TABLE IF NOT EXISTS homework_request
(
    request_id   serial,
    homework_id  integer   NOT NULL,
    explorer_id  integer   NOT NULL,
    request_date timestamp NOT NULL,
    status_id    integer   NOT NULL,
    FOREIGN KEY (homework_id) REFERENCES homework (homework_id) ON DELETE CASCADE,
    FOREIGN KEY (status_id) REFERENCES homework_request_status (status_id) ON DELETE CASCADE,
    PRIMARY KEY (request_id)
);
CREATE TABLE IF NOT EXISTS homework_request_version
(
    version_id    serial,
    request_id    integer   NOT NULL,
    content       text      NOT NULL,
    creation_date timestamp NOT NULL,
    FOREIGN KEY (request_id) REFERENCES homework_request (request_id) ON DELETE CASCADE,
    PRIMARY KEY (version_id)
);
CREATE TABLE IF NOT EXISTS homework_request_feedback
(
    feedback_id        serial,
    request_version_id integer   NOT NULL,
    comment            text      NOT NULL,
    creation_date      timestamp NOT NULL,
    FOREIGN KEY (request_version_id) REFERENCES homework_request_version (version_id) ON DELETE CASCADE,
    PRIMARY KEY (feedback_id)
);
CREATE TABLE IF NOT EXISTS homework_mark
(
    request_id integer,
    mark       integer NOT NULL,
    comment    text    NULL,
    FOREIGN KEY (request_id) REFERENCES homework_request (request_id) ON DELETE CASCADE,
    PRIMARY KEY (request_id)
);
