$(function () {
    $("#saveTeam").click(function (evt) {
        
        evt.preventDefault();
        $("#error").empty();
        var submitFlag = true;
        
        if ($("#teamName").val() === "" ) {
            console.log("inside");
            $("#error").append("You must provide a team name.<br>");
            submitFlag = false;
        }

        if ($("input[name=developer]:checked").val() === undefined) {
            console.log("inside2");
            $("#error").append("You must select at least one team member.<br>");
            submitFlag = false;
        }

        if (submitFlag)
            $("#teamForm").submit();
    });
});