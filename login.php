<html>
    <head>
        <meta charset="utf-8" />
        <!-- importer le fichier de style -->
        <link rel="stylesheet" href="style.css" media="screen" type="text/css" />
    </head>
    <body>
        <div id="container" class="form anim">
            <!-- zone de connexion -->
         
            <form action="verif.php" id="formContent" method="POST">
                <h1 class="active">Connexion</h1>
                <div class="fadeIn first">
                    <img src="login.png" id="icon" alt="" />
                </div>

                <input type="text" placeholder="username" name="username" required />

                <input type="password" placeholder="password" name="password" required />
                 <?php
                      if(isset($_GET['erreur'])){
                        $err = $_GET['erreur'];
                        if($err==1 || $err==2)
                        echo "<p style='color:red;border-radius: 5px;
                         ; border: 2px red solid; background-color: rgb(243, 169, 169);margin-left: 34px; margin-right: 34px; padding-top: 15px; padding-bottom: 15px;
                         '  >Utilisateur ou mot de passe incorrect</p>";
                        }
                    ?> 
                <input type="submit" id="submit" value="LOGIN" />
                
                <a class="underlineHover" href="signup.php" style="color: rebeccapurple">Dont have an account</a>
                <p></p>
                <p></p>
                   
            </form>
        </div>
    </body>
</html>