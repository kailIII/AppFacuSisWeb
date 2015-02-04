# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150204163216) do

  create_table "alumnos", :force => true do |t|
    t.string   "ci",           :limit => 30
    t.string   "nombres",      :limit => 60
    t.string   "apellidos",    :limit => 60
    t.date     "fnac"
    t.string   "lnac",         :limit => 60
    t.text     "direccion",    :limit => 120
    t.string   "telefono",     :limit => 30
    t.string   "celular",      :limit => 30
    t.string   "email",        :limit => 60
    t.string   "est_civil",    :limit => 30
    t.string   "genero",       :limit => 30
    t.string   "nacionalidad", :limit => 60
    t.string   "procedencia",  :limit => 60
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "aranceles", :force => true do |t|
    t.string   "nombre",     :limit => 60
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "cargos", :force => true do |t|
    t.string   "descripcion", :limit => 60
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "carreras", :force => true do |t|
    t.string   "nombre",          :limit => 60
    t.integer  "duracion",        :limit => 2
    t.string   "titulo_obtenido", :limit => 60
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "ciudades", :force => true do |t|
    t.string   "nombre",     :limit => 60
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "docentes", :force => true do |t|
    t.string   "ci",           :limit => 30
    t.string   "nombres",      :limit => 60
    t.string   "apellidos",    :limit => 60
    t.date     "fnac"
    t.string   "lnac",         :limit => 60
    t.text     "direccion",    :limit => 120
    t.string   "telefono",     :limit => 30
    t.string   "celular",      :limit => 30
    t.string   "email",        :limit => 60
    t.string   "est_civil",    :limit => 30
    t.string   "genero",       :limit => 30
    t.string   "nacionalidad", :limit => 60
    t.string   "especialidad", :limit => 60
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "facultades", :force => true do |t|
    t.string   "nombre",     :limit => 60
    t.text     "direccion",  :limit => 120
    t.string   "telefono",   :limit => 30
    t.string   "email",      :limit => 30
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "ci",           :limit => 30
    t.string   "nombres",      :limit => 60
    t.string   "apellidos",    :limit => 60
    t.date     "fnac"
    t.string   "lnac",         :limit => 60
    t.text     "direccion",    :limit => 120
    t.string   "telefono",     :limit => 30
    t.string   "celular",      :limit => 30
    t.string   "email",        :limit => 60
    t.string   "est_civil",    :limit => 30
    t.string   "genero",       :limit => 30
    t.string   "nacionalidad", :limit => 60
    t.string   "especialidad", :limit => 60
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "materias", :force => true do |t|
    t.integer  "codigo",     :limit => 15
    t.string   "nombre",     :limit => 60
    t.string   "alias",      :limit => 30
    t.string   "hs",         :limit => 10
    t.text     "contenido",  :limit => 120
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "modo_ingresos", :force => true do |t|
    t.string   "descripcion", :limit => 60
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "notas", :force => true do |t|
    t.integer  "nro",        :limit => 1
    t.string   "letra",      :limit => 60
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "oportunidades", :force => true do |t|
    t.string   "nombre",     :limit => 60
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "periodo_lectivos", :force => true do |t|
    t.integer  "periodo",    :limit => 4
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "semestres", :force => true do |t|
    t.string   "descripcion", :limit => 60
    t.integer  "numero",      :limit => 2
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "tareas", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tipo_becas", :force => true do |t|
    t.string   "descripcion", :limit => 60
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "universidades", :force => true do |t|
    t.string   "nombre",     :limit => 60
    t.text     "direccion",  :limit => 120
    t.string   "telefono",   :limit => 30
    t.string   "web",        :limit => 60
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
