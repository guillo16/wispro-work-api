ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def assert_permit(user, record, actions, policy_class = nil)
      actions = Array(actions)

      actions.each do |action|
        msg = "User #{user.inspect} should be permitted to #{action} #{record}, but isn't permitted"
        if policy_class.nil?
          assert Pundit.policy!(user, record).public_send(action), msg
        else
          assert policy_class.new(user, record).public_send(action), msg
        end
      end
    end

    def assert_forbid(user, record, actions, policy_class = nil)
      actions = Array(actions)

      actions.each do |action|
        msg = "User #{user.inspect} should NOT be permitted to #{action} #{record}, but is permitted"
        if policy_class.nil?
          assert_not Pundit.policy!(user, record).public_send(action), msg
        else
          assert_not policy_class.new(user, record).public_send(action), msg
        end
      end
    end

  # Add more helper methods to be used by all tests here...
end
