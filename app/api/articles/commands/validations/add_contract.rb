class Articles::Commands::Validations::AddContract < ::Contracts::ApplicationContract
  params do
    required(:title).filled(:string)
    required(:short_desc).filled(:string)
    required(:full_desc).filled(:string)
    optional(:published).filled(:bool)
  end
end
