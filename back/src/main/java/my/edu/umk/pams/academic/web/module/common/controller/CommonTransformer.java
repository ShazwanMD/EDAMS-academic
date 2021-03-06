package my.edu.umk.pams.academic.web.module.common.controller;

import my.edu.umk.pams.academic.common.model.AdBankCode;
import my.edu.umk.pams.academic.common.model.AdCityCode;
import my.edu.umk.pams.academic.common.model.AdCountryCode;
import my.edu.umk.pams.academic.common.model.AdDunCode;
import my.edu.umk.pams.academic.common.model.AdEthnicityCode;
import my.edu.umk.pams.academic.common.model.AdGenderCode;
import my.edu.umk.pams.academic.common.model.AdGradeCode;
import my.edu.umk.pams.academic.common.model.AdMaritalCode;
import my.edu.umk.pams.academic.common.model.AdNationalityCode;
import my.edu.umk.pams.academic.common.model.AdParliamentCode;
import my.edu.umk.pams.academic.common.model.AdRaceCode;
import my.edu.umk.pams.academic.common.model.AdReligionCode;
import my.edu.umk.pams.academic.common.model.AdStateCode;
import my.edu.umk.pams.academic.common.model.AdStudyCenter;
import my.edu.umk.pams.academic.common.model.AdStudyMode;
import my.edu.umk.pams.academic.web.module.common.vo.BankCode;
import my.edu.umk.pams.academic.web.module.common.vo.CityCode;
import my.edu.umk.pams.academic.web.module.common.vo.CountryCode;
import my.edu.umk.pams.academic.web.module.common.vo.DunCode;
import my.edu.umk.pams.academic.web.module.common.vo.EthnicityCode;
import my.edu.umk.pams.academic.web.module.common.vo.GenderCode;
import my.edu.umk.pams.academic.web.module.common.vo.GradeCode;
import my.edu.umk.pams.academic.web.module.common.vo.MaritalCode;
import my.edu.umk.pams.academic.web.module.common.vo.NationalityCode;
import my.edu.umk.pams.academic.web.module.common.vo.ParliamentCode;
import my.edu.umk.pams.academic.web.module.common.vo.RaceCode;
import my.edu.umk.pams.academic.web.module.common.vo.ReligionCode;
import my.edu.umk.pams.academic.web.module.common.vo.StateCode;
import my.edu.umk.pams.academic.web.module.common.vo.StudyCenter;
import my.edu.umk.pams.academic.web.module.common.vo.StudyMode;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author PAMS
 */
@Component("commonTransformer")
public class CommonTransformer {
	//====================================================================================================
	// STUDY_CENTER
	//====================================================================================================

	public StudyCenter toStudyCenterVo(AdStudyCenter e) {
        if (null == e) return null;
		StudyCenter vo = new StudyCenter();
	        vo.setId(e.getId());
	        vo.setCode(e.getCode());
	        vo.setDescription(e.getDescription());
	        return vo;
	        }

	public List<StudyCenter> toStudyCenterVos(List<AdStudyCenter> e) {
	        List<StudyCenter> vos = e.stream()
	        .map((e1) -> toStudyCenterVo(e1))
	        .collect(Collectors.toList());
	        return vos;
	        }


	//====================================================================================================
	// STUDY_MODE
	//====================================================================================================

	public StudyMode toStudyModeVo(AdStudyMode e) {
	    StudyMode vo = new StudyMode();
	        vo.setId(e.getId());
	        vo.setCode(e.getCode());
	        vo.setPrefix(e.getPrefix());
	        vo.setDescription(e.getDescription());
	        return vo;
	        }

	public List<StudyMode> toStudyModeVos(List<AdStudyMode> e) {
	        List<StudyMode> vos = e.stream()
	        .map((e1) -> toStudyModeVo(e1))
	        .collect(Collectors.toList());
	        return vos;
	        }


	//====================================================================================================
	// GRADE_CODE
	//====================================================================================================

