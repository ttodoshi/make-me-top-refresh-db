CREATE TABLE IF NOT EXISTS keeper_feedback
(
    keeper_id   integer NOT NULL,
    explorer_id integer,
    rating      integer NOT NULL,
    comment     character varying(1000),
    PRIMARY KEY (explorer_id)
);
CREATE TABLE IF NOT EXISTS explorer_feedback
(
    explorer_id integer,
    keeper_id   integer NOT NULL,
    rating      integer NOT NULL,
    comment     character varying(1000),
    PRIMARY KEY (explorer_id)
);
CREATE TABLE IF NOT EXISTS course_rating
(
    explorer_id integer,
    rating      integer NOT NULL,
    PRIMARY KEY (explorer_id)
);
