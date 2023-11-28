package org.example.db;


import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.extension.ExtensionCallback;
import org.jdbi.v3.postgres.PostgresPlugin;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;
import org.example.service.Config;

public class Db {

    static Config config = org.aeonbits.owner.ConfigFactory.create(Config.class);
    public static Jdbi postgresDB(String dbName){
        return Jdbi.create(config.url()+dbName, config.user(), config.password())
                .installPlugin(new PostgresPlugin())
                .installPlugin(new SqlObjectPlugin());
    }

    public static <R, E, X extends Exception> R query(String dbName, Class<E> extensionType, ExtensionCallback<R, E, X> callback)
            throws X {
        R result = postgresDB(dbName).withExtension(extensionType, callback);
        return result;
    }
}
