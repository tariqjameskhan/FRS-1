class UserPolicy < ApplicationPolicy
  def show?
    true # Allow any user to view their own profile
  end

  def update?
    record == user # Only allow the user to update their own profile
  end
end
