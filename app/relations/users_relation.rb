# frozen_string_literal: true

class UsersRelation < ROM::Relation[:sql]
  schema(:users, infer: true)

  def contributors_for_project(project_id)
    distinct(:id).inner_join(:tickets, user_id: :id).where(project_id: project_id)
  end
end
