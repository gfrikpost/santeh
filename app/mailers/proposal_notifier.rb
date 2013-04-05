class ProposalNotifier < ActionMailer::Base
  default from: "gfrikpost@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.proposal_notifier.received.subject
  #
  def received(proposal)
    @proposal = proposal
    
    mail to: "frikpost@mail.ru", subject: 'New Order'
  end
end
