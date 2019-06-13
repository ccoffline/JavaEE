package edu.bjtu.ee4j.gym.transaction.rateLimit;

import java.lang.annotation.*;
import java.util.concurrent.TimeUnit;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface RateLimit {

    String value() default "";

    double perSecond() default Double.MAX_VALUE;

    int timeOut() default 0;

    TimeUnit timeOutUnit() default TimeUnit.MILLISECONDS;
}