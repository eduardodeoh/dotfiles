Pry.config.editor =  'vim'

#My pry is polite
Pry.config.hooks.add_hook(:after_session, :say_bye) do
  puts "bye bye"
end

# Prompt with ruby version
Pry.prompt = [proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]

#begin
#    require 'awesome_print' 
#      Pry.config.print = proc { |output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output) }
#rescue LoadError => err
#    puts "no awesome_print :("
#end

# Hirb for Tables
#begin
#  require 'hirb'
#  Hirb.enable
#  old_print = Pry.config.print
#  Pry.config.print = proc do |output, value|
#    Hirb::View.view_or_page_output(value) || old_print.call(output, value)
#  end
#rescue LoadError => err
#  puts "no hirb :("
#end
