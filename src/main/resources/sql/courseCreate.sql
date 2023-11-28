CREATE TABLE IF NOT EXISTS course
(
    course_id     integer                NOT NULL,
    title         character varying(255) NOT NULL,
    creation_date timestamp              NOT NULL,
    last_modified timestamp              NOT NULL,
    description   character varying(255) NOT NULL,
    PRIMARY KEY (course_id)
);
CREATE TABLE IF NOT EXISTS course_theme
(
    course_theme_id     integer                NOT NULL,
    title               character varying(255) NOT NULL,
    last_modified       timestamp              NOT NULL,
    description         character varying(255) NOT NULL,
    content             text                   NOT NULL,
    course_theme_number integer                NOT NULL,
    course_id           integer                NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course (course_id) ON DELETE CASCADE,
    PRIMARY KEY (course_theme_id)
);