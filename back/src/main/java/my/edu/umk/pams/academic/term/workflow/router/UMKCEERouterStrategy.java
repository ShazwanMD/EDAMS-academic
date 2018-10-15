package my.edu.umk.pams.academic.term.workflow.router;

import java.util.Arrays;
import java.util.List;

import my.edu.umk.pams.academic.common.router.RouterStrategySupport;

public class UMKCEERouterStrategy extends RouterStrategySupport {

	public UMKCEERouterStrategy() {

	}

	@Override
	public String findVerifierCandidate() {
		return "GRP_KRN_ADM_UMKCEE"; // cps-kerani
	}

	@Override
	public List<String> findRegistererCandidates() {
		return Arrays.asList("GRP_KRN_ADM_UMKCEE","GRP_PGW_ADM_UMKCEE", "GRP_ADM", "GRP_STDN");
	}

	@Override
	public List<String> findVerifierCandidates() {
		return Arrays.asList("GRP_KRN_ADM_UMKCEE","GRP_PGW_ADM_UMKCEE","GRP_ADM", "GRP_STDN");
	}

}
