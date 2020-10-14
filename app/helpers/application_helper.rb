module ApplicationHelper
  def link_to_add_fields(name, f, model_class, association, cssClass)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, child_index: "new_#{association}") do |builder|
      render(model_class + '/' + association.to_s.singularize + '_fields', section: builder)
    end
    link_to name, '#', class: cssClass, onclick: 'addNewLocationForm(this); return false', data: { association: association, fieldset: fields.to_json }
  end
end
