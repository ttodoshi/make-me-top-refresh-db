CREATE TABLE IF NOT EXISTS galaxy
(
    galaxy_id          bigserial,
    galaxy_name        character varying(255) UNIQUE NOT NULL,
    galaxy_description text                          NOT NULL,
    PRIMARY KEY (galaxy_id)
);
CREATE TABLE IF NOT EXISTS orbit
(
    orbit_id     bigserial,
    orbit_level  integer NOT NULL,
    system_count integer NOT NULL,
    galaxy_id    bigint  NOT NULL,
    FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id) ON DELETE CASCADE,
    PRIMARY KEY (orbit_id)
);
CREATE TABLE IF NOT EXISTS star_system
(
    system_id       bigserial,
    system_position integer                       NOT NULL,
    system_level    integer                       NOT NULL,
    system_name     character varying(255) UNIQUE NOT NULL,
    orbit_id        bigint                        NOT NULL,
    FOREIGN KEY (orbit_id) REFERENCES orbit (orbit_id) ON DELETE CASCADE,
    PRIMARY KEY (system_id)
);
CREATE TABLE IF NOT EXISTS system_dependency
(
    dependency_id  bigserial,
    is_alternative boolean NOT NULL,
    child_id       integer,
    parent_id      integer,
    FOREIGN KEY (parent_id) REFERENCES star_system (system_id) ON DELETE CASCADE,
    FOREIGN KEY (child_id) REFERENCES star_system (system_id) ON DELETE CASCADE,
    PRIMARY KEY (dependency_id)
);