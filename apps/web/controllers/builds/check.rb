module Web::Controllers::Builds
  class Check
    include Web::Action

    def call(params)
      Web::Logger.info params[:bro]
    end
  end
end
