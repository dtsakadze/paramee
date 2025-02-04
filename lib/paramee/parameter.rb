# frozen_string_literal: true

module Paramee
  class Parameter
    attr_accessor :name, :type, :value, :options

    def initialize(name:, type:, value:, options: {})
      @name = name
      @type = type
      @value = value
      @options = options
    end

    def value_or_default
      should_set_default? ? options[:default] : value
    end

    private

    def should_set_default?
      value.nil? && options[:default].present?
    end
  end
end
