class Usuario < ActiveRecord::Base
    attr_accessor :id, :nombre, :importe, :concepto, :procesador
    id=@id
    nombre=@nombre
    importe=@importe
    concepto=@concepto
    procesador=@procesador
end