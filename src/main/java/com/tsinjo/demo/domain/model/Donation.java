package com.tsinjo.demo.domain.model;

import java.time.LocalDateTime;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@ToString
public class Donation {
  private Long id;
  private Donor donor;
  private Payment payment;
  private LocalDateTime donationDate;
}
