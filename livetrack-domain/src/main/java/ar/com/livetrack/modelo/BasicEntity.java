package ar.com.livetrack.modelo;

import java.util.Date;

public class BasicEntity {
	
	private Long id;
	private Estado estado;
	private Date fechaEstado;
	
	public BasicEntity() {
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Estado getEstado() {
		return estado;
	}
	public void setEstado(Estado estado) {
		this.estado = estado;
	}
	public Date getFechaEstado() {
		return fechaEstado;
	}
	public void setFechaEstado(Date fechaEstado) {
		this.fechaEstado = fechaEstado;
	}
	
	
}
