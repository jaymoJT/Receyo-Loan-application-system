<?php

 include 'includes/head.php';
 include 'includes/topbar.php';
 include 'includes/menu.php';?>

<!-- results area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="clearfix padding-top-40" >
                    <div class="col-md-6 single-property-content prp-style-1 ">
                        
                        <div class="single-property-wrapper"> 
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">Loan application form</h1>
                                
                            </div>   
                            <?php include 'form.php'; ?>
                        </div>
                    </div>
                    <div class="col-md-6 p0">                        
                        
                        <?php include 'admin/search.php' ;?> 
                        
                    </div>                                                           
                    </div>
                </div>
            </div>
        </div>
<?php include 'includes/footer.php';?>