$(document).ready(function () {
    help_form_validation();
    $('#vota-artprize').submit(function (event) {
        ajax_submit($('#vota-artprize'));
        event.preventDefault();
    });
});

function ajax_submit(form) {

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