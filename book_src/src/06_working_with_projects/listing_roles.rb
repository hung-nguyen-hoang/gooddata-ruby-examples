# encoding: utf-8

require 'gooddata'

GoodData.with_connection do |c|
  GoodData.with_project('project_pid') do |project|
    # Usually what is useful is to see the titles
    pp project.roles.map(&:title)
    # But occassionally you need identifiers and urls as well
    pp project.roles.map(&:identifier)
    pp project.roles.map(&:uri)
  end
end