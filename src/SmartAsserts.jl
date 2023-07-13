function test(a)
    @cuprintln SmartAsserts._ENABLED[]
    # @smart_assert a == false

    return nothing
end

begin
    x = true
    @cuda test(x)
end