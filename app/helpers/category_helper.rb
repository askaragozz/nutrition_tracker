module CategoryHelper
    def category_image(category)
      image_tag "categories/#{category.name.parameterize}.jpg",
                class: "img-fluid rounded shadow-sm"
    end
end