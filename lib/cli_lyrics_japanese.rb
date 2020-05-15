# frozen_string_literal: true

# converter module from path to url
module LyricsJapanese
  require 'lyrics_japanese'
  require 'optparse'
  require 'pathname'

  # command line wrapper
  class CliLyricsJapanese
    attr_accessor :params

    def initialize
      @params = {}
    end

    def parse_options
      OptionParser.new do |opts|
        opts = define_options(opts)
        opts.parse!(ARGV, into: @params)
      end
    end

    def run
      text = []
      if !ARGV.empty?
        File.open(ARGV[0]) do |file|
          text = file.each_line.to_a
        end
      else
        text = STDIN.each_line.to_a
      end
      lines = LyricsJapanese.new.to_lyricruby(text, ' ')
      puts lines.join("\n")
    end

    def define_options(opts)
      opts.version = VERSION
      opts.on_tail('-h', '--help', 'Show this message') do
        puts opts
        exit
      end
      opts.on_tail('-V', '--version', 'Show version') do
        puts opts.ver
        exit
      end
      opts.banner = <<~BANNER

        #{opts.ver}
        #{DESCRIPTION}
        Usage: #{opts.program_name}
      BANNER
      opts
    end
  end
end
