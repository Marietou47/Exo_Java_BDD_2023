<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>
import java.util.Scanner;

public class CarreEtoiles {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Entrez la taille du carré : ");
        int n = scanner.nextInt();

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print("*");
            }
            System.out.println();
        }

        scanner.close();
    }
}


<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*</br>**</br>***</br>****</br>*****</p>

import java.util.Scanner;

public class TriangleGauche {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Entrez la hauteur du triangle : ");
        int n = scanner.nextInt();

        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }

        scanner.close();
    }
}


<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>****</br>***</br>**</br>*</p>

import java.util.Scanner;

public class TriangleInverse {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Entrez la hauteur du triangle : ");
        int n = scanner.nextInt();

        for (int i = n; i >= 1; i--) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }

        scanner.close();
    }
}


<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>

public class Main {
    public static void main(String[] args) {
        
        int Val = 5;

        for (int i = 1; i <= Val; i++) {
            for (int j = 1; j <= Val - i; j++) {
                System.out.print(" ");
            }
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>

public class Main {
    public static void main(String[] args) {
        
        int Val = 5;

        for (int i = 1; i <= Val; i++) {
            for (int j = 1; j <= Val - i; j++) {
                System.out.print(" ");
            }
            for (int j = 1; j <= i * 2 - 1; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

public class Main {
    public static void main(String[] args) {
        
        int Val = 5;

        for (int i = 1; i <= Val; i++) {
            for (int j = 1; j <= Val - i; j++) {
                System.out.print(" ");
            }
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }

        for (int i = Val - 1; i >= 1; i--) {
            for (int j = 1; j <= Val - i; j++) {
                System.out.print(" ");
            }
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
public class Main {
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        System.out.print("Entrez la valeur : ");
        int Val = scanner.nextInt();

        for (int i = 1; i <= 5; i++) {
            System.out.println(Val + " x " + i + " = " + (Val * i));
        }

        scanner.close();
    }
}
<h2>Exercice supplémentaire : Compter de 1 à 10</h2>
<p>Écrire une boucle qui affiche les nombres de 1 à 10.</p>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Les boucles</title>
</head>
<body>
    <h1>Exercices sur les boucles en Java</h1>
    <p>Voici un exemple simple pour utiliser les boucles en Java. Cet exercice va vous permettre de comprendre comment faire un compte de 1 à 10.</p>

    <h2>Exercice 1 : Compter de 1 à 10</h2>
    <p>Écrivez un programme Java qui affiche les nombres de 1 à 10 :</p>
    <pre>
<%
    for (int i = 1; i <= 10; i++) {
        out.println(i + "<br>");
    }
%>
    </pre>
    <p>Ce code utilise une boucle `for` pour afficher les nombres de 1 à 10.</p>
</body>
</html>
