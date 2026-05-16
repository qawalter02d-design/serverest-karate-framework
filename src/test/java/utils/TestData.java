package utils;

import java.util.UUID;

public class TestData {

    // genera email único
    public static String randomEmail() {
        return "qa_" + UUID.randomUUID() + "@mail.com";
    }

    // genera nombre usuario
    public static String randomName() {
        return "User_" + UUID.randomUUID().toString().substring(0, 8);
    }

}
