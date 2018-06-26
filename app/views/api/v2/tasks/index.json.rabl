if @tasks.empty? 
	node(:notice){"No Tasks Found"}
else
	collection @tasks
	attributes :id, :title, :due_date, :is_completed, :user_id
end
