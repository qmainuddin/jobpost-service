package com.example.jobpostservice.dto;

import com.example.jobpostservice.common.JobType;
import com.example.jobpostservice.entity.PostStatus;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class JobPostDto implements Serializable {
    private Long id;
    private Long version;
    @NotNull
    @NotEmpty
    @NotBlank
    private String title;
    @NotNull
    @NotEmpty
    @NotBlank
    private String description;
    @NotNull
    private JobType jobType;
    private boolean isPublished = false;
    @NotNull
    private PostStatus status;

    @NotNull
    @NotEmpty
    @NotBlank
    private String location;
    @NotNull
    @NotEmpty
    @NotBlank
    private String companyName;
    @NotNull
    @NotEmpty
    @NotBlank
    private String city;
    @NotNull
    @NotEmpty
    @NotBlank
    private String state;
    private Long user_id;
}