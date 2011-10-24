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

ActiveRecord::Schema.define(:version => 20111024081518) do

  create_table "add_ons", :force => true do |t|
    t.integer "catalog_id",                                                                  :null => false
    t.integer "sort_order",                                                                  :null => false
    t.string  "name",         :limit => 50
    t.text    "description"
    t.boolean "is_active",                                                 :default => true, :null => false
    t.integer "version",                                                   :default => 0,    :null => false
    t.decimal "add_on_price",               :precision => 10, :scale => 2, :default => 0.0
  end

  create_table "add_ons_products", :id => false, :force => true do |t|
    t.integer "add_on_id"
    t.integer "product_id"
  end

  create_table "admin_roles", :force => true do |t|
    t.integer "vendor_id"
    t.string  "name",              :limit => 50
    t.boolean "has_mobile_access"
    t.boolean "has_pc_access"
    t.boolean "is_active",                       :default => true
    t.integer "version",                         :default => 0
  end

  create_table "catalogs", :force => true do |t|
    t.integer  "vendor_id",                                          :null => false
    t.integer  "sort_order",                       :default => 0,    :null => false
    t.string   "name",               :limit => 50,                   :null => false
    t.boolean  "is_active",                        :default => true, :null => false
    t.integer  "version",                          :default => 0,    :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "customer_groups", :force => true do |t|
    t.integer "vendor_id"
    t.string  "name",        :limit => 50,                   :null => false
    t.text    "description"
    t.boolean "is_active",                 :default => true, :null => false
    t.integer "version",                   :default => 0,    :null => false
  end

  create_table "delivery_addresses", :force => true do |t|
    t.integer "shop_user_id",                                      :null => false
    t.boolean "is_invoice",                     :default => false, :null => false
    t.string  "name",             :limit => 50,                    :null => false
    t.text    "address_info"
    t.integer "state_id",                                          :null => false
    t.string  "city",             :limit => 50,                    :null => false
    t.string  "zip_code",         :limit => 50,                    :null => false
    t.string  "street_address01", :limit => 50,                    :null => false
    t.string  "street_address02", :limit => 50
    t.string  "contact_phone",    :limit => 50
    t.integer "version",                        :default => 0,     :null => false
  end

  create_table "delivery_costs", :force => true do |t|
    t.integer "vendor_id",                                                          :null => false
    t.integer "order_type_id",                                                      :null => false
    t.integer "customer_group_id"
    t.integer "service_region_id"
    t.decimal "price",             :precision => 10, :scale => 0,                   :null => false
    t.integer "vat_id",                                                             :null => false
    t.boolean "is_active",                                        :default => true, :null => false
  end

  create_table "delivery_lead_times", :force => true do |t|
    t.integer "vendor_id"
    t.integer "location_id"
    t.integer "weekday"
    t.time    "time_from"
    t.time    "time_until"
    t.integer "lead_minutes"
    t.integer "version",      :default => 0
  end

  create_table "locations", :force => true do |t|
    t.integer "vendor_id",                                         :null => false
    t.string  "name",             :limit => 50,                    :null => false
    t.string  "name_01",          :limit => 50
    t.integer "state_id",                                          :null => false
    t.string  "zip_code",         :limit => 10,                    :null => false
    t.string  "street_address01", :limit => 100,                   :null => false
    t.string  "street_address02", :limit => 100
    t.string  "phone",            :limit => 25
    t.string  "fax",              :limit => 20
    t.string  "email_address",    :limit => 100
    t.string  "api_code",         :limit => 25
    t.boolean "is_active",                       :default => true, :null => false
    t.integer "version",                         :default => 0,    :null => false
  end

  create_table "navigations", :force => true do |t|
    t.integer "parent_id"
    t.boolean "is_pane"
    t.integer "pane_id",                    :default => 1,    :null => false
    t.integer "width",                      :default => 800,  :null => false
    t.integer "height",                     :default => 600,  :null => false
    t.integer "pos_x",                      :default => 0,    :null => false
    t.integer "pos_y",                      :default => 0,    :null => false
    t.boolean "is_multi"
    t.string  "name_menu",    :limit => 50,                   :null => false
    t.string  "name_header",  :limit => 50,                   :null => false
    t.string  "name_control",                                 :null => false
    t.boolean "is_active",                  :default => true, :null => false
    t.integer "version",                    :default => 0,    :null => false
  end

  create_table "news", :force => true do |t|
    t.integer "vendor_id",                                          :null => false
    t.integer "customer_group_id",                :default => 0,    :null => false
    t.string  "headline",          :limit => 100,                   :null => false
    t.text    "newstext",                                           :null => false
    t.date    "date_from",                                          :null => false
    t.date    "date_until",                                         :null => false
    t.boolean "is_active",                        :default => true, :null => false
    t.integer "version",                          :default => 0,    :null => false
  end

  create_table "opening_hours", :force => true do |t|
    t.integer "vendor_id",                      :null => false
    t.integer "location_id"
    t.integer "weekday",      :default => 0,    :null => false
    t.time    "opening_time",                   :null => false
    t.boolean "is_active",    :default => true, :null => false
    t.integer "version",      :default => 0,    :null => false
  end

  create_table "order_headers", :force => true do |t|
    t.integer  "vendor_id",                                                     :null => false
    t.integer  "location_id"
    t.integer  "shop_user_id",                                                  :null => false
    t.integer  "order_type_id",                                                 :null => false
    t.integer  "order_state_id",                                                :null => false
    t.datetime "order_datetime",                                                :null => false
    t.time     "time_requested"
    t.time     "time_done"
    t.decimal  "total_items",     :precision => 10, :scale => 0
    t.decimal  "deliver_cost",    :precision => 10, :scale => 0
    t.decimal  "vat_included",    :precision => 10, :scale => 0
    t.decimal  "order_total",     :precision => 10, :scale => 0
    t.integer  "admin_received"
    t.integer  "admin_prepared"
    t.integer  "admin_delivered"
    t.integer  "version",                                        :default => 0, :null => false
  end

  create_table "order_lines", :force => true do |t|
    t.integer "order_header_id",                                               :null => false
    t.integer "quantity",                                       :default => 1, :null => false
    t.integer "product_id",                                                    :null => false
    t.integer "add_on_id"
    t.decimal "price_item",      :precision => 10, :scale => 0, :default => 0
    t.decimal "price_line",      :precision => 10, :scale => 0, :default => 0, :null => false
    t.decimal "price_vat",       :precision => 10, :scale => 0, :default => 0, :null => false
    t.integer "version",                                        :default => 0, :null => false
  end

  create_table "order_states", :force => true do |t|
    t.integer "vendor_id",                                  :null => false
    t.string  "name",       :limit => 50,                   :null => false
    t.integer "sequence",                 :default => 0,    :null => false
    t.boolean "is_cancel"
    t.boolean "is_final"
    t.boolean "is_regular"
    t.boolean "is_active",                :default => true, :null => false
    t.integer "version",                  :default => 0,    :null => false
  end

  create_table "order_types", :force => true do |t|
    t.integer "vendor_id",                                   :null => false
    t.string  "name",        :limit => 50
    t.boolean "is_pickup"
    t.boolean "is_delivery"
    t.boolean "is_active",                 :default => true, :null => false
    t.integer "version",                   :default => 0,    :null => false
  end

  create_table "product_prices", :force => true do |t|
    t.integer  "location_id"
    t.integer  "customer_group_id",                                                  :null => false
    t.decimal  "price",                               :precision => 10, :scale => 0, :null => false
    t.integer  "special_offer_type_id"
    t.datetime "special_offer_from"
    t.datetime "special_offer_until"
    t.integer  "variant_id",                                                         :null => false
    t.string   "name",                  :limit => 50
  end

  create_table "products", :force => true do |t|
    t.integer  "vendor_id",                                              :null => false
    t.integer  "location_id"
    t.integer  "catalog_id",                                             :null => false
    t.integer  "vat_id",                                                 :null => false
    t.string   "name",                  :limit => 50,                    :null => false
    t.string   "description_short",     :limit => 200
    t.text     "description_long"
    t.boolean  "is_only_special_offer"
    t.boolean  "is_delivery"
    t.boolean  "is_pickup"
    t.boolean  "is_active",                            :default => true, :null => false
    t.integer  "version",                              :default => 0,    :null => false
    t.string   "image_content_type"
    t.string   "image_file_name"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "role_navigations", :force => true do |t|
    t.integer "role_id",                      :null => false
    t.integer "navigation_id",                :null => false
    t.boolean "is_create"
    t.boolean "is_update"
    t.boolean "is_delete"
    t.integer "version",       :default => 0, :null => false
  end

  create_table "roles", :force => true do |t|
    t.string  "name",      :limit => 50,                   :null => false
    t.boolean "is_active",               :default => true, :null => false
    t.integer "version",                 :default => 0,    :null => false
  end

  create_table "salutations", :force => true do |t|
    t.string  "name",                        :null => false
    t.boolean "is_active", :default => true, :null => false
    t.integer "version",   :default => 0,    :null => false
  end

  create_table "service_regions", :force => true do |t|
    t.integer "vendor_id",   :null => false
    t.integer "location_id"
  end

  create_table "shop_users", :force => true do |t|
    t.integer "salutation_id",                                  :null => false
    t.string  "first_name",    :limit => 25,                    :null => false
    t.string  "last_name",     :limit => 25,                    :null => false
    t.string  "email_address", :limit => 100,                   :null => false
    t.string  "mobile_phone",  :limit => 25,                    :null => false
    t.string  "password",      :limit => 20,                    :null => false
    t.date    "birth_date"
    t.boolean "is_approved"
    t.boolean "is_active",                    :default => true, :null => false
    t.integer "version",                      :default => 0,    :null => false
  end

  create_table "special_offer_types", :force => true do |t|
    t.integer "vendor_id",                                   :null => false
    t.string  "name",        :limit => 50,                   :null => false
    t.text    "description"
    t.boolean "is_active",                 :default => true, :null => false
    t.integer "version",                   :default => 0,    :null => false
  end

  create_table "states", :force => true do |t|
    t.string  "name",      :limit => 50,                   :null => false
    t.boolean "is_active",               :default => true, :null => false
    t.integer "version",                 :default => 0,    :null => false
  end

  create_table "translations", :force => true do |t|
    t.string  "shortcut",      :limit => 100,                :null => false
    t.string  "language_code", :limit => 2,                  :null => false
    t.text    "translation",                                 :null => false
    t.integer "version",                      :default => 0, :null => false
  end

  create_table "user_customer_groups", :force => true do |t|
    t.integer "shop_user_id",      :null => false
    t.integer "customer_group_id", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "variants", :force => true do |t|
    t.integer "catalog_id"
    t.integer "product_id"
    t.integer "sort_order",                :default => 1,    :null => false
    t.string  "name",        :limit => 50,                   :null => false
    t.text    "description"
    t.boolean "is_active",                 :default => true, :null => false
    t.integer "version",                   :default => 0,    :null => false
  end

  create_table "vats", :force => true do |t|
    t.integer "vendor_id",                                                                    :null => false
    t.string  "name",          :limit => 50,                                                  :null => false
    t.integer "order_type_id",                                                                :null => false
    t.decimal "percentage",                  :precision => 10, :scale => 0, :default => 0,    :null => false
    t.boolean "is_included"
    t.boolean "is_active",                                                  :default => true, :null => false
    t.integer "version",                                                    :default => 0,    :null => false
  end

  create_table "vendors", :force => true do |t|
    t.string  "name",                       :limit => 50,                    :null => false
    t.string  "name_1",                     :limit => 50,                    :null => false
    t.string  "name_2",                     :limit => 50
    t.string  "street_address01",           :limit => 50,                    :null => false
    t.string  "street_address02",           :limit => 50
    t.string  "zip_code",                   :limit => 10
    t.string  "city",                       :limit => 50
    t.string  "phone",                      :limit => 20
    t.string  "fax",                        :limit => 20
    t.string  "email_address",              :limit => 100
    t.boolean "home_specials_active"
    t.boolean "home_pending_orders_active"
    t.boolean "home_news_active"
    t.boolean "accept_pickup"
    t.boolean "accept_delivery"
    t.string  "hotline_order",              :limit => 25
    t.string  "hotline_technical",          :limit => 25
    t.integer "version",                                   :default => 0,    :null => false
    t.boolean "is_active",                                 :default => true, :null => false
    t.string  "website"
  end

  add_foreign_key "product_prices", "variants", :name => "product_prices_variant_id_fk", :dependent => :delete

end
