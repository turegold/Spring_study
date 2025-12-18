package hello.hello_spring;

import hello.hello_spring.repository.MemberRepository;
import hello.hello_spring.repository.MemoryMemberRepository;
import hello.hello_spring.service.MemberService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SpringConfig {

    // memberService를 스프링 빈에 등록
    // Repository를 연결
    @Bean
    public MemberService memberService(){
        return new MemberService(memberRepository());
    }

    // memberRepository를 스프링 빈에 등록
    @Bean
    public MemberRepository memberRepository(){
        return new MemoryMemberRepository();
    }
}
