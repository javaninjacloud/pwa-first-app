package com.pwa.webpush;

import java.util.Properties;

import javax.sql.DataSource;
import org.hibernate.SessionFactory;
import org.springframework.core.env.Environment;
import org.springframework.boot.SpringApplication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.jpa.JpaRepositoriesAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

@SpringBootApplication
@EnableAutoConfiguration(exclude = {DataSourceAutoConfiguration.class,DataSourceTransactionManagerAutoConfiguration.class,HibernateJpaAutoConfiguration.class,JpaRepositoriesAutoConfiguration.class})
public class IPushApplication extends SpringBootServletInitializer{

	@Autowired
    private Environment env;
	
	public static void main(String[] args) {
		SpringApplication.run(IPushApplication.class, args);
	}
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(IPushApplication.class);
	}
	@Bean(name = "dataSource")
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
 
        // See: application.properties
        dataSource.setDriverClassName(env.getProperty("spring.datasource.driver-class-name"));
        dataSource.setUrl(env.getProperty("spring.datasource.url"));
        dataSource.setUsername(env.getProperty("spring.datasource.username"));
        dataSource.setPassword(env.getProperty("spring.datasource.password"));
 
        System.out.println("## getDataSource: ==========================================" + dataSource);
 
        return dataSource;
    }
	
	 @Autowired
	    @Bean(name = "sessionFactory")
	    public SessionFactory getSessionFactory(DataSource dataSource) throws Exception {
	        Properties properties = new Properties();
	 
	        // See: application.properties  
	        properties.put("hibernate.dialect", env.getProperty("spring.jpa.properties.hibernate.dialect"));
	        properties.put("hibernate.show_sql", env.getProperty("spring.jpa.show-sql"));
	        properties.put("current_session_context_class", //
	                env.getProperty("spring.jpa.properties.hibernate.current_session_context_class"));
	 
	        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
	 
	        sessionFactory.setPackagesToScan("com.pwa.webpush.entity");
	        sessionFactory.setDataSource(dataSource);
	        sessionFactory.setHibernateProperties(properties);
	        sessionFactory.afterPropertiesSet();
	       
	        //
	        SessionFactory sf = sessionFactory.getObject();
	        System.out.println("## getSessionFactory: #######################" + sf);
	        return sf;
	    }
	 	@Autowired
	    @Bean(name = "transactionManager")
	    public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
	        HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
	        System.out.println("$$$$$$$$$$$$$$$$$$ "+transactionManager+" $$$$$$$$$$$$$$$$$$");
	        return transactionManager;
	    }
	
	
}
