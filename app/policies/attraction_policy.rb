class AttractionPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def create?
    return true
  end

  def update?
    record.user == user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
   record.user == user
  end

  def user_attractions?
    return true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
