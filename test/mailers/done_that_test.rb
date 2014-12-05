require 'test_helper'

class DoneThatTest < ActionMailer::TestCase
  test "question" do
    mail = DoneThat.question
    assert_equal "Question", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "answer" do
    mail = DoneThat.answer
    assert_equal "Answer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
