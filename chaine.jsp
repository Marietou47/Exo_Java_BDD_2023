<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Exercice Chaine</title>
</head>
<body>
    <%
        String bonjour = "salut la compagnie";
        String majuscules = bonjour.toUpperCase();

        String premiereLettreMajuscule(String str) {
            if (str == null || str.isEmpty()) return str;
            return str.substring(0, 1).toUpperCase() + str.substring(1).toLowerCase();
        }

        String capitalise = premiereLettreMajuscule(bonjour);
    %>

    <h2>Chaîne originale : <%= bonjour %></h2>
    <h2>En maj
