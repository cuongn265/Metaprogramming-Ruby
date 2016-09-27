def a_method
    return yield if block_given?
    'no block'
end

a_method #=> 'no block'
a_method {} #=> nil
a_method { 'given block' } #=> 'given block'

def b_method
    return yield unless block_given?
    'block given'
end

b_method #=> LocalJumpError: no block given (yield)
b_method { 'block' } #=> 'block given'
