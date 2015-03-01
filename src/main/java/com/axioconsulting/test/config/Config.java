package com.axioconsulting.test.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;

/**
 * Created by benoit on 01/03/15.
 */
@Configuration
@EnableRedisHttpSession
public class Config {

		@Bean
		public JedisConnectionFactory connectionFactory() {
				JedisConnectionFactory factory = new JedisConnectionFactory();
				factory.setHostName("db");
				return factory;
		}
}
