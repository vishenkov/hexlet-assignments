# frozen_string_literal: true

# BEGIN
require 'date'

module Model
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def attribute(name, options = {})
      define_method name do
        instance_variable_get "@#{name}"
      end

      define_method "#{name}=" do |raw_value|
        value = raw_value

        instance_attributes = (instance_variable_get '@instance_attributes') || []
        instance_attributes << name
        instance_variable_set '@instance_attributes', instance_attributes

        if options[:type]
          instanse = options[:type]

          if instanse == :integer
            value = raw_value.to_i
          elsif instanse == :string
            value = raw_value.to_s
          elsif instanse == :datetime
            value = DateTime.parse raw_value
          elsif instanse == :boolean
            value = !!raw_value
          else
            value = raw_value.to_s
          end
        end

        instance_variable_set "@#{name}", value
      end
    end
  end

  def initialize(attributes = {})
    attributes.each do |key, value|
      next unless methods.include? key

      send "#{key}=", value
    end
  end

  def attributes
    @instance_attributes.each_with_object({}) do |attr, hash|
      hash[attr] = send attr
    end
  end

  # def self.attribute
  #   # puts "name: #{name}"
  #   # puts "options: #{options}"
  # end
end
# END
