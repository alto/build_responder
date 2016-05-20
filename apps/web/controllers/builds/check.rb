module Web::Controllers::Builds
  class Check
    include Web::Action

    expose :text

    def call(params)
      self.format = :json
      build_message = params[:text]
      puts "--------------------------- params"
      puts params.inspect
      puts "---------------------------"
      @text = case build_message
      when /passed/
        ":disco:"
      when /failed/
        ":boo:"
      end
    end
  end
end
