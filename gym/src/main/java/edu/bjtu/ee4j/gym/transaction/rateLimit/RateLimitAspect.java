package edu.bjtu.ee4j.gym.transaction.rateLimit;

import com.google.common.util.concurrent.RateLimiter;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;

import java.lang.reflect.Method;

@Aspect
@Component
public class RateLimitAspect {

    private final static Logger logger = LoggerFactory.getLogger(RateLimitAspect.class);

    private RateLimiter rateLimiter = RateLimiter.create(Double.MAX_VALUE);

    @Pointcut("@annotation(edu.bjtu.ee4j.gym.transaction.rateLimit.RateLimit)")
    public void checkPointcut() {
    }

    @ResponseBody
    @Around(value = "checkPointcut()")
    public Object aroundNotice(ProceedingJoinPoint pjp) throws Throwable {
        logger.info("拦截到了{}方法...", pjp.getSignature().getName());
        Signature signature = pjp.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        Method targetMethod = methodSignature.getMethod();
        if (targetMethod.isAnnotationPresent(RateLimit.class)) {
            RateLimit lxRateLimit = targetMethod.getAnnotation(RateLimit.class);
            rateLimiter.setRate(lxRateLimit.perSecond());
            if (!rateLimiter.tryAcquire(lxRateLimit.timeOut(), lxRateLimit.timeOutUnit()))
                return "The server is busy. Please try again later.";
        }
        return pjp.proceed();
    }
}