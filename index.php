<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <style>
            
            #task1{
                position: fixed;
                top:0px;                
                height :100%;
                width: 100%;
                background-color:#cc66ff ;
                
            }    
            #task2{
                position:fixed;
                top :50%;
                left:30%;
                height :100%;
                width: 100%;
                background-color:#ffcc66 ;
                
            }
            
        </style>
            
            
    </head>
    <body>
         <div id ="task1">
              
              <h1> Part 1 </h1>
              <h2> Odd Numbers Between 1-20 </h2>
        <?php
                  $start=1;
                  $y=0;
		  $end=20;
                  $total=0;
		  for ($i = $start ; $i <= $end; $i+=2) {
                   $odd= $start + $y ;
                   $y+=2;
                   echo"<ul><li>$odd</li></ul>";
                      $total+=$i;
                     
                  }
       		 echo " <p style =color:red >  The sum of Odd numbers is  $total </p>";
        ?>
               
          </div>
        <div id ="task2">
               <h1> Part 2 </h1>
              <h2> Multiplication table between 5 and 7 </h2>
            <?php             
                  echo "<table border='5' style=width:40%>";
                   for ($i = 1; $i < 6; $i++)  {
                   echo"<tr>";
                       
                      for ($j = 1; $j <8; $j++) {
                        echo " <td> ".$i * $j." </td> ";
                        
                      }
                        echo "</tr>"; 
                             
              }
              echo" </table>";
           
            ?>
            
            
        </div>
    </body>
    
</html>
