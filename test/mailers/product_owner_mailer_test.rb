require "test_helper"

class ProductOwnerMailerTest < ActionMailer::TestCase
  test "incident" do
    mail = ProductOwnerMailer.incident
    assert_equal "Incident", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
