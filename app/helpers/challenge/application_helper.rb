module Challenge
  module ApplicationHelper
    def challenge_engine_importmap_tags(entry_point = "application", shim: false) # disabled shim, despite
      safe_join [
        javascript_inline_importmap_tag(Challenge.configuration.importmap.to_json(resolver: self)),
        javascript_importmap_module_preload_tags(Challenge.configuration.importmap),
        # (javascript_importmap_shim_nonce_configuration_tag if shim),
        # (javascript_importmap_shim_tag if shim),
        javascript_import_module_tag(entry_point)
      ].compact, "\n"
    end
  end
end
