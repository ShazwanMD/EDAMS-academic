package my.edu.umk.pams.academic.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.integration.channel.QueueChannel;
import org.springframework.integration.dsl.IntegrationFlow;
import org.springframework.integration.dsl.IntegrationFlows;
import org.springframework.integration.dsl.support.Transformers;
import org.springframework.integration.event.inbound.ApplicationEventListeningMessageProducer;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;

import my.edu.umk.pams.academic.identity.event.GuardianEvent;
import my.edu.umk.pams.academic.identity.event.MinAmountEvent;
import my.edu.umk.pams.academic.planner.event.AcademicSessionEvent;
import my.edu.umk.pams.academic.planner.event.CohortEvent;
import my.edu.umk.pams.academic.planner.event.FacultyEvent;
import my.edu.umk.pams.academic.planner.event.ProgramEvent;
import my.edu.umk.pams.academic.term.event.AdmissionEvent;
import my.edu.umk.pams.academic.term.event.EnrollmentEvent;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.integration.json.ObjectToJsonTransformer.ResultType.STRING;

/**
 * @author PAMS
 */
@Configuration
public class IntegrationConfig {

    private static final Logger LOG = LoggerFactory.getLogger(IntegrationConfig.class);

    @Autowired
    private Environment env;

    @Autowired
    private ApplicationContext applicationContext;

    @Autowired
    private MessageHandler jmsMessageHandler;

    @Bean
    public ApplicationEventListeningMessageProducer applicationEventAdapter() {
        ApplicationEventListeningMessageProducer producer = new ApplicationEventListeningMessageProducer();
        producer.setApplicationContext(applicationContext);
        producer.setEventTypes(
                AdmissionEvent.class,
                EnrollmentEvent.class,
                ProgramEvent.class,
                CohortEvent.class,
                GuardianEvent.class,
                FacultyEvent.class,
                MinAmountEvent.class,
                AcademicSessionEvent.class);
        producer.setPayloadExpressionString("payload");
        return producer;
    }

    @Bean
    public MessageChannel eventChannel() {
        return new QueueChannel();
    }

    @Bean
    public IntegrationFlow integrationFlow() {
        return IntegrationFlows.from(applicationEventAdapter())
                .transform(Transformers.toJson(STRING, APPLICATION_JSON_VALUE))
                .handle((payload, headers) -> payload)
                .handle(jmsMessageHandler)
                .get();
    }
}
