<?php
session_start();
if(isset($_POST['username']) && isset($_POST['password']) && isset($_POST['email']) && isset($_POST['tel']))
{
    // connexion à la base de données
    $db_username = "root";
    $db_password = "";
    $db_name     = "dd";
    $db_host     = "localhost";
    $db = mysqli_connect($db_host, $db_username, $db_password, $db_name)
           or die('could not connect to database');
    
    // on applique les deux fonctions mysqli_real_escape_string et htmlspecialchars
    // pour éliminer toute attaque de type injection SQL et XSS
    $username = mysqli_real_escape_string($db,htmlspecialchars($_POST['username'])); 
    $password = mysqli_real_escape_string($db,htmlspecialchars($_POST['password']));
    $email = mysqli_real_escape_string($db,htmlspecialchars($_POST['email']));
    $tel = mysqli_real_escape_string($db,htmlspecialchars($_POST['tel']));
    
    $requete = "SELECT count(*) FROM utilisateurn where 
              nom_utilisateur = '".$username."'";
           $exec_requete = mysqli_query($db,$requete);
           $reponse      = mysqli_fetch_array($exec_requete);
           $count = $reponse['count(*)'];
          if($count!=0) 
        {
          header('Location: signup.php?erreur=1'); 
        }
    $requete = "SELECT count(*) FROM utilisateurn where 
              email = '".$email."'";
           $exec_requete = mysqli_query($db,$requete);
           $reponse      = mysqli_fetch_array($exec_requete);
           $count1 = $reponse['count(*)'];
          if($count1!=0) 
        {
          header('Location: signup.php?erreur=2'); 
        } 
    $requete = "SELECT count(*) FROM utilisateurn where 
              tel = '".$tel."'";
           $exec_requete = mysqli_query($db,$requete);
           $reponse      = mysqli_fetch_array($exec_requete);
           $count2 = $reponse['count(*)'];
          if($count2!=0) 
        {
          header('Location: signup.php?erreur=3'); 
        }       
        if (($count==0)&&($count1==0)&&($count2==0) )
        { 
            $requete = "INSERT INTO `utilisateurn` (`nom_utilisateur`, `mot_de_passe`, `email`, `tel`) VALUES ('".$username."', '".$password."', '".$email."',  '".$tel."')";
            $exec_requete = mysqli_query($db,$requete);
            header('Location: login.php');
        }

}
else
{
   header('Location: signup.php');
}
mysqli_close($db); // fermer la connexion
?>