module AdminsBackofficeHelper
    def translate_attribute(object = nil, method = nil)
        (object && method) ? object.model.human_attribute_name(method) : "informe os parâmetros corretamente!!"
    end
end
