module Fastlane
  module Helper
    class GitStatusCleanHelper
      # class methods that you define here become available in your action
      # as `Helper::GitStatusCleanHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the git_status_clean plugin helper!")
      end
    end
  end
end
