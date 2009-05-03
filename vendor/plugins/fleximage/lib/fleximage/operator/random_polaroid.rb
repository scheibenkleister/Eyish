module Fleximage
  module Operator
    class RandomPolaroid < Operator::Base
      def operate
        @image = @image.polaroid(-5 + rand(11)) do
          self.shadow_color = "gray10"
        end
      end
    end
  end
end
