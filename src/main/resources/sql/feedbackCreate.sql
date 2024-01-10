CREATE TABLE IF NOT EXISTS keeper_feedback_offer
(
    keeper_id   bigint  NOT NULL,
    explorer_id bigint,
    offer_valid boolean NOT NULL,
    PRIMARY KEY (explorer_id)
);
CREATE TABLE IF NOT EXISTS keeper_feedback
(
    explorer_id bigint,
    rating                   integer NOT NULL,
    comment                  character varying(1000),
    FOREIGN KEY (explorer_id) REFERENCES keeper_feedback_offer (explorer_id) ON DELETE CASCADE,
    PRIMARY KEY (explorer_id)
);

CREATE TABLE IF NOT EXISTS explorer_feedback_offer
(
    explorer_id bigint,
    keeper_id   bigint  NOT NULL,
    offer_valid boolean NOT NULL,
    PRIMARY KEY (explorer_id)
);
CREATE TABLE IF NOT EXISTS explorer_feedback
(
    explorer_id bigint,
    rating                     integer NOT NULL,
    comment                    character varying(1000),
    FOREIGN KEY (explorer_id) REFERENCES explorer_feedback_offer (explorer_id) ON DELETE CASCADE,
    PRIMARY KEY (explorer_id)
);

CREATE TABLE IF NOT EXISTS course_rating_offer
(
    explorer_id bigint,
    offer_valid boolean NOT NULL,
    PRIMARY KEY (explorer_id)
);

CREATE TABLE IF NOT EXISTS course_rating
(
    explorer_id bigint,
    rating                 integer NOT NULL,
    FOREIGN KEY (explorer_id) REFERENCES course_rating_offer (explorer_id) ON DELETE CASCADE,
    PRIMARY KEY (explorer_id)
);
