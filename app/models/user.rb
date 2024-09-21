class User < ActiveRecordCompose::Model
  def initialize(account = Account.new)
    super({})
    @account = account
    @profile = account.then { _1.profile || _1.build_profile }
    models << account << profile
  end

  delegate :id, :persisted?, to: :account

  delegate_attribute :email, to: :account
  delegate_attribute :name, :age, to: :profile

  def to_model = self

  private

  attr_reader :account, :profile
end
