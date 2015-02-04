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

ActiveRecord::Schema.define(:version => 20150204233652) do

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

  create_table "asignacion_docentes", :force => true do |t|
    t.string   "nombre",         :limit => 60
    t.integer  "docente_id"
    t.integer  "curso_id"
    t.integer  "materia_id"
    t.integer  "dia_semanal_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "asignacion_docentes", ["curso_id"], :name => "index_asignacion_docentes_on_curso_id"
  add_index "asignacion_docentes", ["dia_semanal_id"], :name => "index_asignacion_docentes_on_dia_semanal_id"
  add_index "asignacion_docentes", ["docente_id"], :name => "index_asignacion_docentes_on_docente_id"
  add_index "asignacion_docentes", ["materia_id"], :name => "index_asignacion_docentes_on_materia_id"

  create_table "asignacion_estado_alumnos", :force => true do |t|
    t.string   "nombre",             :limit => 60
    t.integer  "alumno_id"
    t.integer  "semestre_id"
    t.integer  "periodo_lectivo_id"
    t.integer  "materia_id"
    t.integer  "sede_id"
    t.integer  "estado_alumno_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "asignacion_estado_alumnos", ["alumno_id"], :name => "index_asignacion_estado_alumnos_on_alumno_id"
  add_index "asignacion_estado_alumnos", ["estado_alumno_id"], :name => "index_asignacion_estado_alumnos_on_estado_alumno_id"
  add_index "asignacion_estado_alumnos", ["materia_id"], :name => "index_asignacion_estado_alumnos_on_materia_id"
  add_index "asignacion_estado_alumnos", ["periodo_lectivo_id"], :name => "index_asignacion_estado_alumnos_on_periodo_lectivo_id"
  add_index "asignacion_estado_alumnos", ["sede_id"], :name => "index_asignacion_estado_alumnos_on_sede_id"
  add_index "asignacion_estado_alumnos", ["semestre_id"], :name => "index_asignacion_estado_alumnos_on_semestre_id"

  create_table "asignacion_funcionarios", :force => true do |t|
    t.string   "nombre",         :limit => 60
    t.integer  "sede_id"
    t.integer  "funcionario_id"
    t.integer  "cargo_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "asignacion_funcionarios", ["cargo_id"], :name => "index_asignacion_funcionarios_on_cargo_id"
  add_index "asignacion_funcionarios", ["funcionario_id"], :name => "index_asignacion_funcionarios_on_funcionario_id"
  add_index "asignacion_funcionarios", ["sede_id"], :name => "index_asignacion_funcionarios_on_sede_id"

  create_table "cargos", :force => true do |t|
    t.string   "descripcion", :limit => 60
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "carreras", :force => true do |t|
    t.string   "nombre",          :limit => 60
    t.integer  "duracion",        :limit => 1
    t.string   "titulo_obtenido", :limit => 60
    t.integer  "facultad_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "carreras", ["facultad_id"], :name => "index_carreras_on_facultad_id"

  create_table "ciudades", :force => true do |t|
    t.string   "nombre",     :limit => 60
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "cursos", :force => true do |t|
    t.integer  "semestre_id"
    t.integer  "periodo_lectivo_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "cursos", ["periodo_lectivo_id"], :name => "index_cursos_on_periodo_lectivo_id"
  add_index "cursos", ["semestre_id"], :name => "index_cursos_on_semestre_id"

  create_table "dia_semanales", :force => true do |t|
    t.string   "nombre",     :limit => 30
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

  create_table "estado_alumnos", :force => true do |t|
    t.string   "nombre",     :limit => 60
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
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

  create_table "malla_curriculares", :force => true do |t|
    t.integer  "plan_curricular_id"
    t.integer  "facultad_id"
    t.integer  "curso_id"
    t.integer  "materia_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "malla_curriculares", ["curso_id"], :name => "index_malla_curriculares_on_curso_id"
  add_index "malla_curriculares", ["facultad_id"], :name => "index_malla_curriculares_on_facultad_id"
  add_index "malla_curriculares", ["materia_id"], :name => "index_malla_curriculares_on_materia_id"
  add_index "malla_curriculares", ["plan_curricular_id"], :name => "index_malla_curriculares_on_plan_curricular_id"

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

  create_table "nro_actas", :force => true do |t|
    t.integer  "nro_acta",   :limit => 15
    t.integer  "tomo",       :limit => 2
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

  create_table "plan_curricular", :force => true do |t|
    t.string   "nombre",     :limit => 60
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "sedes", :force => true do |t|
    t.string   "nombre",         :limit => 60
    t.integer  "universidad_id"
    t.integer  "facultad_id"
    t.integer  "ciudad_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "sedes", ["ciudad_id"], :name => "index_sedes_on_ciudad_id"
  add_index "sedes", ["facultad_id"], :name => "index_sedes_on_facultad_id"
  add_index "sedes", ["universidad_id"], :name => "index_sedes_on_universidad_id"

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
