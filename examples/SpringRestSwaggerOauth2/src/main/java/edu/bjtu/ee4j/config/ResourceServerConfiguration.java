package edu.bjtu.ee4j.config;



import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@EnableResourceServer
//@RestController
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter
{
//	  @RequestMapping("/publica")
//	  public String publico() {
//	    return "Pagina Publica";
//	  }
//	  @RequestMapping("/privada")
//	  public String privada() {
//	    return "Pagina Privada";
//	  }
//	  @RequestMapping("/admin")
//	  public String admin() {
//	    return "Pagina Administrador";
//	  }

	@Override
		public void configure(HttpSecurity http) throws Exception {
			http
			.authorizeRequests().antMatchers("/oauth/token", "/oauth/authorize**").permitAll();
//			 .anyRequest().authenticated();
			http.requestMatchers().antMatchers("/product/list")
			.and().authorizeRequests()
			.antMatchers("/product/list").access("hasRole('USER')")
			.and().requestMatchers().antMatchers("/product/delete")
			.and().authorizeRequests()
			.antMatchers("/product/delete").access("hasRole('ADMIN')");
		}   

}

