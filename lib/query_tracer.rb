# frozen_string_literal: true

class QueryTracer < Arproxy::Base
  def execute(sql, name = nil, **kwargs)
    role = ActiveRecord::Base.current_role
    name = "#{name} [#{role}]"
    Rails.logger.debugger sql
    Rails.logger.debug caller(1).join("\n")
    super sql, name
  end
end
