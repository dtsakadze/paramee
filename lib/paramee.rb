# frozen_string_literal: true

require 'active_support/core_ext/object/blank'

require_relative 'paramee/version'
require_relative 'paramee/param'
require_relative 'paramee/parameter'

ActiveSupport.on_load(:action_controller) do
  include Paramee
end
