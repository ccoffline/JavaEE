package com.club.user.core.exception;

public class LxException extends RuntimeException {
    private static final long serialVersionUID = -1L;
    protected String code;
    protected Object[] args;
    protected String msg;

    public LxException(String code) {
        this(code, (Object[]) null, (String) null, (Throwable) null);
    }

    public LxException(String code, Object[] args, String message, Throwable cause) {
        super(message, cause);
        this.code = code;
        this.args = args;
        this.msg = message;
    }
}
