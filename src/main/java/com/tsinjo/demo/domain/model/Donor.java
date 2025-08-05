package com.tsinjo.demo.domain.model;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@ToString
public class Donor {
  private String fullName;
  private String email;
}
