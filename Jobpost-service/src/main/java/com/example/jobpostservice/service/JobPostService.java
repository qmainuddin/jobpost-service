package com.example.jobpostservice.service;




import com.example.jobpostservice.dto.JobPostDto;
import com.example.jobpostservice.dto.JobPostsByFilterDto;

import java.util.List;

public interface JobPostService {
    void create(JobPostDto jobPostDto);

    List<JobPostDto> findAll();

    JobPostDto update(JobPostDto jobPostDto, Long id);

    JobPostDto getjobPostById(Long id);

    void delete(Long id);

    List<JobPostDto>  getJobPostsByFilter(JobPostsByFilterDto jobPostsByFilterDto);
}
