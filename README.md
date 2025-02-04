# Paramee

Paramee is a Rails gem for validating controller parameters.

## Installation

Add to your Gemfile:

```ruby
$ gem UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG
```

## Usage

```ruby
class SampleController < ApplicationController
  def filter
      param :q,     String,  required: false
      param :sort,  String,  required: false
      param :order, String,  in: %w[asc desc], default: 'asc'
      param :items, Integer, required: true

      # Validates parameters and sets them to the params hash
      # (params[:q], params[:sort], params[:items])
  end
end
```

### Parameter Data Types

- `String`
- `Integer`
- `Float`
- `Boolean`
- `Date`
- `Time`
- `Datetime`
- `Array`
- `Hash`

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Paramee project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/paramee/blob/main/CODE_OF_CONDUCT.md).
