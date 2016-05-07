module ApplicationHelper
		def logo
			image_tag("room-finder-logo.png", :alt => "App", :class => "round", :width => 200, :height => 100)
		end

		def show_image(image)
			image_tag(image, :alt => "App", :class => "demo w3-border w3-hover-shadow", :style => "width:30%")
		end



end
