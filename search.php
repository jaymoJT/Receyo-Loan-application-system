<?php 
include 'includes/connect.php';
?>
                       

    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" class=" form-inline" method="POST">
                                
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Key word" name="id">
        </div>
                                                                
        <button class="btn search-btn" type="submit" name="search" ><i class="fa fa-search"></i>
        </button>
                       
    </form>


        <?php
                        
            if (isset($_POST['search'])) {

    $id = $_POST['id'];

    $sql = "SELECT id, name, phone, estate, app_date, mode, amount  FROM applications WHERE id = $id";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) 
                                    {
                                       echo "<table>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Name</th>
                                                    <th>phone</th>
                                                    <th>estate</th>
                                                    <th>app_date</th>
                                                    <th>mode</th>
                                                    <th>amount</th>
                                                </tr>";
                                        // output data of each row
                                            while($row = $result->fetch_assoc()) 
                                            {
                                                echo    "<tr><td>".
                                                            $row["id"].
                                                        "</td><td>".
                                                            $row["name"].
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


    # code...
}

 ;?>
                      
                            
                        