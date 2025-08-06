package com.tsinjo.demo.domain.model;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@ToString
public class Help {
  private Long id;
  private Receiver receiver;
  private Payment payment;
  private String description;
}
