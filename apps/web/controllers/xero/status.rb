module Web::Controllers::Xero
  class Status
    include Web::Action

    expose :text

    def call(params)
      self.format = :json
      puts "--------------------------- params"
      puts params.inspect
      puts "---------------------------"
      @text = 'thanks'
    end
  end
end
