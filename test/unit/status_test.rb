require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "that a status requires new content to be entered" do
	status = Status.new
	assert !status.save
	assert !status.errors[:content].empty?
end

test "that a status's content is at least 2 letters" do
	status = Status.new
	status.content = "H"
	assert !status.save
	assert !status.errors[:content].empty?
end

test "that a status has a user ID" do
	status = Status.new
	status.content = "Hello"
	assert !status.save
	assert !status.errors[:user_id].empty?
end

end