	public GradeCode toGradeCodeVo(AdGradeCode e) {
	    GradeCode vo = new GradeCode();
	        vo.setId(e.getId());
	        vo.setCode(e.getCode());
	        vo.setOrdinal(e.getOrdinal());
	        vo.setDescription(e.getDescription());
	        vo.setPoint(e.getPoint());
	        vo.setMax(e.getMax());
	        vo.setMin(e.getMin());
	        return vo;
	        }

	public List<GradeCode> toGradeCodeVos(List<AdGradeCode> e) {
	        List<GradeCode> vos = e.stream()
	        .map((e1) -> toGradeCodeVo(e1))
	        .collect(Collectors.toList());
	        return vos;
	        }

    //====================================================================================================
    // BANK_CODE
    //====================================================================================================

    public BankCode toBankCodeVo(AdBankCode e) {
        if (null == e) return null;
        BankCode vo = new BankCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setName(e.getName());
        return vo;
    }

    public List<BankCode> toBankCodeVos(List<AdBankCode> e) {
        List<BankCode> vos = e.stream()
                .map((e1) -> toBankCodeVo(e1))
                .collect(Collectors.toList());
        return vos;
    }

    //====================================================================================================
    //  MARITAL_CODE
    //====================================================================================================

    public MaritalCode toMaritalCodeVo(AdMaritalCode e) {
        MaritalCode vo = new MaritalCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setDescriptionEn(e.getDescriptionEn());
        vo.setDescriptionMs(e.getDescriptionMs());
        return vo;
    }

    public List<MaritalCode> toMaritalCodeVos(List<AdMaritalCode> e) {
        List<MaritalCode> vos = e.stream()
                .map((e1) -> toMaritalCodeVo(e1))
                .collect(Collectors.toList());
        return vos;
    }

    //====================================================================================================
    //  DUN_CODE
    //====================================================================================================

    public DunCode toDunCodeVo(AdDunCode e) {
        if (null == e) return null;
        DunCode vo = new DunCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setDescription(e.getDescription());
        return vo;
    }

    public List<DunCode> toDunCodeVos(List<AdDunCode> e) {
        List<DunCode> vos = e.stream()
                .map((e1) -> toDunCodeVo(e1))
                .collect(Collectors.toList());
        return vos;
    }

    //====================================================================================================
    //  CITY_CODE
    //====================================================================================================

    public CityCode toCityCodeVo(AdCityCode e) {
        if (null == e) return null;
        CityCode vo = new CityCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setDescription(e.getDescription());
        return vo;
    }

    public List<CityCode> toCityCodeVos(List<AdCityCode> e) {
        List<CityCode> vos = e.stream()
                .map((e1) -> toCityCodeVo(e1))
                .collect(Collectors.toList());
        return vos;
    }

    //====================================================================================================
    // COUNTRY_CODE
    //====================================================================================================

    public CountryCode toCountryCodeVo(AdCountryCode e) {
        if (null == e) return null;
        CountryCode vo = new CountryCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setDescriptionEn(e.getDescriptionEn());
        vo.setDescriptionMs(e.getDescriptionMs());
        return vo;
    }

    public List<CountryCode> toCountryCodeVos(List<AdCountryCode> e) {
        List<CountryCode> vos = e.stream()
                .map((e1) -> toCountryCodeVo(e1))
                .collect(Collectors.toList());
        return vos;
    }

    //====================================================================================================
    //  STATE_CODE
    //====================================================================================================

    public StateCode toStateCodeVo(AdStateCode e) {
        if (null == e) return null;
        StateCode vo = new StateCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setDescriptionEn(e.getDescriptionEn());
        vo.setDescriptionMs(e.getDescriptionMs());
        vo.setCountryCode(toCountryCodeVo(e.getCountryCode()));
        return vo;
    }

