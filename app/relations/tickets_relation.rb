# frozen_string_literal: true

class TicketsRelation < ROM::Relation[:sql]
  schema(:tickets, infer: true)
end
