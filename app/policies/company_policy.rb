class CompanyPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.all
      scope.where(inspector_id: user.id)
      # scope.where(client_id: user.id)
    end
  end

  def show?
    record.inspector_id == user.id || record.client_id == user.id
  end

  def new
    return create?
  end

  def create?
    return true
  end
end
