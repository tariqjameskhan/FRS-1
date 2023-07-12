class UserPolicy < ApplicationPolicy
  def show?
    true # Allow any user to view their own profile
  end
end
