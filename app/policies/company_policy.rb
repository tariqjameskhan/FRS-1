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
    user.inspector?
  end

  def new?
    return create?
  end

  def edit?
    user.inspector?
  end

  def update?
    user.inspector?
  end

  def destroy?
    user.inspector?
  end
end
