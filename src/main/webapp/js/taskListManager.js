$(function () {
    // highlight the overdue task
    $("#tableData .task-row").each(function () {

        var dueDateStr = $(this).find(".duedate").html();
        var dueDate = new Date(dueDateStr);
        if(dueDate.getTime() < new Date().getTime()) {
            $(this).find(".overdue").html("<span class='badge red'>1</span>");
        }
    });
});