$(document).ready(function () {
    help_form_validation();
    ajax_submit();    
});

function ajax_submit(form) {
    var form = $('#vota-artprize');
    form.submit(function (event) {
        $.ajax({
            type: "POST",
            data: form.serialize(),
            url: form.attr("action"),
            success: function (data) {
                $('body').append(data);
            },
            error: function () {
                $('body').append("<div>sembra che qualcosa sia andato storto</div>");
            }
        }); 
        event.preventDefault();
    });
    
 }

/************ Funzioni di utilità per la validazione del form ************/
function help_form_validation() {
    help_rb_validation('RuleAcceptance');
    help_rb_validation('PrivacyRead');
 }

function help_rb_validation(input_name) {
    //imposta a true il valore della checkbox in modo da 
    //farla validare
    $('input[name="' + input_name + '"]:radio').change(function () {
        if ($('#' + input_name + '').attr('checked')) {
            $('#' + input_name + '').attr('value', 'true');    
        }
        else {
            $('#' + input_name + '').attr("value", "false");
        }
    })
}
/*************************************************************************/