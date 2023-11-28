CREATE TABLE IF NOT EXISTS course_theme_completion
(
    course_theme_completion_id serial,
    explorer_id                integer NOT NULL,
    course_theme_id            integer NOT NULL,
    mark                       integer NOT NULL,
    PRIMARY KEY (course_theme_completion_id)
);
CREATE TABLE IF NOT EXISTS course_mark
(
    explorer_id     integer   NOT NULL,
    value           integer   NOT NULL,
    course_end_date timestamp NOT NULL,
    PRIMARY KEY (explorer_id)
);