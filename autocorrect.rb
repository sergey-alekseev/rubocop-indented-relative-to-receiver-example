# frozen_string_literal: true

# before `rubocop -a autocorrect.rb`
@something
.select do |argument|
  argument == 1
end

# after `rubocop -a autocorrect.rb`
# @something
#   .select do |argument|
#   argument == 1
# end

# shouldn't be better the following?
@something
  .select do |argument|
    argument == 1
  end

# before `rubocop -a autocorrect.rb`
@something
.method1
&.method2

# after `rubocop -a autocorrect.rb`
# @something
#   .method1
# &.method2

# shouldn't be better the following?
@something
  .method1
  &.method2

# before `rubocop -a autocorrect.rb`
@something = @smth
             .where('
               some_query
             ')

# after `rubocop -a autocorrect.rb`
# @something = @smth
#                .where('
#                some_query
#              ')

# shouldn't be better the following?
@something = @smth
               .where('
                 some_query
               ')
