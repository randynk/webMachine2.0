styles = open("go.css","a")
feuille = """
@media (min-width: 900px) {
	.boutonhaut{
		background-color: transparent;
		position: fixed;
		max-width: 30px;
		top: 12%;
		left: 1%;
		right: 0;
	}
	.boutonhaut img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.boutonbas{
		border: solid 2px transparent;
		position: fixed;
		max-width: 30px;
		bottom: 12%;
		left: 1%;
		right: 0;
	}
	.boutonbas img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.link{
		text-align: center;
		margin-left: 3%;
		margin-right: 0.5%;
		margin-top: 1.5px;
		min-width: 7%;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 18px;
    	color: black;
	}
	.fix{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		background-color: #edf9ff;
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
	}
	.fixe{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		font-size: 15px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		position: fixed;
		bottom: 0;
		left: 0;
		right: 0;
		background-color: #edf9ff;
	}
	.liens{
		width: 100%;
	}
	body{
		margin-top: 9%;
		margin-bottom: 12%;
		margin-left: 24px;
		background: linear-gradient(#edf9ff, #edf9ff, #edf9ff, #c9edff, #c0e4f6, #c3e0ef, #cae7f6, #edf9ff, #edf9ff, #edf9ff, #edf9ff);
	}
	b{
		color: black;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: normal;
		font-size: 27px;
	}
	.hea{
		width: 100%;
		text-align: right;
	}
	.titre{
		font-size: 33px;
		color: #00a8f3;
		font-family: segoe print;
		margin-left: 30%;
	}
	.researchs{
		width: 180px;
		text-align: center;
		height: 9px;
	}
	.researchs .fa{
		color: #097caf;
		font-size: 21px;
		cursor: pointer;
	}
	.entree{
		width: 252px;
		box-sizing: border-box;
		position: relative;
	}
	.input{
		width: 318px;
		border: 0;
		background: transparent;
		outline: none;
		box-sizing: border-box;
		padding: 0 20px 10px;
		border-bottom: 3px solid #097caf;
		color: #06364c;
		font-size: 20px;
		transition: all 0.5s ease;
		transform: scale(0);
		transform-origin: center;
	}
	#search{
		color: #097caf;
		position: relative;
		top: 18px;
		left: 45px;
		letter-spacing: 1px;
		transition: all 0.5s ease;
		opacity: 0;
	}
	.input.active{
		transform: scale(1);
	}
	#search.active{
		opacity: 1;
	}
	#search.move{
		top: 60px;
		left: 10px;
		font-size: 9px;
	}
	
	h1{
		color: #00a8f3;
		font-family: segoe print;
		font-weight: bold;
		font-size: 36px;
	}
	h2{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
	    
	}
	.rubric{
		text-align: left;
		max-height: 60px;
		max-width: 222px;
		margin-top: 5px;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 18px;
	}
	.rubrics{
		text-align: center;
		bottom: 0;
		margin-left: 0.25%;
		margin-right: 0.25%;
		width: 24%;
		height: auto;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 20px;
	}
	.rubricss{
		text-align: center;
		width: 48%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubricsss{
		text-align: right;
		margin-left: 1%;
		width: 24%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubrique{
		background-color: transparent;
		border-color: transparent;
		text-align: right;
	    margin-right: 1%;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 15px;	
	}
	.rubrique a:hover{
		border-bottom: 2px solid #097caf;
	}
	.droite{
		text-align: right;
		margin-left: 6%;
	}
	h4{
		text-align: center;
		font-size: 20px;
		font-style: italic;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #00a8f3;
	}
	h3{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	}
	.log{
		width: 60px;
		margin-left: 30px;
	}
	.contact{
		height: 30px;
		margin-left: 2%;
		margin-right: 2%;
		border-radius: 2%;
	}
	li{
		display: inline-block;
		list-style: none;
		margin: 1px;
	}
	.intitule{
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 14.1px;
		font-weight: bold;
		text-align: left;
	}
	a{
		text-decoration: none;
		color: black;
	}
	a:hover{
		color: #00a8f3;
	}
	.last{
		text-align: center;
	}
	.contacts{
		height: 39px;
		margin-left: 13.5%;
		margin-right: 4.5%;
	}
.contactez{
	box-shadow: 5px 5px 26px #358cb8;
	border: solid 1px #c4e6f8;
	backdrop-filter: blur(27px);
	border-radius: 30px;
	height: 36px;
	margin-left: 11%;
	margin-right: 11%;
	cursor: pointer;
}

	.apps{
		max-height: 30px;
	}
	.profil{
		height: 40px;
		border-radius: 30px;
	}
	.fresh{
		border-radius: 30px;
		margin-left: 5px;
		background-color: transparent;
		border-color: white;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
		color: black;
		font-size: 12px;
	}
	.mode{
		width: 147px;
		border-radius: 30px;
		background-color: transparent;
		border-color: white;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
		color: #00a8f3;
		font-size: 12px;
		margin-left: 3%;
		margin-right: 6%;
	}
	.horloge{
		margin-left: 3%;
		width: 141px;
		height: 40px;
		border-radius: 30px;
		background-color: white;
		border-color: #edf9ff;
		font-size: 15px;
	}
	.time{
		text-align: center;
		font-family: kristen itc;
		font-weight: bold;
		border-radius: 30px;
		border-color: white;
		background-color: #edf9ff;
		color: black;
		font-size: 15px;
		width: 120px;
	}
	.text{
		font-size: 21px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #142b34;
	}
	.text b{
		font-size: 24px;
		font-weight: bold;
		font-family: segoe print;
		color: #00a8f3;
	}
	.conteneur{
		max-width: 40%;
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}
	.card{
		box-shadow: 5px 5px 20px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		border-radius: 30px;
		padding: 1%;
	}
	.droites{
		margin-left: 51%;
	}
	.centres{
		margin-left: 30%;
	}
}
	
@media (min-width: 350px) and (max-width: 900px) {

	.boutonhaut{
		background-color: transparent;
		position: fixed;
		max-width: 30px;
		top: 10%;
		left: 1%;
		right: 0;
	}
	.boutonhaut img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.boutonbas{
		border: solid 2px transparent;
		position: fixed;
		max-width: 30px;
		bottom: 15%;
		left: 1%;
		right: 0;
	}
	.boutonbas img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.link{
		text-align: center;
		margin-left: 3%;
		margin-right: 0.5%;
		margin-top: 1.5px;
		min-width: 7%;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 15px;
    	color: black;
	}
	.fix{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		background-color: #edf9ff;
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
	}
	.fixe{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		font-size: 12px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		bottom: 0;
		left: 0;
		right: 0;
		background-color: #edf9ff;
	}
	.liens{
		width: 100%;
	}
	body{
		margin-top: 15%;
		background: linear-gradient(#edf9ff, #edf9ff, #edf9ff, #c9edff, #c0e4f6, #c3e0ef, #cae7f6, #edf9ff, #edf9ff, #edf9ff, #edf9ff);
	}
	b{
		color: black;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: normal;
	    font-size: 21px;
	}
	.hea{
		width: 100%;
	}
	.titre{
		font-size: 24px;
		color: #00a8f3;
		font-family: segoe print;
		margin-left: 24%;
	}
	.researchs{
		width: 0px;
		text-align: right;
		height: 0px;
	}
	.researchs .fa{
		color: #097caf;
		font-size: 0px;
		cursor: pointer;
	}
	.entree{
		width: 0px;
		box-sizing: border-box;
		position: relative;
	}
	.input{
		width: 0px;
		border: 0;
		background: transparent;
		outline: none;
		box-sizing: border-box;
		padding: 0 0 0;
		border-bottom: 0px solid #097caf;
		color: #06364c;
		font-size: 0px;
		transition: all 0 ease;
		transform: scale(0);
		transform-origin: center;
	}
	#search{
		color: #097caf;
		position: relative;
		font-size: 0px;
		top: 0px;
		left: 0;
		letter-spacing: 0px;
		transition: all 0s ease;
		opacity: 0;
	}
	.input.active{
		transform: scale(1);
	}
	#search.active{
		opacity: 0;
	}
	#search.move{
		top: 0px;
		left: 0px;
		font-size: 0px;
	}

	h1{
		color: #00a8f3;
		font-family: segoe print;
		font-weight: bold;
		font-size: 36px;
	}
	h2{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;	    
	}
	.rubric{
		font-weight: bold;	    
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 14.1px;
		max-width: 231px;
		margin-top: 6px;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
	}
	.rubrics{
		text-align: center;
		margin-left: 0.25%;
		margin-right: 0.25%;
		width: 30%;
		height: auto;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 20px;
	}
	.rubricss{
		text-align: center;
		width: 42%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubricsss{
		vertical-align: middle;
		text-align: right;
		margin-left: 0.25%;
		margin-right: 0.25%;
		width: 24%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubrique{
		background-color: transparent;
		border-color: transparent;
	    margin-right: 1%;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 12px;	
	}
	.rubrique a:hover{
		border-bottom: 2px solid #097caf;
	}
	.droite{
		text-align: right;
		margin-left: 3%;
	}
	h4{
		text-align: center;
		font-size: 14px;
		font-style: italic;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #00a8f3;
	}
	h3{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	}
	.log{
		width: 27px;
		margin-left: 15px;
	}
	.contact{
		min-width: 21px;
		max-width: 22.2px;
		height: auto;
		margin-left: 2%;
		margin-right: 2%;
		border-radius: 2%;
	}
	li{
		display: inline-block;
		list-style: none;
		margin: 1px;
	}
	.intitule{
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 12px;
		font-weight: bold;
		text-align: left;
	}
	a{
		text-decoration: none;
		color: black;
	}
	a:hover{
		color: #00a8f3;
	}
	.last{
		text-align: center;
	}
	.contacts{
		height: 36px;
		margin-left: 6.5%;
		margin-right: 2.5%;
	}
	.contactez{
		box-shadow: 5px 5px 26px #358cb8;
		border: solid 1px #c4e6f8;
		backdrop-filter: blur(27px);
		border-radius: 30px;
		height: 36px;
		margin-left: 6.6%;
		margin-right: 6.6%;
		cursor: pointer;
	}
	.apps{
		width: 66px;
		height: auto;
	}
	.profil{
		height: 40px;
		border-radius: 30px;
	}
	.text{
		font-size: 15px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #142b34;
	}
	.text b{
		font-size: 18px;
		font-weight: bold;
		font-family: segoe print;
		color: #00a8f3;
	}
	.conteneur{
		max-width: 72%;
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}
	.card{
		box-shadow: 5px 5px 20px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		border-radius: 30px;
		padding: 1%;
	}
	.droites{
		margin-left: 40%;
	}
	.centres{
		margin-left: 25%;
	}
}

@media (max-width: 350px) {
	.boutonhaut{
		background-color: transparent;
		position: fixed;
		max-width: 30px;
		top: 7%;
		left: 1%;
		right: 0;
	}
	.boutonhaut img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.boutonbas{
		border: solid 2px transparent;
		position: fixed;
		max-width: 30px;
		bottom: 10%;
		left: 1%;
		right: 0;
	}
	.boutonbas img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.link{
		text-align: center;
		margin-left: 3%;
		margin-right: 0.5%;
		margin-top: 1.5px;
		min-width: 7%;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 15px;
    	color: black;
	}
	.fix{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		background-color: #edf9ff;
		top: 0;
		left: 0;
		right: 0;
	}
	.fixe{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		font-size: 12px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		bottom: 0;
		left: 0;
		right: 0;
		background-color: #edf9ff;
	}
	.liens{
		width: 100%;
	}
	body{
		background: linear-gradient(#edf9ff, #edf9ff, #edf9ff, #c9edff, #c0e4f6, #c3e0ef, #cae7f6, #edf9ff, #edf9ff, #edf9ff, #edf9ff);
		font-size-adjust: none;
	}
	b{
		color: black;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: normal;
	    font-size: 21px;
	}
	.hea{
		width: 100%;
	}
	.titre{
		font-size: 21px;
		color: #00a8f3;
		font-family: segoe print;
		margin-left: 24%;
	}
	.researchs{
		width: 0px;
		text-align: right;
		height: 0px;
	}
	.researchs .fa{
		color: #097caf;
		font-size: 0px;
		cursor: pointer;
	}
	.entree{
		width: 0px;
		box-sizing: border-box;
		position: relative;
	}
	.input{
		width: 0px;
		border: 0;
		background: transparent;
		outline: none;
		box-sizing: border-box;
		padding: 0 0 0;
		border-bottom: 0px solid #097caf;
		color: #06364c;
		font-size: 0px;
		transition: all 0 ease;
		transform: scale(0);
		transform-origin: center;
	}
	#search{
		color: #097caf;
		position: relative;
		font-size: 0px;
		top: 0px;
		left: 0;
		letter-spacing: 0px;
		transition: all 0s ease;
		opacity: 0;
	}
	.input.active{
		transform: scale(1);
	}
	#search.active{
		opacity: 0;
	}
	#search.move{
		top: 0px;
		left: 0px;
		font-size: 0px;
	}

	h1{
		color: #00a8f3;
		font-family: segoe print;
		font-weight: bold;
		font-size: 36px;
	}
	h2{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;	    
	}
	.rubric{
		font-weight: bold;	    
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 14.1px;
		max-width: 231px;
		margin-top: 6px;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
	}
	.rubrics{
		text-align: center;
		margin-left: 0.25%;
		margin-right: 0.25%;
		width: 100%;
		height: auto;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 20px;
	}
	.rubricss{
		text-align: center;
		width: 100%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubricsss{
		text-align: center;
		width: 100%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubrique{
		background-color: transparent;
		border-color: transparent;
	    margin-right: 1%;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 12px;	
	}
	.rubrique a:hover{
		border-bottom: 2px solid #097caf;
	}
	.droite{
		text-align: right;
	}
	.full{
		width: 100%;
	}
	h4{
		text-align: center;
		font-size: 14px;
		font-style: italic;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #00a8f3;
	}
	h3{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	}
	.log{
		width: 39px;
		margin-left: 12px;
	}
	.contact{
		width: 12.5%;
		height: auto;
		margin-left: 12.5%;
		margin-right: 12.5%;
		border-radius: 6%;
	}
	li{
		display: inline-block;
		list-style: none;
		margin: 1px;
	}
	.intitule{
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 12px;
		font-weight: bold;
		text-align: left;
	}
	a{
		text-decoration: none;
		color: black;
	}
	a:hover{
		color: #00a8f3;
	}
	.last{
		text-align: center;
	}
	.contacts{
		width: 11%;
		margin-left: 11%;
		margin-right: 11%;
	}
	.contactez{
		box-shadow: 5px 5px 26px #358cb8;
		border: solid 1px #c4e6f8;
		backdrop-filter: blur(27px);
		border-radius: 30px;
		height: 30px;
		margin-left: 3%;
		margin-right: 3%;
		cursor: pointer;
	}

	.apps{
		width: 40%;
		height: auto;
		margin-left: 5%;
		margin-right: 5%;
	}
	.profil{
		height: 40px;
		border-radius: 30px;
	}
	.text{
		font-size: 12px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #142b34;
	}
	.text b{
		font-size: 12px;
		font-weight: bold;
		font-family: segoe print;
		color: #00a8f3;
	}
	.conteneur{
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}
	.card {
	  box-shadow: 5px 5px 20px #358cb8;
	  border: solid 2px #c4e6f8;
	  backdrop-filter: blur(24px);
	  border-radius: 30px;
	  padding: 1%;
	  margin: 2% 0;
	}

	.droites{
		margin-left: 45%;
	}
	.centres{
		margin-left: 30%;
	}
}
"""
write(styles, feuille)
close(styles)

