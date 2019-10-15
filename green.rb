# frozen_string_literal: true

@something
  .select do |argument|
  argument == 1
end

@something
  .method1
                      &.method2

@something = @smth
               .where('
    some_query
  ')
