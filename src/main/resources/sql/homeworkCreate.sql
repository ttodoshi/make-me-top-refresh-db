CREATE TABLE IF NOT EXISTS homework_status
(
    status_id bigserial                     NOT NULL,
    status    character varying(255) UNIQUE NOT NULL,
    PRIMARY KEY (status_id)
);
CREATE TABLE IF NOT EXISTS homework
(
    homework_id     bigserial,
    course_theme_id bigint NOT NULL,
    content         text   NOT NULL,
    group_id        bigint NOT NULL,
    status_id       bigint NOT NULL,
    FOREIGN KEY (status_id) REFERENCES homework_status (status_id) ON DELETE CASCADE,
    PRIMARY KEY (homework_id)
);
CREATE TABLE IF NOT EXISTS homework_request_status
(
    status_id bigserial                     NOT NULL,
    status    character varying(255) UNIQUE NOT NULL,
    PRIMARY KEY (status_id)
);
CREATE TABLE IF NOT EXISTS homework_request
(
    request_id   bigserial,
    homework_id  bigint    NOT NULL,
    explorer_id  bigint    NOT NULL,
    request_date timestamp NOT NULL,
    status_id    bigint    NOT NULL,
    FOREIGN KEY (homework_id) REFERENCES homework (homework_id) ON DELETE CASCADE,
    FOREIGN KEY (status_id) REFERENCES homework_request_status (status_id) ON DELETE CASCADE,
    PRIMARY KEY (request_id)
);
CREATE TABLE IF NOT EXISTS homework_request_version
(
    version_id    bigserial,
    request_id    bigint    NOT NULL,
    content       text      NOT NULL,
    creation_date timestamp NOT NULL,
    FOREIGN KEY (request_id) REFERENCES homework_request (request_id) ON DELETE CASCADE,
    PRIMARY KEY (version_id)
);
CREATE TABLE IF NOT EXISTS homework_request_feedback
(
    feedback_id        bigserial,
    request_version_id bigint    NOT NULL,
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
