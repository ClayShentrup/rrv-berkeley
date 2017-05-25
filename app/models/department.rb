# Responsible Department or Division, e.g. Auditor, City Manager, City Attorney
class Department < ApplicationRecord
  validates(:name, presence: true, uniqueness: true)
end
