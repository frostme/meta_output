module MetaOutput
  module StringOutput
    def strip_string_attributes *attrs
      attrs.each do |attr|
        define_method(attr) do
          super.respond_to?(:strip) ? super.strip : super
        end
      end
    end
  end
end
