package com.example.jobpostservice.repository;

import com.example.jobpostservice.entity.JobPost;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JobPostRepository extends JpaRepository<JobPost, Long> {
}