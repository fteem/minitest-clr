module Minitest
  def self.plugin_clr_options(opts, options)
    opts.on "-c", "--clr", "Colorize results" do
      options[:clr] = true
    end
  end

  def self.plugin_clr_init(options)
    io = Minitest::Clr.new(options[:io])
    self.reporter.reporters.grep(Minitest::Reporter).each do |rep|
      rep.io = io
    end
  end
end

