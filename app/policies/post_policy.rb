class PostPolicy < ApplicationPolicy
	def create?
		user.present? && (user.admin? || user.contributor?)
	end

	def update?
		user.present? && (user == record.user || (user.admin? || user.contributor?))
	end

	class Scope < Scope
    def resolve
      scope
    end
  end
end
