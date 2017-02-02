module Minitest
  def self.plugin_repeat_init(*)
    @count = 1

    return if respond_to?(:__orig_run)

    instance_eval do
      alias :__orig_run :__run

      def __run(*args)
        @count.times { __orig_run(*args) }
      end
    end
  end

  def self.plugin_repeat_options(opts, *)
    opts.on '-c', '--count COUNT', Integer, 'Run tests COUNT times' do |c|
      @count = c.to_i
    end
  end
end
