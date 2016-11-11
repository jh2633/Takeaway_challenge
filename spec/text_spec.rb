require 'text'

describe Text do
  let(:text){described_class.new}
  let(:account_sid){stub :account_sid}
  let(:auth_token){stub :auth_token}

it 'sends the message to Twilio' do
  expect(text.send).to have_received(:message)
end

end
