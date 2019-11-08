<?php 
    include ('./config.php');

    if (filter_has_var(INPUT_POST, 'submit')) {
        $teacher_id = $_POST['teacher_id'];
        $district_source = $_POST['district-source'];
        $college_source = $_POST['college-source'];
        $principal_1 = $_POST['principal_1'];
        $district_1 = $_POST['district-1'];
        $college_1 = $_POST['college-1'];
        $district_2 = $_POST['district-2'];
        $college_2 = $_POST['district-2'];
        $district_3 = $_POST['district-3'];
        $college_3 = $_POST['district-3'];
        
        if (!empty($teacher_id) && !empty($district_source) && !empty($college_source) && !empty($principal_1) && !empty($district_1) && !empty($college_1) && !empty($district_2) && !empty($college_2) && !empty($district_3) && !empty($college_3))
        {
            echo "submitted";
        }
    }

    

?>