module Mulang
  class Code
    def initialize(language, content)
      @language = language
      @content  = content
    end

    def ast
      @language.ast @content
    end

    def sample
      @language.sample @content
    end
  end
end
