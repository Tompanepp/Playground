package com.xsolve.test.core;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

//@interface tells Java this is a custom annotation
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD) //method level only annoation
public @interface Test {
    //shoudl ignore this test?
    public boolean enabled() default true;
}