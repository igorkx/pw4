/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufms.model;

/**
 *
 * @author igor
 */
public class Noticias {
    private String id_noticia;
    private String titulo;
    private String texto;
	private String imagem;
         private String categoria;
         /** id_usuario - falata fazer chave estrangeira*/ 
        
       public String getId_noticia() {
		return id_noticia;
	}
	public void setId_noticia(String id_noticia) {
		this.id_noticia = id_noticia;
	}
        
        public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
        
        public String getTexto() {
		return texto;
	}
	public void setTexto(String vpf) {
		this.texto = texto;
	}
        
       
        public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
       
	public String getImagem() { 
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
}
