package com.mocker.domain.email;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmailDetail {
    private String receiver;
    private String msgBody;
    private String subject;
}
