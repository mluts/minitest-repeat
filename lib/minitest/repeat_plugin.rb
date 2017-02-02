module Minitest
  def self.plugin_repeat_init(*)
    instance_eval do
      alias :__orig_run :__run

      def __run(*args)
        @count.to_i.times { __orig_run(*args) }
      end
    end
  end

  def self.plugin_repeat_options(opts, *)
    opts.on '-c', '--count COUNT', Integer, 'Run tests COUNT times' do |c|
      @count = c.to_i
    end
  end
end
