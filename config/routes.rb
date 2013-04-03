EmberRailsAPI::Application.routes.draw do
  class FormatTest
    attr_accessor :mime_type

    def initialize(format)
      @mime_type = Mime::Type.lookup_by_extension(format)
    end

    def matches?(request)
      request.format == mime_type
    end
  end

  resources   :users, :except => :edit,       :constraints => FormatTest.new(:json)
  get '*foo', :to => 'application#index',     :constraints => FormatTest.new(:html)

  root to: 'application#index'
  # get '/',    :to => 'application#index',     :constraints => FormatTest.new(:html)
end