styles = open("designed.css","a")
feuille = """.rubriques{
	background-color: transparent;
	border-color: skyblue;
	border-radius: 30px;
	text-align: center;
	color: #00a8f3;
	font-family: Microsoft JhengHei UI Light, Roboto;
	font-size: 15px;	
}
.rubriquess{
	background-color: transparent;
	border-color: transparent;
	text-align: center;
	color: #00a8f3;
	font-family: Microsoft JhengHei UI Light, Roboto;
    font-size: 14.1px;	
}
.para{
	cursor: pointer;
	color: #1e78a0;
	box-shadow: 5px 5px 26px #358cb8;
	border: solid 2px transparent;
	backdrop-filter: blur(27px);
	border-radius: 30px;
}
.un{
	max-width: 624px;
	text-align: center;
	color: #1e78a0;
	font-weight: bold;
	box-shadow: 5px 5px 26px #358cb8;
	border: solid 2px transparent;
	backdrop-filter: blur(27px);
	border-radius: 30px;
	background-color: #edf9ff;
}
.une{
	text-align: center;
	width: 150px;
	color: #1e78a0;
	font-size: 24px;
	font-weight: bold;
	font-family: segoe print;
	box-shadow: 5px 5px 26px #358cb8;
	border: solid 2px transparent;
	backdrop-filter: blur(27px);
	border-radius: 30px;
}
.titre{
	font-size: 36px;
	color: #00a8f3;
	font-family: segoe print, Microsoft JhengHei UI Light, Roboto;
	margin-left: 24%;
}
.centre{
	text-align: center;
	margin: 0;
}

@media (min-width: 900px) {
	.boutonhaut{
		background-color: transparent;
		position: fixed;
		max-width: 30px;
		top: 12%;
		left: 1%;
		right: 0;
	}
	.boutonhaut img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.boutonbas{
		border: solid 2px transparent;
		position: fixed;
		max-width: 30px;
		bottom: 12%;
		left: 1%;
		right: 0;
	}
	.boutonbas img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.link{
		text-align: center;
		margin-left: 3%;
		margin-right: 0.5%;
		margin-top: 1.5px;
		min-width: 7%;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 18px;
    	color: black;
	}
	.fix{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		background-color: #edf9ff;
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
	}
	.fixe{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		font-size: 15px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		position: fixed;
		bottom: 0;
		left: 0;
		right: 0;
		background-color: #edf9ff;
	}
	.liens{
		width: 100%;
	}
	body{
		margin-top: 9%;
		margin-bottom: 12%;
		margin-left: 24px;
		background: linear-gradient(#edf9ff, #edf9ff, #edf9ff, #c9edff, #c0e4f6, #c3e0ef, #cae7f6, #edf9ff, #edf9ff, #edf9ff, #edf9ff);
	}
	b{
		color: black;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: normal;
		font-size: 27px;
	}
	.hea{
		width: 100%;
		text-align: right;
	}
	.titre{
		font-size: 33px;
		color: #00a8f3;
		font-family: segoe print;
		margin-left: 30%;
	}
	.researchs{
		width: 180px;
		text-align: center;
		height: 9px;
	}
	.researchs .fa{
		color: #097caf;
		font-size: 21px;
		cursor: pointer;
	}
	.entree{
		width: 252px;
		box-sizing: border-box;
		position: relative;
	}
	.input{
		width: 318px;
		border: 0;
		background: transparent;
		outline: none;
		box-sizing: border-box;
		padding: 0 20px 10px;
		border-bottom: 3px solid #097caf;
		color: #06364c;
		font-size: 20px;
		transition: all 0.5s ease;
		transform: scale(0);
		transform-origin: center;
	}
	#search{
		color: #097caf;
		position: relative;
		top: 18px;
		left: 45px;
		letter-spacing: 1px;
		transition: all 0.5s ease;
		opacity: 0;
	}
	.input.active{
		transform: scale(1);
	}
	#search.active{
		opacity: 1;
	}
	#search.move{
		top: 60px;
		left: 10px;
		font-size: 9px;
	}
	
	h1{
		color: #00a8f3;
		font-family: segoe print;
		font-weight: bold;
		font-size: 36px;
	}
	h2{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
	    
	}
	.rubric{
		text-align: left;
		max-height: 60px;
		max-width: 222px;
		margin-top: 5px;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 18px;
	}
	.rubrics{
		text-align: center;
		bottom: 0;
		margin-left: 0.125%;
		margin-right: 0.125%;;
		width: 24%;
		height: auto;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 20px;
	}
	.rubricss{
		text-align: center;
		width: 48%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubricsss{
		text-align: right;
		margin-left: 1%;
		width: 24%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubrique{
		background-color: transparent;
		border-color: transparent;
		text-align: right;
	    margin-right: 1%;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 15px;	
	}
	.rubrique a:hover{
		border-bottom: 2px solid #097caf;
	}
	.droite{
		text-align: right;
		margin-left: 6%;
	}
	h4{
		text-align: center;
		font-size: 20px;
		font-style: italic;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #00a8f3;
	}
	h3{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	}
	.log{
		width: 60px;
		margin-left: 30px;
	}
	.contact{
		height: 30px;
		margin-left: 2%;
		margin-right: 2%;
		border-radius: 2%;
	}
	li{
		display: inline-block;
		list-style: none;
		margin: 1px;
	}
	.intitule{
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 14.1px;
		font-weight: bold;
		text-align: left;
	}
	a{
		text-decoration: none;
		color: black;
	}
	a:hover{
		color: #00a8f3;
	}
	.last{
		text-align: center;
	}
	.contacts{
		height: 39px;
		margin-left: 13.5%;
		margin-right: 4.5%;
	}
	.contactez{
		box-shadow: 5px 5px 26px #358cb8;
		border: solid 1px #c4e6f8;
		backdrop-filter: blur(27px);
		border-radius: 30px;
		height: 36px;
		margin-left: 11%;
		margin-right: 11%;
		cursor: pointer;
	}
	.apps{
		max-height: 30px;
	}
	.profil{
		height: 40px;
		border-radius: 30px;
	}
	.fresh{
		border-radius: 30px;
		margin-left: 5px;
		background-color: transparent;
		border-color: white;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
		color: black;
		font-size: 12px;
	}
	.mode{
		width: 147px;
		border-radius: 30px;
		background-color: transparent;
		border-color: white;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
		color: #00a8f3;
		font-size: 12px;
		margin-left: 3%;
		margin-right: 6%;
	}
	.horloge{
		margin-left: 3%;
		width: 141px;
		height: 40px;
		border-radius: 30px;
		background-color: white;
		border-color: #edf9ff;
		font-size: 15px;
	}
	.time{
		text-align: center;
		font-family: kristen itc;
		font-weight: bold;
		border-radius: 30px;
		border-color: white;
		background-color: #edf9ff;
		color: black;
		font-size: 15px;
		width: 120px;
	}
	.text{
		font-size: 21px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #142b34;
	}
	.text b{
		font-size: 24px;
		font-weight: bold;
		font-family: segoe print;
		color: #00a8f3;
	}
	.conteneur{
		max-width: 40%;
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}
	.card{
		box-shadow: 5px 5px 20px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		border-radius: 30px;
		padding: 3%;
	}
	.droites{
		margin-left: 15%;
	}
	.centres{
		margin-left: 5%;
	}
}

@media (min-width: 700px) and (max-width: 900px) {

.rubriques{
	background-color: transparent;
	border-color: skyblue;
	border-radius: 30px;
	text-align: center;
	color: #00a8f3;
	font-family: Microsoft JhengHei UI Light, Roboto;
	font-size: 11px;	
}
.rubriquess{
	background-color: transparent;
	border-color: transparent;
	text-align: center;
	color: #00a8f3;
	font-family: Microsoft JhengHei UI Light, Roboto;
    font-size: 11px;	
}
.para{
	cursor: pointer;
	color: #1e78a0;
	box-shadow: 5px 5px 26px #358cb8;
	border: solid 2px transparent;
	backdrop-filter: blur(27px);
	border-radius: 30px;
}
.un{
	max-width: 576px;
	text-align: center;
	color: #1e78a0;
	font-weight: bold;
	box-shadow: 5px 5px 26px #358cb8;
	border: solid 2px transparent;
	backdrop-filter: blur(27px);
	border-radius: 30px;
	background-color: #edf9ff;
}

	.boutonhaut{
		background-color: transparent;
		position: fixed;
		max-width: 30px;
		top: 10%;
		left: 1%;
		right: 0;
	}
	.boutonhaut img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.boutonbas{
		border: solid 2px transparent;
		position: fixed;
		max-width: 30px;
		bottom: 15%;
		left: 1%;
		right: 0;
	}
	.boutonbas img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.link{
		text-align: center;
		margin-left: 3%;
		margin-right: 0.5%;
		margin-top: 1.5px;
		min-width: 7%;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 15px;
    	color: black;
	}
	.fix{
		height: auto;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: 1px #c4e6f8;
		backdrop-filter: blur(24px);
		background-color: #edf9ff;
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
	}
	.fixe{
		max-height: 72px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		font-size: 12px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		bottom: 0;
		left: 0;
		right: 0;
		background-color: #edf9ff;
	}
	.liens{
		width: 100%;
	}
	body{
		background: linear-gradient(#edf9ff, #edf9ff, #edf9ff, #c9edff, #c0e4f6, #c3e0ef, #cae7f6, #edf9ff, #edf9ff, #edf9ff, #edf9ff);
		text-align: center;
	}
	b{
		color: black;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: normal;
	    font-size: 21px;
	}
	.hea{
		width: 100%;
	}
	.titre{
		font-size: 21px;
		color: #00a8f3;
		font-family: segoe print;
		margin-left: 12%;
	}
	.researchs{
		width: 0px;
		text-align: right;
		height: 0px;
	}
	.researchs .fa{
		color: #097caf;
		font-size: 0;
		cursor: pointer;
	}
	.entree{
		width: 0px;
		box-sizing: border-box;
		position: relative;
	}
	.input{
		width: px;
		border: 0;
		background: transparent;
		outline: none;
		box-sizing: border-box;
		padding: 0 0 0;
		border-bottom: 0px solid #097caf;
		color: #06364c;
		font-size:0px;
		transition: all 0s ease;
		transform: scale(0);
		transform-origin: center;
	}
	#search{
		color: #097caf;
		position: relative;
		font-size: 0px;
		top: px;
		left: 0;
		letter-spacing: 0px;
		transition: all 0s ease;
		opacity: 0;
	}
	.input.active{
		transform: scale(1);
	}
	#search.active{
		opacity: 0;
	}
	#search.move{
		top: 0px;
		left: 0px;
		font-size: 0px;
	}

	h1{
		color: #00a8f3;
		font-family: segoe print;
		font-weight: bold;
		font-size: 21px;
	}
	h2{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;	    
	}
	.rubric{
		font-weight: bold;	    
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 14.1px;
		max-width: 231px;
		margin-top: 6px;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
	}
	.rubrics{
		text-align: center;
		margin-left: 0.125%;
		margin-right: 0.125%;;
		width: 30%;
		height: auto;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 20px;
	}
	.rubricss{
		text-align: center;
		width: 42%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubricsss{
		vertical-align: middle;
		text-align: right;
		margin-left: 0.125%;
		margin-right: 0.125%;;
		width: 24%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubrique{
		background-color: transparent;
		border-color: transparent;
	    margin-right: 1%;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 12px;	
	}
	.rubrique a:hover{
		border-bottom: 2px solid #097caf;
	}
	.droite{
		text-align: right;
		margin-left: 15%;
	}
	h4{
		text-align: center;
		font-size: 14px;
		font-style: italic;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #00a8f3;
	}
	h3{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	}
	.log{
		width: 24px;
		margin-left: 15px;
	}
	.contact{
		min-width: 21px;
		max-width: 22.2px;
		height: auto;
		margin-left: 2%;
		margin-right: 2%;
		border-radius: 2%;
	}
	li{
		display: inline-block;
		list-style: none;
		margin: 1px;
	}
	.intitule{
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 12px;
		font-weight: bold;
		text-align: left;
	}
	a{
		text-decoration: none;
		color: black;
	}
	a:hover{
		color: #00a8f3;
	}
	.last{
		text-align: center;
	}
	.contacts{
		height: 36px;
		margin-left: 6.5%;
		margin-right: 2.5%;
	}
	.contactez{
		box-shadow: 5px 5px 26px #358cb8;
		border: solid 1px #c4e6f8;
		backdrop-filter: blur(27px);
		border-radius: 30px;
		height: 36px;
		margin-left: 6.6%;
		margin-right: 6.6%;
		cursor: pointer;
	}
	.apps{
		width: 66px;
		height: auto;
	}
	.profil{
		height: 40px;
		border-radius: 30px;
	}
	.text{
		font-size: 15px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #142b34;
	}
	.text b{
		font-size: 18px;
		font-weight: bold;
		font-family: segoe print;
		color: #00a8f3;
	}
	.conteneur{
		max-width: 72%;
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}
	.card{
		box-shadow: 5px 5px 20px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		border-radius: 30px;
		padding: 3%;
	}
	.droites{
		margin-left: 15%;
	}
	.centres{
		margin-left: 5%;
	}

}

@media (min-width: 400px) and (max-width: 700px){

.rubriques{
	background-color: transparent;
	border-color: skyblue;
	border-radius: 30px;
	text-align: center;
	color: #00a8f3;
	font-family: Microsoft JhengHei UI Light, Roboto;
	font-size: 11px;	
}
.rubriquess{
	background-color: transparent;
	border-color: transparent;
	text-align: center;
	color: #00a8f3;
	font-family: Microsoft JhengHei UI Light, Roboto;
    font-size: 11px;	
}
.para{
	cursor: pointer;
	color: #1e78a0;
	box-shadow: 5px 5px 26px #358cb8;
	border: solid 2px transparent;
	backdrop-filter: blur(27px);
	border-radius: 30px;
}
.un{
	max-width: 576px;
	text-align: center;
	color: #1e78a0;
	font-weight: bold;
	box-shadow: 5px 5px 26px #358cb8;
	border: solid 2px transparent;
	backdrop-filter: blur(27px);
	border-radius: 30px;
	background-color: #edf9ff;
}

	.boutonhaut{
		background-color: transparent;
		position: fixed;
		max-width: 30px;
		top: 10%;
		left: 1%;
		right: 0;
	}
	.boutonhaut img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.boutonbas{
		border: solid 2px transparent;
		position: fixed;
		max-width: 30px;
		bottom: 12%;
		left: 1%;
		right: 0;
	}
	.boutonbas img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.link{
		text-align: center;
		margin-left: 3%;
		margin-right: 0.5%;
		margin-top: 1.5px;
		min-width: 7%;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 15px;
    	color: black;
	}
	.fix{
		height: auto;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: 1px #c4e6f8;
		backdrop-filter: blur(24px);
		background-color: #edf9ff;
		top: 0;
		left: 0;
		right: 0;
	}
	.fixe{
		max-height: 72px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		font-size: 12px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		bottom: 0;
		left: 0;
		right: 0;
		background-color: #edf9ff;
	}
	.liens{
		width: 100%;
	}
	body{
		background: linear-gradient(#edf9ff, #edf9ff, #edf9ff, #c9edff, #c0e4f6, #c3e0ef, #cae7f6, #edf9ff, #edf9ff, #edf9ff, #edf9ff);
		text-align: center;
	}
	b{
		color: black;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: normal;
	    font-size: 21px;
	}
	.hea{
		width: 100%;
	}
	.titre{
		font-size: 21px;
		color: #00a8f3;
		font-family: segoe print;
		margin-left: 12%;
	}
	.researchs{
		width: 0px;
		text-align: right;
		height: 0px;
	}
	.researchs .fa{
		color: #097caf;
		font-size: 0;
		cursor: pointer;
	}
	.entree{
		width: 0px;
		box-sizing: border-box;
		position: relative;
	}
	.input{
		width: px;
		border: 0;
		background: transparent;
		outline: none;
		box-sizing: border-box;
		padding: 0 0 0;
		border-bottom: 0px solid #097caf;
		color: #06364c;
		font-size:0px;
		transition: all 0s ease;
		transform: scale(0);
		transform-origin: center;
	}
	#search{
		color: #097caf;
		position: relative;
		font-size: 0px;
		top: px;
		left: 0;
		letter-spacing: 0px;
		transition: all 0s ease;
		opacity: 0;
	}
	.input.active{
		transform: scale(1);
	}
	#search.active{
		opacity: 0;
	}
	#search.move{
		top: 0px;
		left: 0px;
		font-size: 0px;
	}

	h1{
		color: #00a8f3;
		font-family: segoe print;
		font-weight: bold;
		font-size: 21px;
	}
	h2{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;	    
	}
	.rubric{
		font-weight: bold;	    
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 14.1px;
		max-width: 231px;
		margin-top: 6px;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
	}
	.rubrics{
		text-align: center;
		margin-left: 0.125%;
		margin-right: 0.125%;;
		width: 30%;
		height: auto;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 20px;
	}
	.rubricss{
		text-align: center;
		width: 42%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubricsss{
		vertical-align: middle;
		text-align: right;
		margin-left: 0.125%;
		margin-right: 0.125%;;
		width: 24%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubrique{
		background-color: transparent;
		border-color: transparent;
	    margin-right: 1%;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 12px;	
	}
	.rubrique a:hover{
		border-bottom: 2px solid #097caf;
	}
	.droite{
		text-align: right;
		margin-left: 15%;
	}
	h4{
		text-align: center;
		font-size: 14px;
		font-style: italic;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #00a8f3;
	}
	h3{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	}
	.log{
		width: 24px;
		margin-left: 15px;
	}
	.contact{
		min-width: 21px;
		max-width: 22.2px;
		height: auto;
		margin-left: 2%;
		margin-right: 2%;
		border-radius: 2%;
	}
	li{
		display: inline-block;
		list-style: none;
		margin: 1px;
	}
	.intitule{
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 12px;
		font-weight: bold;
		text-align: left;
	}
	a{
		text-decoration: none;
		color: black;
	}
	a:hover{
		color: #00a8f3;
	}
	.last{
		text-align: center;
	}
	.contacts{
		height: 36px;
		margin-left: 6.5%;
		margin-right: 2.5%;
	}
	.contactez{
		box-shadow: 5px 5px 26px #358cb8;
		border: solid 1px #c4e6f8;
		backdrop-filter: blur(27px);
		border-radius: 30px;
		height: 36px;
		margin-left: 6.6%;
		margin-right: 6.6%;
		cursor: pointer;
	}
	.apps{
		width: 66px;
		height: auto;
	}
	.profil{
		height: 40px;
		border-radius: 30px;
	}
	.text{
		font-size: 15px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #142b34;
	}
	.text b{
		font-size: 18px;
		font-weight: bold;
		font-family: segoe print;
		color: #00a8f3;
	}
	.conteneur{
		max-width: 72%;
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}
	.card{
		box-shadow: 5px 5px 20px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		border-radius: 30px;
		padding: 3%;
	}
	.droites{
		margin-left: 15%;
	}
	.centres{
		margin-left: 5%;
	}
}

@media (max-width: 400px) {
	.boutonhaut{
		background-color: transparent;
		position: fixed;
		max-width: 30px;
		top: 10%;
		left: 1%;
		right: 0;
	}
	.boutonhaut img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.boutonbas{
		border: solid 2px transparent;
		position: fixed;
		max-width: 30px;
		bottom: 15%;
		left: 1%;
		right: 0;
	}
	.boutonbas img{
		height: 27px;
		border-radius: 30px;
		box-shadow: 0.5px 0.5px 26px #358cb8;
		backdrop-filter: blur(24px);
	}
	.link{
		text-align: center;
		margin-left: 3%;
		margin-right: 0.5%;
		margin-top: 1.5px;
		min-width: 7%;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 15px;
    	color: black;
	}
	.fix{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		background-color: #edf9ff;
		top: 0;
		left: 0;
		right: 0;
	}
	.fixe{
		box-shadow: 0.5px 0.5px 26px #358cb8;
		border: solid 2px #c4e6f8;
		backdrop-filter: blur(24px);
		font-size: 12px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		bottom: 0;
		left: 0;
		right: 0;
		background-color: #edf9ff;
	}
	.liens{
		width: 100%;
	}
	body{
		background: linear-gradient(#edf9ff, #edf9ff, #edf9ff, #c9edff, #c0e4f6, #c3e0ef, #cae7f6, #edf9ff, #edf9ff, #edf9ff, #edf9ff);
		font-size-adjust: none;
	}
	b{
		color: black;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: normal;
	    font-size: 21px;
	}
	.hea{
		width: 100%;
	}
	.titre{
		font-size: 21px;
		color: #00a8f3;
		font-family: segoe print;
		margin-left: 24%;
	}
	.researchs{
		width: 0px;
		text-align: right;
		height: 0px;
	}
	.researchs .fa{
		color: #097caf;
		font-size: 0px;
		cursor: pointer;
	}
	.entree{
		width: 0px;
		box-sizing: border-box;
		position: relative;
	}
	.input{
		width: 0px;
		border: 0;
		background: transparent;
		outline: none;
		box-sizing: border-box;
		padding: 0 0 0;
		border-bottom: 0px solid #097caf;
		color: #06364c;
		font-size: 0px;
		transition: all 0 ease;
		transform: scale(0);
		transform-origin: center;
	}
	#search{
		color: #097caf;
		position: relative;
		font-size: 0px;
		top: 0px;
		left: 0;
		letter-spacing: 0px;
		transition: all 0s ease;
		opacity: 0;
	}
	.input.active{
		transform: scale(1);
	}
	#search.active{
		opacity: 0;
	}
	#search.move{
		top: 0px;
		left: 0px;
		font-size: 0px;
	}

	h1{
		color: #00a8f3;
		font-family: segoe print;
		font-weight: bold;
		font-size: 36px;
	}
	h2{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;	    
	}
	.rubric{
		font-weight: bold;	    
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 14.1px;
		max-width: 231px;
		margin-top: 6px;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
	}
	.rubrics{
		text-align: center;
		margin-left: 0.25%;
		margin-right: 0.25%;
		width: 100%;
		height: auto;
		background-color: white;
		border-radius: 30px;
		border-color: skyblue;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-weight: bold;
	    font-size: 20px;
	}
	.rubricss{
		text-align: center;
		width: 100%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubricsss{
		text-align: center;
		width: 100%;
		height: auto;
		background-color: transparent;
		border-color: transparent;
	}
	.rubrique{
		background-color: transparent;
		border-color: transparent;
	    margin-right: 1%;
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	    font-size: 12px;	
	}
	.rubrique a:hover{
		border-bottom: 2px solid #097caf;
	}
	.droite{
		text-align: right;
	}
	.full{
		width: 100%;
	}
	h4{
		text-align: center;
		font-size: 14px;
		font-style: italic;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #00a8f3;
	}
	h3{
		color: #00a8f3;
		font-family: Microsoft JhengHei UI Light, Roboto;
	}
	.log{
		width: 39px;
		margin-left: 12px;
	}
	.contact{
		width: 12.5%;
		height: auto;
		margin-left: 12.5%;
		margin-right: 12.5%;
		border-radius: 6%;
	}
	li{
		display: inline-block;
		list-style: none;
		margin: 1px;
	}
	.intitule{
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-size: 12px;
		font-weight: bold;
		text-align: left;
	}
	a{
		text-decoration: none;
		color: black;
	}
	a:hover{
		color: #00a8f3;
	}
	.last{
		text-align: center;
	}
	.contacts{
		width: 11%;
		margin-left: 11%;
		margin-right: 11%;
	}
	.contactez{
		box-shadow: 5px 5px 26px #358cb8;
		border: solid 1px #c4e6f8;
		backdrop-filter: blur(27px);
		border-radius: 30px;
		height: 30px;
		margin-left: 3%;
		margin-right: 3%;
		cursor: pointer;
	}

	.apps{
		width: 40%;
		height: auto;
		margin-left: 5%;
		margin-right: 5%;
	}
	.profil{
		height: 40px;
		border-radius: 30px;
	}
	.text{
		font-size: 12px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: #142b34;
	}
	.text b{
		font-size: 12px;
		font-weight: bold;
		font-family: segoe print;
		color: #00a8f3;
	}
	.conteneur{
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}
	.card {
	  box-shadow: 5px 5px 20px #358cb8;
	  border: solid 2px #c4e6f8;
	  backdrop-filter: blur(24px);
	  border-radius: 30px;
	  padding: 1%;
	  margin: 2% 0;
	}

	.droites{
		margin-left: 45%;
	}
	.centres{
		margin-left: 30%;
	}
}"""
write(styles, feuille)
close(styles)
styles = open("design.css","a")
feuille = """@media (min-width: 900px){
	*{
		text-align: center;
	}
	.bouton{
		border-radius: 5px;
		border-color: transparent;
		background-color: transparent;
	}
	.produit{
		width: 17pc;
		border-radius: 30px;
	}
	.hauteurs{
		margin-left: 5px;
		margin-right: 5px;
		font-size: 15px;
		background-color: transparent;
		border-radius: 30px;
		height: 20px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
	}
	.haut{
		margin-left: 5px;
		margin-right: 5px;
		font-size: 15px;
		border-radius: 30px;
		background-color: skyblue;
		height: 20px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		min-width: 150px;
	}
	.hauteur{
		margin-left: 5px;
		margin-right: 5px;
		font-size: 18px;
		background-color: grey;
		border-radius: 30px;
		height: 20px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: white;
		}
	.bio{
		font-size: 18px;
		width: 220px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
	}
	.profil{
		width: 50px;
		height: auto;
		border-radius: 30px;
	}
	td .bio{
		text-align: left;
	}
}

@media (min-width: 350px) and (max-width: 900px) {
*{
	text-align: center;
}
.bouton{
	border-radius: 5px;
	border-color: transparent;
	background-color: transparent;
}
.produit{
	height: 180px;
	width: auto;
	border-radius: 5px;
}
.hauteurs{
	margin-left: 2.1px;
	margin-right: 2.1px;
	font-size: 9px;
	background-color: transparent;
	border-radius: 30px;
	height: 18px;
	font-family: Microsoft JhengHei UI Light, Roboto;
	font-weight: bold;
	width: auto;
}
.haut{
	margin-left: 2.1px;
	margin-right: 2.1px;
	font-size: 11px;
	border-radius: 30px;
	border: solid 2px #79d1f8;
	background-color: transparent;
	height: 18px;
	font-family: Microsoft JhengHei UI Light, Roboto;
	min-width: 108px;
	max-width: 135px;
}
.hauteur{
	margin-left: 5px;
	margin-right: 5px;
	font-size: 13px;
	border-radius: 30px;
	background-color: grey;
	min-height: 18px;
	font-family: Microsoft JhengHei UI Light, Roboto;
	color: white;
}
.bio{
	font-size: 18px;
	width: 220px;
	font-family: Microsoft JhengHei UI Light, Roboto;
	font-weight: bold;
}
.profil{
	width: 50px;
	height: auto;
	border-radius: 30px;
}
td .bio{
	text-align: left;
}
}

@media (max-width: 350px) {
	.bouton{
		border-radius: 20px;
		border-color: transparent;
		width: 90%;
		background-color: transparent;
	}
	.produit{
		width: 100%;
		height: auto;
		border-radius: 30px;
	}
	.hauteurs{
		margin-left: 2.1px;
		margin-right: 2.1px;
		font-size: 9px;
		background-color: transparent;
		border-radius: 30px;
		height: 18px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
		width: auto;
	}
	.haut{
		margin-left: 2.1px;
		margin-right: 2.1px;
		font-size: 11px;
		border-radius: 30px;
		border: solid 2px #79d1f8;
		background-color: transparent;
		height: 18px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		min-width: 120px;
		max-width: 135px;
	}
	.hauteur{
		margin-left: 5px;
		margin-right: 5px;
		font-size: 13px;
		border-radius: 30px;
		background-color: grey;
		min-height: 18px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		color: white;
	}
	.bio{
		font-size: 18px;
		width: 220px;
		font-family: Microsoft JhengHei UI Light, Roboto;
		font-weight: bold;
	}
	.profil{
		width: 50px;
		height: auto;
		border-radius: 30px;
	}
	td .bio{
		text-align: left;
	}
}
"""
write(styles, feuille)
close(styles)
styles = open("search.js","a")
feuille = """\n\$(document).ready(function(){\n    \$(".fa-search").click(function(){\n       \$(".input").toggleClass("active");\n       \$("#search").toggleClass("active");\n    });\n    \$(".input").focus(function(){\n       \$("#search").addClass("move");\n    });\n    \$(".input").focusout(function(){\n       \$("#search").removeClass("move");\n    });\n});\n\n"""
write(styles, feuille)
close(styles)
styles = open("contacts.css","a")
feuille = """@media (min-width: 900px){
	
.wrapper{
	background-color: transparent;
	position: fixed;
	max-width: 0;
	top: 0;
	left: 0;
	right: 0;
}

.search-box{
	width: 0;
	height: 0;
	position: relative;
}

.inputs{
	position: absolute;
	right: 0;
	top: 0;
	box-sizing: border-box;
	width: 0px;
	height: 0px;
	border: 0px solid #edf9ff;
	border-radius: 0;
	padding: 0 0;
	outline: none;
	font-size: 0;
	color: skyblue;
	transition: all 00s ease;
}

::-webkit-input-placeholder{
	color: #edf9ff;
}

::-moz-input-placeholder{
	color: #edf9ff;
}

:-ms-input-placeholder{
	color: #edf9ff;
}

.btn{
	position: absolute;
	width: 0;
	height: 0;
	border-radius: 0;
	right: 0;
	top: 0;
	cursor: pointer;
	text-align: center;
	line-height: 0;
	font-size: 0;
	color: skyblue;
	transition: all 0 ease;
}

.inputs.active{
	width: 0;
	height: 30;
	border: 20 solid transparent;
	background: transparent;
}

.click{
	height: 0;
	border-radius: 0;
}
.clicks{
	width: 0;
}	
}

@media (min-width: 700px) and (max-width: 900px){
	body{
		margin-top: 70px;
	}
.wrapper{
	background-color: transparent;
	position: fixed;
	max-width: 30px;
	top: 15%;
	left: 1%;
	right: 0;
}

.search-box{
	width: 50px;
	height: 450px;
	position: relative;
}

.inputs{
	position: absolute;
	right: 0;
	top: 50px;
	box-sizing: border-box;
	width: 0px;
	height: 0px;
	border: 0px solid #edf9ff;
	border-radius: 50px;
	padding: 0 21px;
	outline: none;
	font-size: 18px;
	color: skyblue;
	transition: all 0.8s ease;
}

::-webkit-input-placeholder{
	color: #edf9ff;
}

::-moz-input-placeholder{
	color: #edf9ff;
}

:-ms-input-placeholder{
	color: #edf9ff;
}

.btn{
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	right: 10px;
	top: 45px;
	cursor: pointer;
	text-align: center;
	line-height: 80px;
	font-size: 20px;
	color: skyblue;
	transition: all 0.8 ease;
}

.inputs.active{
	width: 50px;
	height: 300px;
	border: 2px solid transparent;
	background: transparent;
}

.click{
	height: 50px;
	border-radius: 30px;
}
.clicks{
	width: 800%;
}
}

@media (max-width: 700px){

.wrapper{
	background-color: transparent;
	position: fixed;
	max-width: 30px;
	top: 12%;
	left: 1%;
	right: 0;
}

.search-box{
	width: 50px;
	height: 450px;
	position: relative;
}

.inputs{
	position: absolute;
	right: 0;
	top: 50px;
	box-sizing: border-box;
	width: 0px;
	height: 0px;
	border: 0px solid #edf9ff;
	border-radius: 50px;
	padding: 0 21px;
	outline: none;
	font-size: 18px;
	color: skyblue;
	transition: all 0.8s ease;
}

::-webkit-input-placeholder{
	color: #edf9ff;
}

::-moz-input-placeholder{
	color: #edf9ff;
}

:-ms-input-placeholder{
	color: #edf9ff;
}

.btn{
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	right: 10px;
	top: 45px;
	cursor: pointer;
	text-align: center;
	line-height: 80px;
	font-size: 20px;
	color: skyblue;
	transition: all 0.8 ease;
}

.inputs.active{
	width: 50px;
	height: 300px;
	border: 2px solid transparent;
	background: transparent;
}

.click{
	height: 50px;
	border-radius: 30px;
}
.clicks{
	width: 800%;
}
}"""
write(styles, feuille)
close(styles)
styles = open("contacts.js","a")
feuille = """\$(document).ready(function(){\n    \$(".btn").click(function(){\n        \$(".inputs").toggleClass("active");\n    });\n});"""
write(styles, feuille)
close(styles)
styles = open("info","a")
write(styles, "\nnom du service\ntitre d'accueil\nmail\nwhatsapp\ntelegram\nmessenger\nnom du vendeur")
close(styles)

readyScripte = "les scripts js et les styles css sont aussi prêts !\n"
readyScripts = open("readyScript","a")
write(readyScripts, readyScripte)
close(readyScripts)
fichiers = open("readyScript","r")
    while !eof(fichiers)
        lettre = read(fichiers, Char)
        print("$lettre")
        sleep(0.015)
    end
close(fichiers)
while uppercase(readline()) != "C"
	println("Tapez la touche c puis valider sur ENTRER pour continuer s'il vous plaît\n")        
end