$(()=>{

    let building = $("#building").html();
    $("#building").hide();

    $("#customer_id").change(function(){
        $("#building").show();
        let customer = $('#customer_id :selected').val();
        console.log(building)
        console.log(customer)
        let options = $(building).filter("optgroup[label='#{customer}']")
        options.html();
        console.log(options)
        $('#building_id').html(options)
        
        
    })

})