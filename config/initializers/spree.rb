# frozen_string_literal: true

Spree::Backend::Config.configure do |config|
  break unless config.respond_to?(:menu_items)

  config.menu_items.detect { |menu_item| menu_item.label == :products }&.tap do |menu_item|
    menu_item.label = :relation_types
  end
end
