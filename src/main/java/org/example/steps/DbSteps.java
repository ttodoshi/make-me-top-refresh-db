package org.example.steps;

import org.apache.commons.io.FileUtils;
import org.example.db.Db;
import org.example.db.DbList;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.Jdbi;

import java.io.File;
import java.io.IOException;

public class DbSteps {
    public void refillDB(DbList db) throws IOException {
        Jdbi jdbi = Db.postgresDB(db.getDbName());
        try (Handle handle = jdbi.open()) {
            handle.createScript("DROP SCHEMA public CASCADE; CREATE SCHEMA public").execute();

            File create = new File("./src/main/resources/sql/" + db.getCreateQuery());
            String createQuery = FileUtils.readFileToString(create, "UTF-8");
            handle.createScript(createQuery).getStatements().forEach(
                    handle::execute
            );

            File insert = new File("./src/main/resources/sql/" + db.getInsertQuery());
            String insertQuery = FileUtils.readFileToString(insert, "UTF-8");
            handle.createScript(insertQuery).getStatements().forEach(
                    handle::execute
            );
        }
    }
}
