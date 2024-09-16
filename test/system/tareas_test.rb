require "application_system_test_case"

class TareasTest < ApplicationSystemTestCase
  setup do
    @tarea = tareas(:one)
  end

  test "visiting the index" do
    visit tareas_url
    assert_selector "h1", text: "Tareas"
  end

  test "should create tarea" do
    visit tareas_url
    click_on "New tarea"

    check "Completado" if @tarea.completado
    fill_in "Descripcion", with: @tarea.descripcion
    fill_in "Titulo", with: @tarea.titulo
    fill_in "Usuario", with: @tarea.usuario_id
    click_on "Create Tarea"

    assert_text "Tarea was successfully created"
    click_on "Back"
  end

  test "should update Tarea" do
    visit tarea_url(@tarea)
    click_on "Edit this tarea", match: :first

    check "Completado" if @tarea.completado
    fill_in "Descripcion", with: @tarea.descripcion
    fill_in "Titulo", with: @tarea.titulo
    fill_in "Usuario", with: @tarea.usuario_id
    click_on "Update Tarea"

    assert_text "Tarea was successfully updated"
    click_on "Back"
  end

  test "should destroy Tarea" do
    visit tarea_url(@tarea)
    click_on "Destroy this tarea", match: :first

    assert_text "Tarea was successfully destroyed"
  end
end
