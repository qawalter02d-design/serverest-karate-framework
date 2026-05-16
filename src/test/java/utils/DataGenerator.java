package utils;

import java.util.UUID;

/**
 * Clase utilitaria para generar datos de prueba dinámicos
 * Usado en tests Karate para evitar duplicación de datos
 */
public class DataGenerator {

    /**
     * Genera un email único para pruebas
     */
    public static String generateEmail() {
        return "qa_" + UUID.randomUUID() + "@mail.com";
    }

    /**
     * Genera un nombre de usuario dinámico
     */
    public static String generateName() {
        return "Usuario_" + UUID.randomUUID().toString().substring(0, 8);
    }
}