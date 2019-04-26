class Numbering < ApplicationRecord
	default_scope { order(number: 'asc') }
end
