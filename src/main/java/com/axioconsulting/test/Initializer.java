package com.axioconsulting.test;

import com.axioconsulting.test.config.Config;
import org.springframework.session.web.context.AbstractHttpSessionApplicationInitializer;

/**
 * Created by benoit on 01/03/15.
 */
public class Initializer  extends AbstractHttpSessionApplicationInitializer{
		public Initializer() {
				super(Config.class);
		}
}
