class IndustryPolicy < ApplicationPolicy
  class Scope < Scope
    def index?
      user.present? && user.admin?
    end

    def show?
      index?
    end

    def create?
      index?
    end

    def new?
      create?
    end

    def update?
      index?
    end
    def resolve
      scope
    end
  end
end
