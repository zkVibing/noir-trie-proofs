// The 'test_leo_merkle' test program.
import leo_merkle.aleo;
program test_leo_merkle.aleo {
    @test
    script test_it() {
        let result: u32 = leo_merkle.aleo/main(1u32, 2u32);
        assert_eq(result, 3u32);
    }

    @test
    @should_fail
    transition do_nothing() {
        let result: u32 = leo_merkle.aleo/main(2u32, 3u32);
        assert_eq(result, 3u32);
    }
}
