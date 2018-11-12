<? include 'includes/head.php';?>
<? include 'includes/topbar.php';?>
<?;include 'includes/menu.php';?>



             <form name="mpsForm" action="includes/teller_log_in.php" method="post" class="booking-form">			
					<div class="tm-form-inner">							
					    <div class="form-group" style="color:#000;">
                            <label>Username name</label>
                            <input type="text" class="form-control" name="name" placeholder="Your name">
                        </div>				
				        <div class="form-group" style="color:#000;">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password" placeholder="Your password">
                        </div>             
				        <div class="form-group tm-yellow-gradient-bg text-center">
						    <button type="submit" name="submit" value="send" class="button btn largesearch-btn">Submit</button>						            							            	
				        </div>
				        <div class="form-group tm-yellow-gradient-bg text-center">
						    <button type="reset" name="reset" value="Reset" class="button btn largesearch-btn" style="background-color:#4a763c; color:#fff;">Reset</button>						            							            	
				        </div>
                    </div>
			   </form>