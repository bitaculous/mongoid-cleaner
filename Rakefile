#!/usr/bin/env rake

# Load all Rake tasks in `lib/tasks`.
Dir.glob('lib/tasks/*.rake').each { |task| load task }

# === Configuration ===

# Run all specs and RuboCop as default task.
task default: [:spec, :rubocop]