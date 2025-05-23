<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrez la valeur de A : ");
        int A = scanner.nextInt();
        
        System.out.print("Entrez la valeur de B : ");
        int B = scanner.nextInt();
        
        System.out.print("Entrez la valeur de C : ");
        int C = scanner.nextInt();
        
        if ((C > A && C < B) || (C > B && C < A)) {
            System.out.println("Oui, C est compris entre A et B");
        } else {
            System.out.println("Non, C n'est pas compris entre A et B");
        }

        scanner.close();
    }
}
<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Entrez la valeur de A : ");
        int A = scanner.nextInt();
        
        System.out.print("Entrez la valeur de B : ");
        int B = scanner.nextInt();
        
        System.out.print("Entrez la valeur de C : ");
        int C = scanner.nextInt();
        
        if ((C > A && C < B) || (C > B && C < A)) {
            System.out.println("Oui, C est compris entre A et B");
        } else {
            System.out.println("Non, C n'est pas compris entre A et B");
        }

        scanner.close();
    }
}
<h1>Exercices sur les conditions</h1>
<p>Voici quelques exercices sur les conditions en Java. Bonne chance !</p>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Les conditions</title>
</head>
<body>
    <h1>Exercices sur les conditions en Java</h1>
    <p>Ce programme vérifie si un nombre est pair ou impair.</p>

    <h2>Exercice 1 : Vérification d'un nombre</h2>
    <p>Écrivez un programme Java qui vérifie si un nombre est pair ou impair :</p>
    <pre>
<%
    int number = 5; // Vous pouvez changer ce nombre
    if (number % 2 == 0) {
        out.println(number + " est pair.");
    } else {
        out.println(number + " est impair.");
    }
%>
    </pre>
    <p>Le programme utilise l'opérateur modulo `%` pour vérifier si le nombre est divisible par 2 (pair).</p>
</body>
</html>

