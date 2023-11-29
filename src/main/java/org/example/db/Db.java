package org.example.db;


import org.example.service.Config;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.postgres.PostgresPlugin;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;

public class Db {
    public static Config config = org.aeonbits.owner.ConfigFactory.create(Config.class);

    public static Jdbi postgresDB(String dbName) {
        return Jdbi.create(config.url() + dbName, config.user(), config.password())
                .installPlugin(new PostgresPlugin())
                .installPlugin(new SqlObjectPlugin());
    }
}
