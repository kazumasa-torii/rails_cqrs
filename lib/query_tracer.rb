# frozen_string_literal: true

class QueryTracer < Arproxy::Base
  def execute(sql, name = nil, **kwargs)
    role = ActiveRecord::Base.current_role
    name = "#{name} [#{role}]"
    super(sql, name)
  end
end
