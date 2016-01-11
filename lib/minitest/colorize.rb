module Minitest
  class Colorize
    ESC    = "\e[0m"
    GREEN  = "\e[32m"
    BLUE   = "\e[34m"
    RED    = "\e[91m"
    YELLOW = "\e[93m"

    def self.green(string)
      "#{ESC}#{GREEN}#{string}#{ESC}"
    end

    def self.blue(string)
      "#{ESC}#{BLUE}#{string}#{ESC}"
    end

    def self.red(string)
      "#{ESC}#{RED}#{string}#{ESC}"
    end

    def self.yellow(string)
      "#{ESC}#{YELLOW}#{string}#{ESC}"
    end
  end
end
