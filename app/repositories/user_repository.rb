# frozen_string_literal: true

class UserRepository < ROM::Repository::Root
  root :users
  commands :create,
           use: :timestamps,
           plugins_options: {
             timestamps: {
               timestamps: %i[created_at updated_at]
             }
           }

  commands update: :by_pk, delete: :by_pk

  struct_namespace Users

  def by_id(id)
    root.by_pk(id).one
  end

  def all
    root.to_a
  end

  def contributors_for_project(project_id)
    root.contributors_for_project(project_id).to_a
  end

  def contributors_for_project_count(project_id)
    root.contributors_for_project(project_id).count
  end

  def top_contributors_for_project(project_id)
    top_contributors.for_project(project_id, 11).to_a
  end
end
