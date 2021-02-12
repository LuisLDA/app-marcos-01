package com.marcos.beans;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;

import com.marcos.dao.ServicioPersonaI;
import com.marcos.dto.Persona;

@Named("personaB")
@ViewScoped
public class PersonaBean implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<Persona> personas;
	private Persona persona;


	@Inject
	private ServicioPersonaI servicio;

	@PostConstruct
	public void init() {
		setPersona(new Persona());
		personas = servicio.listar();
	}

	public List<Persona> getPersonas() {
		return personas;
	}

	public void setPersonas(List<Persona> personas) {
		this.personas = personas;
	}



	public void deleteProduct() {

	}

	public Persona getPersona() {
		return persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}
}