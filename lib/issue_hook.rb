require_dependency 'issue'

module ParentDuePreferNilPlugin
  module IssueHook

    def self.included(base)
      base.class_eval do
        alias recalculate_attributes_for_without_parent_due_prefer_nil recalculate_attributes_for
        def recalculate_attributes_for(issue_id)
          recalculate_attributes_for_without_parent_due_prefer_nil(issue_id)
          update_parent_due_date(issue_id)
        end
      end
    end

    def update_parent_due_date(issue_id)
      if issue_id && p = Issue.find_by_id(issue_id)
        if p.children.first(:conditions => [ "due_date IS NULL" ])
          p.due_date = nil
          p.save(:validate => false)
        end
      end
    end
  end

  Issue.send(:include, IssueHook) unless Issue.included_modules.include? IssueHook
end
