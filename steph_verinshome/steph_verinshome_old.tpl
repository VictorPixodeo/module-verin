<form id="r_m_content">
	<div class="row" id="v_c">
		<div class="col-lg-2">
			<div id="v_c_left">
		         <div class="radio under">
		         	<input type="radio" name="chape" value="soud" onclick="handleClick(this);">
		         </div>
		         <div class="radio">
		         	<input type="radio" name="chape" value="filt" onclick="handleClick(this);">
		         </div>
	      	</div>
		</div>
		<div class="col-lg-7" id="v_c_right">
			<div id="img_verin"></div>
		</div>
		<div class="col-lg-3">
			<div id="v_c_right_s">
				<div class="form-group">
					<label>longueur (en mm) :</label>
					<select class="form-control" name="longueur" id="longueur" onchange="longchange(this.options[this.selectedIndex].value,this.options[this.selectedIndex].text);">
					</select>
				</div>
				<div class="form-group">
					<label>course (en mm)</label>
					<select class="form-control" name="course" id="course"></select>
				</div>
				<div class="form-group">
					<label>Force (en N) :</label>
					<select class="form-control" name="force" id="force" onchange="show_verins();"></select>
				</div>
				<div class="form-group">
					<button onclick="show_verins();return false;" id="btn_ver_search" class="btn btn-orange opac" disabled> TROUVEZ UN VERIN </button>
				</div>
				<div class="form-group">
					 <button onclick="show_help();return false;" id="btn_ver_help" class="long btn btn-primary">CALCULATEUR DE FORCE</button>
				</div>
	         </div>
		</div> 
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div id="v_h" class="noshow">
				<div class="row">
					<div class="col-lg-12">
						<h4>D&eacute;terminer la force / pression du ressort &agrave; gaz</h4>
					</div>
				</div>
				<div class="row cn">
					<div class="col-lg-7 custom-label">
						nombre de ressorts:
					</div>
					<div class="col-lg-5 custom-value">
			   			<input type=text id="formn" />
			   			<span class="cn">N</span></strong>
					</div>
				</div>
				<div class="row cx">
					<div class="col-lg-7 custom-label">
						Poids(en Kg) de l'objet soulever
					</div>
					<div class="col-lg-5 custom-value">
						
			   			<input type=text id="formx" />
			   			<span class="cx"><strong>X</strong></span>
					</div>
				</div>
				<div class="row cy">
					<div class="col-lg-7 custom-label">
						longueur en m&egrave;tres du hayon / de l'objet
					</div>
					<div class="col-lg-5 custom-value">
			   			<input type=text id="formy" /><strong>
			   			<span class="cy"><strong>Y</strong></span>
					</div>
				</div>
				<div class="row cz">
					<div class="col-lg-7 custom-label">
						Distance en m&egrave;tres entre le point
					</div>
					<div class="col-lg-5 custom-value">
						<input type=text id="formz" />
			   			<span class="cz"><strong>Z</strong></span>
					</div>
				</div>
				<div class="row c-img">
					<div class="col-lg-7 custom-img">
						<img src="{$img_path}croquis_aide.gif" class="fright" />
					</div>
					<div class="col-lg-5 custom-button">
						<button onclick="calcfor();return false;">Calculer</button>
					</div>
				</div>
				<div class="row c-text">
					<div class="col-lg-7 custom-text">
						<h3>Force du ressort à gaz</h3>
						<p>Nous vous conseillons de rajouter 50 N à la valeur obtenue</p>
					</div>
					<div class="col-lg-5 custom-res">
						<input type=text id="formres" value="--" />
					</div>
				</div>
			</div>

			<div id="v_t" class="noshow"></div>
		</div>
	</div>
<form>