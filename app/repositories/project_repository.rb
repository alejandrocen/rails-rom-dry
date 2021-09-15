# frozen_string_literal: true

class ProjectRepository < ROM::Repository::Root
  root :projects
  commands :create,
           use: :timestamps,
           plugins_options: {
             timestamps: {
               timestamps: %i[created_at updated_at]
             }
           }

  commands update: :by_pk, delete: :by_pk

  struct_namespace Projects

  def by_id(id)
    root.by_pk(id).one
  end

  def all
    root.to_a
  end
end
