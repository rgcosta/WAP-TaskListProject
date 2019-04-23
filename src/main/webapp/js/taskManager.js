$(function () {
    //Validate Task Form
    console.log("log");
    $("#saveTask").click(function (evt) {

        evt.preventDefault();
        $(".error").empty();
        var submitFlag = true;

        if ($("#title").val() === "") {
            $(".error").append("You must fill in the task field<br>");
            submitFlag = false;
        }

        if ($("#dueDate").val() === "") {
            $(".error").append("You must inform a due date<br>");
            submitFlag = false;
        }

        if ($("input[name=priority]:checked").val() === undefined) {
            $(".error").append("Select one category<br>");
            submitFlag = false;
        }

        if ($("input[name=category]:checked").val() === undefined) {
            $(".error").append("Select one priority<br>");
            submitFlag = false;
        }


        console.log();
        if ($("input[name=category]:checked").val() === "PERSONAL") {
            if ($("#developer").val() === "") {
                $(".error").append("You must select one developer from the list<br>");
                submitFlag = false;
            }
        } else if ($("input[name=category]:checked").val() === "TEAM") {
            if ($("#developer").val() === "") {
                console.log(1);
                $(".error").append("You must select one developer from the list<br>");
                submitFlag = false;
            }

            console.log(2);
            if ($("#team").val() === "") {
                console.log(3);
                $(".error").append("You must select one team from the list<br>");
                submitFlag = false;
            }
        }

        if (submitFlag) {
            $("#taskForm").submit();
        }

    });

    //Change fields according to the category selected
    $("input[name=category]").change(function () {
        if ($(this).val() === "PERSONAL") {
            $("#teamLabel").hide();
            $("#team").hide();
        } else if ($(this).val() === "TEAM") {
            $("#teamLabel").show();
            $("#team").show();
        }
    });

    // Clear form fields
    $("#clearTask").click(function (evt) {

        evt.preventDefault();
        $("#title").val("");
        $("#dueDate").val("");
        $("input[name=priority]").attr('checked', false);
        $("input[name=category]").attr('checked', false);
        $("#developer").val("");
        $("#team").val("");
        $("#finishDate").val("");
        $("input[name=rate]").attr('checked', false);

    });

    //highlight the overdue task
    // $("#tblTasks .task-row").each(function () {
    //
    //     var dueDateStr = $(this).find(".duedate").html();
    //     var dueDate = new Date(dueDateStr);
    //     if(dueDate.getTime() < new Date().getTime()) {
    //         $(this).css("background-color", "#F17060");
    //     }
    // });

    // $(".doneTask").each(function () {
    //     var button = $(this);
    //     $(this).click(function (evt) {
    //         evt.preventDefault();
    //
    //         var taskId = $(this).attr("href").match(/done=([^&]+)/)[1];
    //         //
    //         // $(this).parents("tr").remove();
    //
    //         $.ajax("/task/" + taskId + "/done", { "type": "POST", "id": taskId})
    //             .done(function () {
    //                 $(this).parents("tr").remove();
    //             })
    //             .fail(function () {
    //                 alert("It was not possible to mark the task as completed. Try again.")
    //             });
    //     });
    // });
});