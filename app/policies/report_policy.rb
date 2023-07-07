class ReportPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    return true
  end

  def destroy?
    return true
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def edit?
    return true
  end

  def update?
    return edit?
  end

  def action_plan?
    return true
  end

  def fire_alarm?
    return true
  end

  def fire_training?
    return true
  end

  def fire_extinguishers?
    return true
  end
end
