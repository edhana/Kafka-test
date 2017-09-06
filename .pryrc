Pry.config.editor = 'atom'

# == Pry-Nav - Using pry as a debugger ==
Pry.commands.alias_command 'c', 'continue' rescue nil
Pry.commands.alias_command 's', 'step' rescue nil
Pry.commands.alias_command 'n', 'next' rescue nil

begin
  require 'rubygems'
  require 'awesome_print'
  require 'awesome_print_colors'

  # AwesomePrint.defaults={
  #               :theme=>:solorized,
  #               :indent => 2,
  #               :sort_keys => true,
  #               :color => {
  #                 :args       => :greenish,
  #                 :array      => :pale,
  #                 :bigdecimal => :blue,
  #                 :class      => :yellow,
  #                 :date       => :greenish,
  #                 :falseclass => :red,
  #                 :fixnum     => :blue,
  #                 :float      => :blue,
  #                 :hash       => :pale,
  #                 :keyword    => :cyan,
  #                 :method     => :purpleish,
  #                 :nilclass   => :red,
  #                 :string     => :yellowish,
  #                 :struct     => :pale,
  #                 :symbol     => :cyanish,
  #                 :time       => :greenish,
  #                 :trueclass  => :green,
  #                 :variable   => :cyanish
  #             }
  #          }



  AwesomePrint.defaults={:theme=>:solorized}

  # The following line enables awesome_print for all pry output,
  # and it also enables paging
  Pry.config.print = proc {|output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output)}

  # If you want awesome_print without automatic pagination, use the line below
  # Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "gem install awesome_print  # <-- highly recommended"
end
