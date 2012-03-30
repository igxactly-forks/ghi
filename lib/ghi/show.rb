module GHI
  class Show
    def self.options
      OptionParser.new do |opts|
        opts.banner = 'usage: ghi show <issueno>'
        opts.separator ''
      end
    end

    def self.execute args
      options.parse! args.empty? ? ['-h'] : args
    end
  end
end
