package com.icia.lib.dto;

import lombok.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class BookDTO {
    private long id;
    private String bookName;
    private String bookPublisher;
    private String bookAuthor;
    private int bookPrice;

    // 어차피 여기는 DB의 auto increment로 처리할 것이기 때문에 굳이 이렇게까지 할 필요는 없다
//    private static int bookNumber = 100;
//    {
//        this.id = "B" + bookNumber++;
//    }


}
