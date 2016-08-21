class FabmomentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def update?
    user.try(:admin?) || record.author == user
  end

  def tag?
    update?
  end
end