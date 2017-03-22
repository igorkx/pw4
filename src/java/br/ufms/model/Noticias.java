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
    private int id_noticia;
    private String titulo;
    private String texto;
	private String imagem;
         private String categoria;
         private int id_usuario;
         /** id_usuario - falata fazer chave estrangeira*/ 
        
        
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

    /**
     * @return the id_noticia
     */
    public int getId_noticia() {
        return id_noticia;
    }

    /**
     * @param id_noticia the id_noticia to set
     */
    public void setId_noticia(int id_noticia) {
        this.id_noticia = id_noticia;
    }

    /**
     * @return the id_usuario
     */
    public int getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }
}
