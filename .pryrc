begin
  require 'hirb'
rescue LoadError
  # Missing goodies, bummer
end

if defined? Hirb
  Pry.config.print = proc do |output, value, _pry_|
    Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value, _pry_)
  end

  Hirb.enable
end
