class WelcomeController < ApplicationController
  def Index
  end
  def Quienes
  end
  def Productos
  end
  def Clientes
  end
  def Contacto
  end
  def Sedes
  end
  def contactar
     if contactar_params[:correo]
        correo = contactar_params[:correo]
        nombre = contactar_params[:nombre]
        mensaje = contactar_params[:mensaje]
        Contacto.enviar_contacto(correo,nombre,mensaje).deliver_now
     end
     redirect_to root_url       
  end
  private
  def contactar_params
    params.permit(:correo, :nombre, :mensaje)
  end 
end
