package org.example.db;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public enum DbList {
    GALAXY_DB("galaxy_db", "galaxyCreate.sql", "galaxyInsert.sql"),
    PLANET_DB("planet_db", "planetCreate.sql", "planetInsert.sql"),
    AUTH_DB("auth_db", "authCreate.sql", "authInsert.sql"),
    COURSE_DB("course_db", "courseCreate.sql", "courseInsert.sql"),
    COURSE_REGISTRATION_DB("course_registration_db", "courseRegistrationCreate.sql", "courseRegistrationInsert.sql"),
    FEEDBACK_DB("feedback_db", "feedbackCreate.sql", "feedbackInsert.sql"),
    HOMEWORK_DB("homework_db", "homeworkCreate.sql", "homeworkInsert.sql"),
    PERSON_DB("person_db", "personCreate.sql", "personInsert.sql"),
    PROGRESS_DB("progress_db", "progressCreate.sql", "progressInsert.sql");

    private String dbName;
    private String createQuery;
    private String insertQuery;
}
