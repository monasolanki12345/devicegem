class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      if user.role.name=='Admin'

      else
        scope.where.not(content: "")
      end
    end

  end

  def index?
    true
    # false - nobody has access
  end
  def destroy?
   return true if user.present? && user.role.name == 'Admin'
    #    index?
    # @user.has_role? :admin
  end 
end
