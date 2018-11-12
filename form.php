

           <form name="mpsForm" action="includes/registration.php" method="post" class="booking-form">			
					<div class="tm-form-inner">
					    <div class="form-group" style="color:#000;">
                            <label>Applicant's ID number</label>
                            <input type="text" class="form-control" name="id" placeholder="Your name">
                        </div>								
					    <div class="form-group" style="color:#000;">
                            <label>Applicant's name</label>
                            <input type="text" class="form-control" name="applicant" placeholder="Your name">
                        </div>	
				        <div class="form-group" style="color:#000;">
                            <label>Applicant's email address</label>
                            <input type="text" class="form-control" name="email" placeholder="Your email address">
                        </div>           
                        <div class="form-group" style="color:#000;">
                            <label>Phone number</label>
                            <input type="text" class="form-control" name="phone" placeholder="Enter your phone number">
                        </div>                                                             
                        <div class="form-group" style="color:#000;">
                            <label>Estate</label>
                            <input type="text" class="form-control" name="estate" placeholder="Enter your country of origin">
                        </div>
                        <div class="form-group" style="color:#000;">
		                    <label>Application date</label>
				                <div class='input-group date' id='datetimepicker2'>
							        <input name="date" type="date">
				                </div>
			            </div>
                        
                        	<label style="color:#000;">Pay mode</label>
                        	<select name="mode" class="selectpicker show-tick form-control">
                        		<option> </option>
                                <option style="color:#000;">Weekly</option>
                                <option style="color:#000;">Monthly</option>
                                 
                            </select>                                                            
				        <div class="form-group margin-bottom-0" style="color:#000;">
					       <label>Amount </label>
					       <input type="text" class="form-control" name="amount" placeholder="Enter amount applying for">	           
					    </div>						    						            			  
                          
				        <div class="form-group tm-yellow-gradient-bg text-center">
						    <button type="submit" name="submit" value="send" class="button btn largesearch-btn">Submit</button>						            							            	
				        </div>
				        <div class="form-group tm-yellow-gradient-bg text-center">
						    <button type="reset" name="reset" value="Reset" class="button btn largesearch-btn" style="background-color:#4a763c; color:#fff;">Reset</button>						            							            	
				        </div>
                    </div>
			   </form>