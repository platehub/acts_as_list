# frozen_string_literal: true

module ActiveRecord::Acts::List::SequentialUpdatesWithUpdateMethodDefiner #:nodoc:
  def self.call(caller_class, is_enabled)
    caller_class.class_eval do
      define_method :sequential_updates_with_update? do
        is_enabled
      end

      private :sequential_updates_with_update?
    end
  end
end
