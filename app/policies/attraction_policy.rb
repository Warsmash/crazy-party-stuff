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
