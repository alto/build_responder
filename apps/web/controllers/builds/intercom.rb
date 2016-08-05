module Web::Controllers::Builds
  class Check
    include Web::Action

    expose :text

    def call(params)
      self.format = :json
      message = params[:text]
      # puts "--------------------------- params"
      # puts params.inspect
      # puts "---------------------------"
      @text = case message.downcase
      when /signed up as a new user/
        ":disco:"
      end
    end
  end
end
