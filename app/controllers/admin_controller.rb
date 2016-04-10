class AdminController < ApplicationController
  def nuevo
    nombre=params[:nombre]
    importe=params[:importe].to_i
    concepto=params[:concepto]
    procesador=params[:procesador]
    usuariosHash={}
    usuariosHash[:nombre]=nombre
    usuariosHash[:importe]=importe
    usuariosHash[:concepto]=concepto
    usuariosHash[:procesador]=procesador
    @usuario=Usuario.create(usuariosHash)
    render "pag_admin"
  end
    def listar
    @usuarios=Usuario.all
  end
  def borrar
    id=params[:id].to_i
    Usuario.delete id
    @usuarios=Usuario.all
    render "pag_admin"
  end
  def modificar
    id=params[:id].to_i
    nombreNuevo=params[:nombre]
    importeNuevo=params[:importe].to_i
    conceptoNuevo=params[:concepto]
    procesadorNuevo=params[:procesador]
    usuariosHash={}
    usuariosHash[:nombre]=nombreNuevo
    usuariosHash[:importe]=importeNuevo
    usuariosHash[:concepto]=conceptoNuevo
    usuariosHash[:procesador]=procesadorNuevo
    usuarioABuscar=Usuario.find id
    usuarioABuscar.update_attributes(usuariosHash)
    @usuarios=Usuario.all
    render "pag_admin"
  end
  def modificar_vista
    id=params[:id].to_i
    @usuario=Usuario.find id
  end
end
