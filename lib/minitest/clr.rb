require_relative "colorize"

module Minitest
  class Clr
    attr_reader :io

    def initialize io
      @io = io
    end

    def print output
      output
    end

    def puts output = nil
      return io.puts if output.nil?

      if final_report?(output)
        io.puts final_report!(output)
      else
        io.puts output
      end
    end

    def method_missing(msg, *args) # :nodoc:
      io.send(msg, *args)
    end

    private

    def final_report?(output)
      output =~ /(\d+) runs, (\d+) assertions, (\d+) failures, (\d+) errors, (\d+) skips/
    end

    def final_report!(output)
      numbers = output.scan(/\d+/)
      "#{Colorize.blue(numbers[0])} runs, #{Colorize.green(numbers[1])} assertions, #{Colorize.red(numbers[2])} failures, #{Colorize.red(numbers[3])} errors, #{Colorize.yellow(numbers[4])} skips"
    end
  end
end

