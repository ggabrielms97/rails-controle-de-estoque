class PeopleCategory < ApplicationRecord
	default_scope { order(id: 'asc') }

	# has_many :people
end