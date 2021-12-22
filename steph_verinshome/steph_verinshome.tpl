<link rel="stylesheet" type="text/css" href="{$mod_path}/views/css/modal.css">
<link rel="stylesheet" type="text/css" href="{$mod_path}/views/css/front.css?t=222 }">
<div class="banner">
    <img src="{$img_path}filetees.png">
</div>
<div class="benefit">
    <div class="container">
        <div class="row">
            <div class="col">
                <img src="{$img_path}Path-3.png">
                <span>Paiement <br/>Sécurisé</span>
            </div>
            <div class="col">
                <img src="{$img_path}Group-10673.png">
                <span>Suivi de commande <br/>02 40 53 78 92</span>
            </div>
            <div class="col">
                <img src="{$img_path}Group-10675.png">
                <span>Numéro 1 sur la <br/>Qualité</span>
            </div>
            <div class="col">
                <img src="{$img_path}Group-10721.png">
                <span>Expédition dans la <br/>journée*</span>
            </div>
            <div class="col">
                <img src="{$img_path}Path-10074.png">
                <span>Stocks Permanents</span>
            </div>
        </div>
    </div>
</div>
<div class="content">
    <form id="r_m_content">
        <div class="row">
            <div class="col-lg-9">
                <div class="box-tab">
                    <ul>
                        <li id="tab_li_acier" class="current" data-tab="tab1"><a href="javascript:;">Ressort à Gaz
                                Acier</a></li>
                        <li id="tab_li_inox" data-tab="tab2"><a href="javascript:;">Ressort à Gaz Inox</a></li>
                    </ul>
                    <img src="{$img_path}Question.png" class="question">
                </div>
                <div class="choise-content current" id="tab1">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="thumbnail-choise"
                                 data-tab="thumbnail-choise-1"
                                 data-name="chape"
                                 value="soud"
                                 onclick="handleClick(this);"
                            >
                                <img src="{$img_path}Chape-soudé.png">
                            </div>
                            <div class="thumbnail-choise"
                                 data-tab="thumbnail-choise-2"
                                 data-name="chape"
                                 value="filt"
                                 onclick="handleClick(this);"
                            >
                                <img src="{$img_path}Chape-filtée.png">
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div id="tab_li_acier_tab">
                                <div class="thumbnail-show current">
                                    <img id="img_verin" src="{$img_path}Normal.png">
                                </div>
                                <div class="thumbnail-show" id="thumbnail-choise-1">
                                    <img src="{$img_path}Soude.png">
                                </div>
                                <div class="thumbnail-show" id="thumbnail-choise-2">
                                    <img src="{$img_path}Filtée.png">
                                </div>
                            </div>
                            <div id="tab_li_inox_tab" style="display:none;">
                                <div id="v_t" class="noshow"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="form-calculateur">
                    <div class="form-group">
                        <label>Longueur (en mm) :</label>
                        <select class="form-control" name="longueur" id="longueur"
                                onchange="longchange(this.options[this.selectedIndex].value,this.options[this.selectedIndex].text);">
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Course (en mm)</label>
                        <select class="form-control" name="course" id="course">
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Force (en N) :</label>
                        <select class="form-control" name="force" id="force" onchange="show_verins();">
                        </select>
                    </div>
                    <div class="form-group">
                        <button onclick="getActuators();" id="btn_ver_search" class="btn btn-orange opac" disabled="">
                            TROUVEZ UN VERIN
                        </button>
                    </div>
                    <div class="form-group">
                        <button onclick="show_help();return false;" id="btn_ver_help" class="long btn btn-primary">
                            CALCULATEUR DE FORCE
                        </button>
                    </div>
                    <button id="ajax">Ajaxxxxxxxxxxxx</button>
                </div>
            </div>
        </div>

    </form>
    <!-- Modal 1 -->
    <div class="modal fade poppup-calculer" id="v_h" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">

                    <div class="col-md-7">
                        <h5 class="modal-title title-poppup">Déterminer la force / pression du ressort à gaz</h5>
                    </div>
                    <div class="col-md-5">
                        <button type="button" class="close btn-close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="float-modal">
                        <div class="container">
                            <div class="content-modal">
                                <div class="content-poppup">
                                    <p>Nombre de ressorts :</p>
                                </div>
                                <div class="input-poppup">
                                    <input type="number" id="formn"> <span>N</span>
                                </div>
                            </div>
                            <div class="content-modal">
                                <div class="content-poppup">
                                    <p>Poids (en kg) de l'objet à soulever :</p>
                                </div>
                                <div class="input-poppup">
                                    <input type="number" id="formx"> <span>X</span>
                                </div>
                            </div>
                            <div class="content-modal">
                                <div class="content-poppup">
                                    <p>Longueur (en mètres) de l'objet :</p>
                                </div>
                                <div class="input-poppup">
                                    <input type="number" id="formy"> <span>Y</span>
                                </div>
                            </div>
                            <div class="content-modal">
                                <div class="content-poppup">
                                    <p>Bras de levier (en mètres) :</p>
                                </div>
                                <div class="input-poppup">
                                    <input type="number" id="formz"> <span>Z</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="image-poppup">
                    <div class="image">
                        <img src="{$img_path}Group-10715.png" alt="image-poppup-1">
                    </div>
                    <div class="button">
                        <button onclick="calcfor();return false;">
                            <p>Calculer</p>
                        </button>
                    </div>
                </div>
                <div class="footer-poppup">
                    <div class="float-footer-poppup">
                        <div class="footer-left">
                            <p>Force du ressort à gaz :</p>
                            <span>Nous vous conseillons de rajouter 50 N à la valeur obtenue</span>
                        </div>
                        <div class="footer-right">
                            <span id="formres">- -</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="{$mod_path}/views/js/jquery.min.js"></script>
<script type="text/javascript" src="{$mod_path}/views/js/bootstrap-slim.js"></script>
<script type="text/javascript" src="{$mod_path}/views/js/front.js?t={ time() }"></script>

{* Le script suivant s'occupe de tout l'ajax *}
<script>

    $('#ajax').on('click', function (e) {
        getActuators(e)
    })

    $('.thumbnail-choise').on('click', function(){
        getAvailableLengths()
    })

    function getActuators(e) {
        e.preventDefault()

        let springType = $('.current').attr('data-tab') === 'tab1' ? 'acier' : 'inox'
        let chape = $('.thumbnail-choise.current').attr('value')
        let course = $('#course option:selected').text()
        let actuatorLength = $('#longueur option:selected').text()
        let force = $('#force option:selected').text()

        $.ajax({
            type: 'POST',
            url: "{$link->getModuleLink('steph_verinshome', 'ajax'|escape:'html':'UTF-8')}",
            data: 'method=getActuators&spring=' + springType + '&chape=' + chape + '&course=' + course + '&length=' + actuatorLength + '&force=' + force,
            dataType: 'json',
            cache: false,
            success: function (result) {
                console.log(result);
            }
        });
    }

    function getAvailableLengths() {
        let springType = $('.current').attr('data-tab') === 'tab1' ? 'acier' : 'inox'
        let chape = $('.thumbnail-choise.current').attr('value')

        $.ajax({
            type: 'POST',
            url: "{$link->getModuleLink('steph_verinshome', 'ajax'|escape:'html':'UTF-8')}",
            data: 'method=getAvailableLengths&spring=' + springType + '&chape=' + chape,
            dataType: 'json',
            cache: false,
            success: function (result) {
                console.log(result);
            }
        });
    }

</script>
