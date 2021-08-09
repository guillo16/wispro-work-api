class PostulationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user
  end

  def create?
    user.person?
  end

  def update?
    user.company?
  end

  def destroy?
    user.person? || user.company?
  end
end
