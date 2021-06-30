<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>login</title>
		<link rel="stylesheet" href="style.css" />
	</head>
	<body>
		<div class="form anim">
			<div id="formContent">
				<!-- Tabs Titles -->
				<h2 class="active">Sign Up</h2>

				<!-- Icon -->
				<div class="fadeIn first">
					<img src="signup.png" id="icon" alt="" />
				</div>

				<!-- Login Form -->
				<form action="insert.php" id="formContent" method="POST">
					<input type="text" class="fadeIn second" name="username" placeholder="username" required/>
					
					<input type="email" class="fadeIn second" name="email" placeholder="email" required/>
					<input type="password" class="fadeIn third" name="password" placeholder="password" required/>
					<input type="tel" pattern="[0-9]{8}" id="tel" class="fadeIn third" name="tel" placeholder="tel" required />
					<input type="submit" class="fadeIn fourth" value="VALIDER" />
					<?php
                      if(isset($_GET['erreur'])){
                        $err = $_GET['erreur'];
                        if($err==1  )
                        echo "<p style='color:red;border-radius: 5px;
                         ; border: 2px red solid; background-color: rgb(243, 169, 169);margin-left: 34px; margin-right: 34px; padding-top: 15px; padding-bottom: 15px;
                         '  >username allready exist</p>";
                        
                        else if( $err==2  )
                        echo "<p style='color:red;border-radius: 5px;
                         ; border: 2px red solid; background-color: rgb(243, 169, 169);margin-left: 34px; margin-right: 34px; padding-top: 15px; padding-bottom: 15px;
                         '  >email allready  exist </p>";
                        
                        else if( $err==3 )
                        echo "<p style='color:red;border-radius: 5px;
                         ; border: 2px red solid; background-color: rgb(243, 169, 169);margin-left: 34px; margin-right: 34px; padding-top: 15px; padding-bottom: 15px;
                         '  > tel allready exist </p>";
                        }
                    ?> 
				</form>

				<!-- Remind Passowrd -->
				<div id="formFooter">
					<a class="underlineHover" href="login.php" style="color: rebeccapurple">Already a member</a>
				</div>
			</div>
		</div>
	</body>
</html>
