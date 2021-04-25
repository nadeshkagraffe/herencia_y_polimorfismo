module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
    
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
     module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
end
class Mamiferos < Animal
end
class Insectos < Animal
end

class Pinguinos < Ave
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Volador, Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Herbivoro,
    Alimentacion::Carnivoro
end

class Perro < Mamiferos
    include Habilidades::Caminante, Alimentacion::Carnivoro
end
class Gato < Mamiferos
    include Habilidades::Caminante, Alimentacion::Carnivoro
end
class Vaca < Mamiferos
    include Habilidades::Caminante, Alimentacion::Herbivoro
end

class Mosca < Insectos
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Carnivoro, Alimentacion::Herbivoro
end

class Mariposa < Insectos
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
end
class Abeja < Insectos
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Herbivoro
end

pinguinos = Pinguinos.new('pinguinos')