<?php 
include 'includes/head.php';
include 'includes/topbar.php';
include 'includes/menu.php';
include 'includes/connect.php';
?>



        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container"> 

                <div class="clearfix padding-top-40" >

                    <div class="col-md-12 single-property-content prp-style-1 ">
                        
                      <!--the div containing today's script-->
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">Loans Disbursed today</h1>
                                
                            </div>  
    
                            
                        <?php
                            $d = date("y/m/d");
                            $sql = "SELECT * FROM applications JOIN disbursed ON disbursed.id = applications.id WHERE app_date = '$d' ";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                echo "<table>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Email</>
                                                <th>phone</th>
                                                <th>estate</th>
                                                <th>Application date</th>
                                                <th>mode</th>
                                                <th>amount</th>
                                            </tr>";
                            // output data of each row
                                    while($row = $result->fetch_assoc()) {
                                echo    "<tr><td>".
                                                $row["id"].
                                        "</td><td>".
                                                $row["name"].
                                        "</td><td>".
                                                $row["email"].
                                        "</td><td>".
                                                $row["phone"].
                                        "</td><td>".
                                                $row["estate"].
                                        "</td><td>".
                                                $row["app_date"].
                                        "</td><td>".
                                                $row["mode"].
                                        "</td><td>".
                                                $row["amount"].                                    
                                        "</td></tr>";
                                         }
                                echo "</table>";
                                        }
                                    else {
                                echo "0 results";
                                         }
                                $conn->close();
                        ;?>

                        </div>
                    </div>

                    <!--Sidebar div containing search form-->
                                      
                    </div>
                </div>

            </div>
        </div>

<?php
include 'includes/bottomtab.php';
include 'includes/footer.php';
?>
