# frozen_string_literal: true

class TicketRepository < ROM::Repository::Root
  root :tickets
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
