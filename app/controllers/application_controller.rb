class ApplicationController < ActionController::API
  
  def render(*args)
    obj = args.first
    if needs_special_handling? obj
      if obj[:json].destroyed?
        args.first[:status] = 204
      elsif args.first[:json].created?
        args.first[:status] = 201
      end      
    end

    puts "args: #{args.first.inspect}"

    super
  end

  protected

  def needs_special_handling? obj
    obj.key?(:json) && obj[:json].kind_of?(Mongoid::Document) && !obj.key?(:status)
  end
end