    public List<StateCode> toStateCodeVos(List<AdStateCode> e) {
        List<StateCode> vos = e.stream()
                .map((e1) -> toStateCodeVo(e1))
                .collect(Collectors.toList());
        return vos;
    }

    //====================================================================================================
    //GENDER_CODE
    //====================================================================================================

    public GenderCode toGenderCodeVo(AdGenderCode e) {
        if (null == e) return null;
        GenderCode vo = new GenderCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setDescription(e.getDescription());
        return vo;
    }

    public List<GenderCode> toGenderCodeVos(List<AdGenderCode> e) {
        List<GenderCode> vos = e.stream()
                .map((e1) -> toGenderCodeVo(e1))
                .collect(Collectors.toList());
        return vos;
    }

    //====================================================================================================
    //  RACE_CODE
    //====================================================================================================

    public RaceCode toRaceCodeVo(AdRaceCode e) {
        if (null == e) return null;
        RaceCode vo = new RaceCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setDescriptionEn(e.getDescriptionEn());
        vo.setDescriptionMs(e.getDescriptionMs());
        return vo;
    }

    public List<RaceCode> toRaceCodeVos(List<AdRaceCode> e) {
        List<RaceCode> vos = e.stream()
                .map((e1) -> toRaceCodeVo(e1))
                .collect(Collectors.toList());
        return vos;
    }
    

  //====================================================================================================
  // PARLIAMENT_CODE
  //====================================================================================================

  public ParliamentCode toParliamentCodeVo(AdParliamentCode e) {
      ParliamentCode vo = new ParliamentCode();
          vo.setId(e.getId());
          vo.setCode(e.getCode());
          vo.setDescription(e.getDescription());
          return vo;
          }

  public List<ParliamentCode> toParliamentCodeVos(List<AdParliamentCode> e) {
          List<ParliamentCode> vos = e.stream()
          .map((e1) -> toParliamentCodeVo(e1))
          .collect(Collectors.toList());
          return vos;
          }
  
  

//====================================================================================================
// RELIGION_CODE
//====================================================================================================

public ReligionCode toReligionCodeVo(AdReligionCode e) {
    ReligionCode vo = new ReligionCode();
        vo.setId(e.getId());
        vo.setCode(e.getCode());
        vo.setDescriptionMs(e.getDescriptionMs());
        vo.setDescriptionEn(e.getDescriptionEn());
        return vo;
        }

public List<ReligionCode> toReligionCodeVos(List<AdReligionCode> e) {
        List<ReligionCode> vos = e.stream()
        .map((e1) -> toReligionCodeVo(e1))
        .collect(Collectors.toList());
        return vos;
        }


//====================================================================================================
//NATIONALITY_CODE
//====================================================================================================

public NationalityCode toNationalityCodeVo(AdNationalityCode e) {
  NationalityCode vo = new NationalityCode();
      vo.setId(e.getId());
      vo.setCode(e.getCode());
      vo.setDescriptionMs(e.getDescriptionMs());
      vo.setDescriptionEn(e.getDescriptionEn());
      return vo;
      }

public List<NationalityCode> toNationalityCodeVos(List<AdNationalityCode> e) {
      List<NationalityCode> vos = e.stream()
      .map((e1) -> toNationalityCodeVo(e1))
      .collect(Collectors.toList());
      return vos;
      }


//====================================================================================================
//ETHNICITY_CODE
//====================================================================================================

public EthnicityCode toEthnicityCodeVo(AdEthnicityCode e) {
  EthnicityCode vo = new EthnicityCode();
      vo.setId(e.getId());
      vo.setCode(e.getCode());
      vo.setDescriptionMs(e.getDescriptionMs());
      vo.setDescriptionEn(e.getDescriptionEn());
      return vo;
      }

public List<EthnicityCode> toEthnicityCodeVos(List<AdEthnicityCode> e) {
      List<EthnicityCode> vos = e.stream()
      .map((e1) -> toEthnicityCodeVo(e1))
      .collect(Collectors.toList());
      return vos;
      }




}
