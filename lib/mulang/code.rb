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

    def analysis(spec)
      { sample: sample, spec: spec }
    end

    def analyse(spec)
      Mulang.analyse analysis(spec)
    end
  end
end
