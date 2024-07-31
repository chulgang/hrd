package org.chulgang.hrd.post.domain;

import java.time.LocalDateTime;

public class Post {
    private long seq;
    private long id;
    private long writer_id;
    private String subject;
    private String content;
    private int view;
    private LocalDateTime created_at;
    private LocalDateTime modified_at;

    public Post(long id, long writer_id, String subject, String content,
                int view, LocalDateTime created_at, LocalDateTime modified_at) {
        this.id = id;
        this.writer_id = writer_id;
        this.subject = subject;
        this.content = content;
        this.view = view;
        this.created_at = created_at;
        this.modified_at = modified_at;
    }
    public Post(String subject, String content,
                int view) {
        this.writer_id = writer_id;
        this.subject = subject;
        this.content = content;
        this.view = view;

    }
    public Post(long id, long writer_id, String subject, String content,
                int view) {
        this.id = id;
        this.writer_id = writer_id;
        this.subject = subject;
        this.content = content;
        this.view = view;

    }

    public Post(long writer_id, String subject, String content,
                int view) {
        this.writer_id = writer_id;
        this.subject = subject;
        this.content = content;
        this.view = view;

    }

    public long getSeq() {
        return seq;
    }

    public void setSeq(long seq) {
        this.seq = seq;
    }

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getWriter_id() {
        return writer_id;
    }

    public void setWriter_id(int writer_id) {
        this.writer_id = writer_id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public LocalDateTime getCreated_at() {
        return created_at;
    }

    public void setCreated_at(LocalDateTime created_at) {
        this.created_at = created_at;
    }

    public LocalDateTime getModified_at() {
        return modified_at;
    }

    public void setModified_at(LocalDateTime modified_at) {
        this.modified_at = modified_at;
    }
}
