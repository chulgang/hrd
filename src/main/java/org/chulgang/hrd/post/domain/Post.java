package org.chulgang.hrd.post.domain;

import java.time.LocalDateTime;

public class Post {
    private long seq;
    private int id;
    private long writer_id;
    private String subject;
    private String content;
    private int view_count;
    private LocalDateTime created_at;
    private LocalDateTime modified_at;

    public Post(int id, long writer_id, String subject, String content,
                int view_count, LocalDateTime created_at, LocalDateTime modified_at) {
        this.id = id;
        this.writer_id = writer_id;
        this.subject = subject;
        this.content = content;
        this.view_count = view_count;
        this.created_at = created_at;
        this.modified_at = modified_at;
    }
    public Post(String subject, String content,
                int view_count) {
        this.writer_id = writer_id;
        this.subject = subject;
        this.content = content;
        this.view_count = view_count;

    }
    public Post(long writer_id, String subject, String content,
                int view_count) {
        this.writer_id = writer_id;
        this.subject = subject;
        this.content = content;
        this.view_count = view_count;

    }

    public long getSeq() {
        return seq;
    }

    public void setSeq(long seq) {
        this.seq = seq;
    }

    public int getId() {
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

    public int getView_count() {
        return view_count;
    }

    public void setView_count(int view_count) {
        this.view_count = view_count;
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
