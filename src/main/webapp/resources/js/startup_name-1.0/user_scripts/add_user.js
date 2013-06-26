$(function() { // on document load
    $('#add_user_form').submit(function() { // set onsubmit event to the form
        $.ajax({
            url: '/startup_name/user/add',
            //---------------- /* FUCKING JS
            data:
                '{"username":"' + $("#username").val() + '",' +
                '"password":"' + $("#password").val() + '",' +
                '"role":{"roleId":1,"roleName":"ROLE_ADMINISTRATOR"},' +
                '"enabled":true}',
            //---------------- FUCKING JS */
            contentType : "application/json", // set recieving type - JSON in case of a question
            type:'POST', // set sending HTTP Request type
            async:false,
            success: function() { // callback method for further manipulations
                alert('user created');
            },
            error: function() { // if error occured
                alert('error');
            }
        });
        return false;
    });
});