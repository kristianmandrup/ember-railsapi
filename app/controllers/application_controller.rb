class ApplicationController < ActionController::API
  # include JsonStatusCodeRender

  def render(*args)
    puts "do render!"

    obj = args.first
    if no_status? obj
      if resource_was_destroyed? obj
        # 204 : request was received and understood, but no need to send any data back
        args.first[:status] = 204
      elsif resource_was_created? obj
        # 201 Created: The request has been fulfilled and resulted in a new resource
        args.first[:status] = 201
      end      
    end

    puts "rendering!"

    super
  end

  protected

  def resource_was_destroyed? obj
    obj[:json].respond_to?(:destroyed?) && obj[:json].destroyed?
  end

  def resource_was_created? obj
    obj[:json].respond_to?(:created?) && obj[:json].created?
  end

  def no_status? obj
    obj.key?(:json) && obj[:json].kind_of?(Mongoid::Document) && !obj.key?(:status)
  end  
end