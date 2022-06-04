class Entry < ApplicationRecord
    before_create do
        self.title = "New Entry" if self.title.blank?
    end
end
