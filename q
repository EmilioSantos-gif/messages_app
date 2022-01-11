[33mcommit a7b70cf84fca8c0fb2d7370708f7a0754513fcd5[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Emilio Santos <emilioariel1018@hotmail.com>
Date:   Mon Jan 10 23:01:55 2022 -0400

    Conexion a base datos MySQL

[1mdiff --git a/pom.xml b/pom.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..2d49546[m
[1m--- /dev/null[m
[1m+++ b/pom.xml[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">[m
[32m+[m[32m    <modelVersion>4.0.0</modelVersion>[m
[32m+[m[32m    <groupId>com.mycompany</groupId>[m
[32m+[m[32m    <artifactId>mensajes_app</artifactId>[m
[32m+[m[32m    <version>1.0-SNAPSHOT</version>[m
[32m+[m[32m    <packaging>jar</packaging>[m
[32m+[m[32m    <properties>[m
[32m+[m[32m        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>[m
[32m+[m[32m        <maven.compiler.source>17</maven.compiler.source>[m
[32m+[m[32m        <maven.compiler.target>17</maven.compiler.target>[m
[32m+[m[32m    </properties>[m
[32m+[m[32m    <name>mensajes_app</name>[m
[32m+[m[32m    <dependencies>[m
[32m+[m[32m        <dependency>[m
[32m+[m[32m            <groupId>group.id</groupId>[m
[32m+[m[32m            <artifactId>artifact.id</artifactId>[m
[32m+[m[32m            <version>8.0.11</version>[m
[32m+[m[32m        </dependency>[m
[32m+[m[32m    </dependencies>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/src/main/java/com/mycompany/mensajes_app/Conexion.java b/src/main/java/com/mycompany/mensajes_app/Conexion.java[m
[1mnew file mode 100644[m
[1mindex 0000000..6e79b91[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/com/mycompany/mensajes_app/Conexion.java[m
[36m@@ -0,0 +1,28 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license[m
[32m+[m[32m * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template[m
[32m+[m[32m */[m
[32m+[m[32mpackage com.mycompany.mensajes_app;[m
[32m+[m[32mimport java.sql.Connection;[m
[32m+[m[32mimport java.sql.DriverManager;[m
[32m+[m[32mimport java.sql.SQLException;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author emili[m
[32m+[m[32m */[m
[32m+[m[32mpublic class Conexion {[m
[32m+[m[32m    public Connection get_connection(){[m
[32m+[m[32m        Connection connection = null;[m
[32m+[m[32m        try {[m
[32m+[m[32m            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mensajes_app","root","");[m
[32m+[m[32m            if (connection != null){[m
[32m+[m[32m                System.out.println("Conexion exitosa");[m
[32m+[m[32m            }[m
[32m+[m[32m        } catch(SQLException e){[m
[32m+[m[32m            System.out.println("Conexion fallida. Error:");[m
[32m+[m[32m            System.out.println(e);[m
[32m+[m[32m        }[m
[32m+[m[32m        return connection;[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/main/java/com/mycompany/mensajes_app/Inicio.java b/src/main/java/com/mycompany/mensajes_app/Inicio.java[m
[1mnew file mode 100644[m
[1mindex 0000000..2d4152b[m
[1m--- /dev/null[m
[1m+++ b/src/main/java/com/mycompany/mensajes_app/Inicio.java[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license[m
[32m+[m[32m * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template[m
[32m+[m[32m */[m
[32m+[m[32mpackage com.mycompany.mensajes_app;[m
[32m+[m[32mimport java.sql.Connection;[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author emili[m
[32m+[m[32m */[m
[32m+[m[32mpublic class Inicio {[m
[32m+[m[32m    public static void main(String[] args) {[m
[32m+[m[32m        Conexion conexion = new Conexion();[m
[32m+[m[41m        [m
[32m+[m[32m        try (Connection cnx = conexion.get_connection()){[m
[32m+[m[41m            [m
[32m+[m[32m        } catch(Exception e) {[m
[32m+[m[32m            System.out.println(e);[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/target/classes/.netbeans_automatic_build b/target/classes/.netbeans_automatic_build[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/target/classes/com/mycompany/mensajes_app/Conexion.class b/target/classes/com/mycompany/mensajes_app/Conexion.class[m
[1mnew file mode 100644[m
[1mindex 0000000..193fa03[m
Binary files /dev/null and b/target/classes/com/mycompany/mensajes_app/Conexion.class differ
[1mdiff --git a/target/classes/com/mycompany/mensajes_app/Inicio.class b/target/classes/com/mycompany/mensajes_app/Inicio.class[m
[1mnew file mode 100644[m
[1mindex 0000000..6e1a421[m
Binary files /dev/null and b/target/classes/com/mycompany/mensajes_app/Inicio.class differ
[1mdiff --git a/target/maven-status/maven-compiler-plugin/compile/default-compile/createdFiles.lst b/target/maven-status/maven-compiler-plugin/compile/default-compile/createdFiles.lst[m
[1mnew file mode 100644[m
[1mindex 0000000..0e15f67[m
[1m--- /dev/null[m
[1m+++ b/target/maven-status/maven-compiler-plugin/compile/default-compile/createdFiles.lst[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32mcom\mycompany\mavenproject1\Conexion.class[m
[32m+[m[32mcom\mycompany\mavenproject1\Inicio.class[m
[1mdiff --git a/target/maven-status/maven-compiler-plugin/compile/default-compile/inputFiles.lst b/target/maven-status/maven-compiler-plugin/compile/default-compile/inputFiles.lst[m
[1mnew file mode 100644[m
[1mindex 0000000..48dd05f[m
[1m--- /dev/null[m
[1m+++ b/target/maven-status/maven-compiler-plugin/compile/default-compile/inputFiles.lst[m
[36m@@ -0,0 +1,2 @@[m
[32m+[m[32mC:\Users\emili\Documents\NetBeansProjects\mavenproject1\src\main\java\com\mycompany\mavenproject1\Inicio.java[m
[32m+[m[32mC:\Users\emili\Documents\NetBeansProjects\mavenproject1\src\main\java\com\mycompany\mavenproject1\Conexion.java[m
[1mdiff --git a/target/test-classes/.netbeans_automatic_build b/target/test-classes/.netbeans_automatic_build[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
