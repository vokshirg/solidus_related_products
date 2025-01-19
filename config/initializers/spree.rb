# frozen_string_literal: true

Spree::Backend::Config.configure do |config|
  products_menu = config.menu_items.detect { |item| item.label == :products }

  products_menu.children << Spree::BackendConfiguration::MenuItem.new(
    label: :relation_types,
    condition: -> { can?(:admin, Spree::RelationType) },
    url: :admin_relation_types_path,
    match_path: '/relation_types'
  )
end
