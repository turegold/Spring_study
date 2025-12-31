package hello.demo;

import hello.demo.member.MemberRepository;
import hello.demo.member.MemoryMemberRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;

@Configuration
// @가 붙은 객체들을 스프링 컨테이너에서 빈으로 관리하겠다!
@ComponentScan(

        // 수동으로 등록한 것들은 제외해야 함
        excludeFilters = @ComponentScan.Filter(type = FilterType.ANNOTATION, classes = Configuration.class)
)

public class AutoAppConfig {


}
