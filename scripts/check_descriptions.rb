#!/usr/bin/env ruby
# Fail when a home page description is over the cap or contains an em dash.
require "yaml"

MAX = 160
ROOT = File.expand_path("..", __dir__)
FILES = %w[_data/projects.yml _data/orgs.yml].freeze

problems = FILES.flat_map do |file|
  YAML.load_file(File.join(ROOT, file)).flat_map do |entry|
    description = entry["description"]
    found = []
    found << "#{description.length} characters, cap is #{MAX}" if description.length > MAX
    found << "contains an em dash" if description.include?("—")
    found.map { |problem| "#{file}: #{entry["name"]}: #{problem}" }
  end
end

puts problems
abort "#{problems.size} description problem(s)" unless problems.empty?
puts "all descriptions within #{MAX} characters, no em dashes"
