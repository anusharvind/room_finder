module ApplicationHelper
		def logo(image, width,height)
			image_tag(image, :alt => "App", :class => "round", :width => width, :height => height)
		end

		def show_image(image)
			image_tag(image, :alt => "App", :class => "demo w3-border w3-hover-shadow", :style => "width:30%")
		end




end
