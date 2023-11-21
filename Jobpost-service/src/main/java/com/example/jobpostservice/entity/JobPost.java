package com.example.jobpostservice.entity;

import com.example.jobpostservice.common.JobType;
import jakarta.persistence.*;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.util.Date;

@Data
@Entity
public class JobPost   {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Version
    private Long version;
    @CreationTimestamp
    @Column(name = "created_date")
    private Date createdDate;
    @Column(name = "last_modified_date", nullable = false)

    @UpdateTimestamp
    private Date lastModifiedDate;
    private String title;
    private String description;
    @Column(nullable = false)
    private JobType jobType;
    @Column(nullable = false)
    private Long user_id;
    private boolean isPublished = false;
    private PostStatus status= PostStatus.OPENED;
    private String location;
    private String companyName;
    private String city;
    private String state;

    @PrePersist
    public void prePersist() {
        this.createdDate = new Date();
        this.lastModifiedDate = new Date();
    }

    @PreUpdate
    public void preUpdate() {
        this.lastModifiedDate = new Date();
    }
}
