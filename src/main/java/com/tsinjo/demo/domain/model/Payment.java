package com.tsinjo.demo.domain.model;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class Payment {
  private Long id;
  private Double amount;
  private String method;
  private String externalId;
  private PaymentStatus status;
}
