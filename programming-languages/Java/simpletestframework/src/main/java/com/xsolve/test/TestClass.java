package com.xsolve.test;

import com.xsolve.test.core.Test;
import com.xsolve.test.core.TesterInfo;

/**
 * Created by vagrant on 2017/09/03.
 */

@TesterInfo(
        priority = TesterInfo.Priority.HIGH,
        createdBy = "praise",
        tags = {"sales", "test"}
)
public class TestClass {

    @Test
    void testA() {
        if (true)
            throw new RuntimeException("This test always fails");
    }

    @Test(enabled = false)
    void testB() {
        if (false)
            throw new RuntimeException("This test always passes");
    }

    void testC() {
        if (10 > 1) {
            //do nothing, this test always passes
        }
    }
}
