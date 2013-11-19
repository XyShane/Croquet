ActiveAdmin.register Programme do
controller do
		def permitted_params
            params.permit(:programme => [:title, :date, :description, :location])
end
end
end
