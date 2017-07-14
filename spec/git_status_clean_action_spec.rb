describe Fastlane::Actions::GitStatusCleanAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The git_status_clean plugin is working!")

      Fastlane::Actions::GitStatusCleanAction.run(nil)
    end
  end
end
