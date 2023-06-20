class CompanyPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.all
      if user.inspector?
        scope.where(inspector_id: user.id)
      elsif user.client?
        scope.where(client_id: user.id)
      end
      # scope.where(client_id: user.id)
    end
  end

  def show?
    record.inspector_id == user.id || record.client_id == user.id
  end

  def create?
    return true
  end

  def new?
    return create?
  end
end
