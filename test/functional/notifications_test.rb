require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "new_pledge" do
    mail = Notifications.new_pledge
    assert_equal "New pledge", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
