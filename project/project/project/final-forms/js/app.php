
<?php include '../Model/db_functions.php' ?>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script>
    var source = 0;
    var priority_1 = 0;
    var priority_2 = 0;
    var priority_3 = 0;

    function htmlFunc(id) {
        var html = '<div class="input-group-prepend">';
        html += '<span class="input-group-text">Source College</span> </div>';
        html += "<select class='browser-default custom-select' name='college-0' id='college-0'>".replace('0', id).replace('0', id);
        html += '<option selected>Open this select menu</option>';
        return html;
    }

    function addSource() {
        var id = document.getElementById("district-source").value;
        var html = htmlFunc('source');
        if (source === 0)
        {
            // do ajax here
            $.ajax({
                url:"./../hed/Model/db_functions.php",
                method: "POST",
                data:{id:id},
                dataType:"html",
                success:function(data) {
                    // console.log(data);
                    // for
                    html += data;
                    html += '</select>';
                    console.log(html);
                    $("#source").append(html);   
                }
            })
            
            source = 1;
        }

        else {
           // remove previous and add new
        }
    }

    function priority1() {
        if (priority_1 === 0)
        {
            var id = document.getElementById("district-1").value;
            var html = htmlFunc('1');
            // do ajax here
            $.ajax({
                url:"./../hed/Model/db_functions.php",
                method: "POST",
                data:{id:id},
                dataType:"html",
                success:function(data) {
                    
                    html += data;
                    html += '</select>';
                    console.log(html);
                    
                    $("#priority-1").append(html);
                    
                }

            })
            priority_1 = 1;
        }

        else {
            console.log('hamza');
            //remove old and append new
            
        }
            
        
    }

    function priority2() {
        if (priority_2 === 0)
        {
            var id = document.getElementById("district-2").value;
            var html = htmlFunc('2');

                // do ajax here
            $.ajax({
                url:"./../hed/Model/db_functions.php",
                method: "POST",
                data:{id:id},
                dataType:"html",
                success:function(data) {
                    
                    html += data;
                    html += '</select>';
                    console.log(html);
                    
                    $("#priority-2").append(html);
                    
                }

            })
                
            priority_2 = 1;
        }

        else {
            //remove old and append new
            
        }
    }

    function priority3() {
        if (priority_3 === 0)
        {
            var id = document.getElementById("district-3").value;
            var html = htmlFunc('3');

                // do ajax here
            $.ajax({
                url:"./../hed/Model/db_functions.php",
                method: "POST",
                data:{id:id},
                dataType:"html",
                success:function(data) {
                    
                    html += data;
                    html += '</select>';
                    console.log(html);
                    
                    $("#priority-3").append(html);
                    
                }

            })
                
            priority_3 = 1; 
        }

        else {
            //remove old and append new
            
        }
    }

</script>