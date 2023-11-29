package org.example.service;

@Config.Sources("file:src/main/resources/testConfig.properties")
public interface Config extends org.aeonbits.owner.Config {
    @Key("url")
    String url();

    @Key("user")
    String user();

    @Key("password")
    String password();
}