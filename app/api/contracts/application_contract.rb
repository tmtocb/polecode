class Contracts::ApplicationContract < Dry::Validation::Contract
  config.messages.default_locale = :en
  config.messages.backend = :yaml
  # config.messages.load_paths << 'config/locales/en/dry_validation.en.yml'

  def self.validate_with!(contract, options: {}, params: {})
    result = contract.new(options).call(params)
    return result.to_h if result.success?
    raise Exceptions::ValidationError, change_base_errors_key(result.errors.to_h) if result.errors.any?
  end

  private

  def self.change_base_errors_key(errors_hash)
    return errors_hash unless errors_hash[nil].present?
    errors_hash[:base_errors] = errors_hash[nil]
    errors_hash.delete(nil)
    errors_hash
  end
end
