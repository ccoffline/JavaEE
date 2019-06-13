package com.club.user.core.basereturn;

import lombok.Data;

import java.io.Serializable;

@Data
public class ReturnHBE implements Serializable {
    private BodyInterface body;
    private HeadInterface head;
    private ErrorInterface error;

    public ReturnHBE(ErrorInterface error) {
        this.error = error;
    }

    public ReturnHBE(HeadInterface head) {
        this.head = head;
    }

    public ReturnHBE(BodyInterface body) {
        this.body = body;
    }

    public ReturnHBE(BodyInterface body, ErrorInterface error) {
        this.body = body;
        this.error = error;
    }

    public ReturnHBE(HeadInterface head, ErrorInterface error) {
        this.head = head;
        this.error = error;
    }

    public ReturnHBE(BodyInterface body, HeadInterface head) {
        this.body = body;
        this.head = head;
    }

    public ReturnHBE(BodyInterface body, HeadInterface head, ErrorInterface error) {
        this.body = body;
        this.head = head;
        this.error = error;
    }
}
