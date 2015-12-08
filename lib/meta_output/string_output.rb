module MetaOutput
  module StringOutput
    def strip_string_attributes *attrs
      attrs.each do |attr|
        define_method(attr) do
          info = super()
          info.respond_to?(:strip) ? info.strip : info
        end
      end
    end
  end
end
