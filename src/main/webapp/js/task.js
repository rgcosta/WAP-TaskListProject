$(function () {
    //display task form
    $("#btnAddTask").click(function displayForm() {
        $("#newTask").css("display", "block");
    });


    //Validate Form
    $("#saveTask").click(function (evt) {

        evt.preventDefault();
        $(".error").empty();
        var submitFlag = true;

        if ($("#task").val() === "") {
            $(".error").append("You must fill in the task field<br>");
            submitFlag = false;
        }

        if ($("#requiredby").val() === "") {
            $(".error").append("You must inform a due date<br>");
            submitFlag = false;
        }
        
        if ($("#category").val() === "") {
            $(".error").append("Select one category<br>");
            submitFlag = false;
        }

        if ($("#priority").val() === "") {
            $(".error").append("Select one priority<br>");
            submitFlag = false;
        }

        if (submitFlag)
            this.submit();

    });

    //Clear form fields
    $("#clearTask").click(function (evt) {

        evt.preventDefault();
        $("#task").val("");
        $("#requiredby").val("");
        $("#category").val("Personal");
    });

});