$(function () {
    // highlight the overdue task
    $("#tableData .task-row").each(function () {

        var dueDateStr = $(this).find(".duedate").html();
        var dueDate = new Date(dueDateStr);
        if(dueDate.getTime() < new Date().getTime()) {
            $(this).find(".overdue").html("<span class='badge red'>1</span>");
        }
    });

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