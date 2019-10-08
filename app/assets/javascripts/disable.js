$(document).on('turbolinks:load', function() {
    $('#any-date').on('click', function(){
        if($(this).prop('checked')){
            $('#date-select').attr('disabled', 'disabled').removeAttr('required');
        } else {
            $('#date-select').removeAttr('disabled').attr('required', 'required');
        }
    })
});