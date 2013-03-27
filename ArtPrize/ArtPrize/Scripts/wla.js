$(document).ready(function () {
    $("#User_Birthday").datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: "dd/mm/yy",
        yearRange: "-100:-18",
        monthNamesShort: ["Gen", "Feb", "Mar", "Apr", "Mag", "Giu", "Lug", "Ago", "Set", "Ott", "Nov", "Dic"],
        dayNamesMin: [ "Do", "Lu", "Ma", "Me", "Gi", "Ve", "Sa"]
    });
    enable_custom_validation();
    

    $('#vota-artprize').validate();
    ajax_submit();
});

function enable_custom_validation() {
 
    jQuery.validator.addMethod(
        "dateIT",
        function (value, element) {
            var check = false;
            var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
            if (re.test(value)) {
                var adata = value.split('/');
                var dd = parseInt(adata[0], 10); // was gg (giorno / day)
                var mm = parseInt(adata[1], 10); // was mm (mese / month)
                var yyyy = parseInt(adata[2], 10); // was aaaa (anno / year)
                var xdata = new Date(yyyy, mm - 1, dd);
                if ((xdata.getFullYear() == yyyy) && (xdata.getMonth() == mm - 1) && (xdata.getDate() == dd))
                    check = true;
                else
                    check = false;
            } else
                check = false;
            return this.optional(element) || check;
        },
        "La data inserita non è valida."
    );

    
    jQuery.validator.addMethod(
        "isTrue",
        function (value, element) {
            return value == "true";            
        },
        "Accetta!!"
    );

        jQuery.validator.addMethod(
        "selected",
        function (value, element) {            
            return value != "";
        },
        "Devi selezionare la provincia."
    );

 }

function ajax_submit(form) {
    var form = $('#vota-artprize');
    form.submit(function (event) {
        if (form.valid()) {
            $.ajax({
                type: "POST",
                data: form.serialize(),
                url: form.attr("action"),
                success: function (data) {

                    var result = $(data).attr('data-result');

                    $('body').append(data);

                    var action = null;

                    if (result == 'Ok' || result == "AlreadyRegistered")
                        action = function () { window.location = redirectUrl; }
                    else 
                        action = function () { }                    

                    $('.modal').dialog({
                        modal: true,
                        close: function (event, ui) {
                            action();
                        }
                    });

                    $('.dialog-wrap a.close').click(function () {
                        $('.modal').dialog('close');
                    });

                    Recaptcha.reload();
                },
                error: function () {
                    $('body').append('<div class="modal error" data-result="Error"><div class="dialog-wrap"><a class="close" href="#close" title="chiudi"><img src="<%= ConfigurationManager.AppSettings["BasePath"] %>"/img/icon-close.gif" alt="chiudi" /></a><h3>Siamo spiacenti</h3><p>Non è stato possibile completare l\'operazione di voto, riprova in seguito.</p></div><!--/dialog-wrap--></div><!--modal-->');
                    
                    $('.modal').dialog({
                        modal: true                        
                    });

                    $('.dialog-wrap a.close').click(function () {
                        $('.modal').dialog('close');
                    });

                    Recaptcha.reload();
                }
            });
            event.preventDefault();
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