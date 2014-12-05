# Preview all emails at http://localhost:3000/rails/mailers/done_that
class DoneThatPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/done_that/question
  def question
    DoneThat.question
  end

  # Preview this email at http://localhost:3000/rails/mailers/done_that/answer
  def answer
    DoneThat.answer
  end

end
