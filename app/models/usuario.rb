class Usuario < ActiveRecord::Base
    attr_accessor :nombre, :importe, :concepto, :procesador
end