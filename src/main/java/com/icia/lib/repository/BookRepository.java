package com.icia.lib.repository;

import com.icia.lib.dto.BookDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository // <-- 어노테이션 붙이는거 까먹지 말자
public class BookRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int save(BookDTO bookDTO) {
        /* insert 수행결과를 int로 리턴
        *  수행이 되지 않았으면 0, 됏으면 1 */
        return sql.insert("Book.save", bookDTO);   // <-- 매개변수 (mapper호출, 쿼리에 적용할 값)

    }

    public List<BookDTO> findAll() {
        return sql.selectList("Book.findAll");  // <-- selectList:여러개 selectOne:딱 하나
    }
}
