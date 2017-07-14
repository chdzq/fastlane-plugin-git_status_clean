module Fastlane
  module Actions
    class GitStatusCleanAction < Action
      def self.run(params)
        repo_status = Actions.sh("git status --porcelain")
        Actions.sh("git reset --hard") if !repo_status.empty?
        UI.success('Git status is clean, all good!')
      end

      def self.description
        "clean git status"
      end

      def self.authors
        ["zhangqi"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "sure clean git status"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "GIT_STATUS_CLEAN_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        [:ios, :mac, :android].include?(platform)
      end
    end
  end
end
