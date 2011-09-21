//Passo 1 - Criar o objeto que representa a pessoa
var Pessoa = Class.create({
  initialize: function(nome,telefone,nascimento) {
    this.nome = nome;
	this.telefone = telefone;
	this.nascimento = nascimento;
  }
});

//2 - Criar a classe que vai encapsular a lógica
var FormPessoa = Class.create({
	initialize: function(div,lista){
		

		/* Inicio Passo 3 */
		var form  = new Element('form');
		var l_nome = new Element('label', {'id' : 'l_nome'}).update("Nome");
		var i_nome = new Element('input', {'type':'text' , 'id' : 'i_nome'});

		var l_telefone = new Element('label', {'id' : 'l_telefone'}).update("Telefone");
		var i_telefone = new Element('input', {'type':'text', 'id' : 'i_telefone'});

		var l_nascimento = new Element('label', {'id' : 'l_nascimento'}).update("Data de Nascimento");
		var i_nascimento = new Element('input', {'type':'text' , 'id' : 'i_nascimento'});
		
		var submit = new Element('input', {'type':'button','value':'ok'});
		
		
		form.appendChild(l_nome);
		form.appendChild(i_nome);
		form.appendChild(l_telefone);
		form.appendChild(i_telefone);
		form.appendChild(l_nascimento);
		form.appendChild(i_nascimento);
		form.appendChild(submit);

		$(div).appendChild(form);
		
		/* Fim Passo 3 */		
		
		/* passo 4 */
		submit.observe('click',this.enviar.bind(this));
		/* passo 8 */
		this.pessoas = new Array();

		this.lista = lista;
	},
	/* passo 6 */
	limpa : function(){
		['nome','telefone','nascimento'].each(function(e){
			$('i_' + e).removeClassName('error');
		});
	},
	/* passo 5 */
	enviar : function(){
		//5.1
		var errors = this.validacao();
		//6 
		this.limpa();
		if(errors.keys().size() > 0 ){
			str = '';
			errors.keys().each(function(e){
				str += errors.get(e) + "\n";
				//6
				$(e).addClassName('error');
			})
			alert(str);
		}else{
			//8
			this.add();
		}
		
	},
	/* passo 8 */
	add  : function(){
		p = new Pessoa(this.nome(),this.telefone(),this.nascimento());
		this.pessoas.push(p);
		this.mostra_lista();
	},
	/* passo 9 */
	mostra_lista : function(){
		$(this.lista).innerHTML = '';
		for(i = 0; i < this.pessoas.length; i++){
			$(this.lista).appendChild(this.cria_linha(p));
		}
	},
	
	/* passo 10 */
	cria_linha : function(p){
		var tr = new Element('tr');
		var td_nome = new Element('td').update(p.nome);
		var td_telefone = new Element('td').update(p.telefone);	
		var td_nascimento = new Element('td').update(p.nascimento);	
		
		tr.appendChild(td_nome);
		tr.appendChild(td_telefone);
		tr.appendChild(td_nascimento);		
		
		return tr;
	},
	/* 5.1 */
	validacao : function(){
		errors = new Hash();
		if(this.nome() == ''){
			errors.set('i_nome', 'Você deve preencher o nome');
		} 
		if(this.telefone() == ''){
			errors.set('i_telefone','Você deve preencher o telefone');
		} 
		if(this.nascimento() == ''){
			errors.set('i_nascimento','Você deve preencher a  data de nascimento');
		} 
		return errors;
	} ,
	/* 5.1.1 */
	nome : function(){
		return $('i_nome').value;
	},
	telefone : function(){
		return $('i_telefone').value;
	},
	nascimento : function(){
		return $('i_nascimento').value;
	}

});