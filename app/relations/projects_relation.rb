# frozen_string_literal: true

class ProjectsRelation < ROM::Relation[:sql]
  schema(:projects, infer: true)
end
