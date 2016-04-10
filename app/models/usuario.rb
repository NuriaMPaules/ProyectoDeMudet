class Usuario < ActiveRecord::Base
    #attr_accessor :id, :nombre, :importe, :concepto, :procesador
    def self.search(search)
      if search 
         where('usuario LIKE ?', "%#{search}%")
      else
        scoped
      end
    end
end