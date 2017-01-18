# README

This repository was build to demonstrate issue #252 for attr_encrypted.

## Model

There are two models in use: Post and Comment, where Post has_many Comments.
For the purpose of this demonstrations, other attributes do not matter.

## Tests

The important test is implemented in spec/models/comment_spec.rb. It should be tested that a comment without a post is not valid. This behaviour has become standard behaviour in Rails 5.

## Reproduction of issue

First, run `rspec`. No test will fail. Then uncomment `gem 'attr_encrypted'` in Gemfile, run `bundle install` and run `rspec` again. Now, the test ensuring that a comment without a post will not validate will fail. To make it succeed again, comment `gem 'attr_encrypted'` out again, run `bundle install` and `rspec` another time

## Expected behaviour

The test should succeed with `attr_encrypted` installed the same way it does when not
