using {riskmanagement as rm} from '../db/schema';

@path : 'service/risk'
service RiskService {
    //entity Risks as projection on rm.Risks;
    //### BEGIN OF INSERT
    entity Risks @(restrict : [
        {
            grant : ['READ'],
            to    : ['RiskViewer']
        },
        {
            grant : ['*'],
            to    : ['RiskManager']
        }
    ])                      as projection on rm.Risks;

    //### END OF INSERT
    annotate Risks with @odata.draft.enabled;

    //entity Mitigations      as projection on rm.Mitigations;
    //### BEGIN OF INSERT
    entity Mitigations @(restrict : [
        {
            grant : ['READ'],
            to    : ['RiskViewer']
        },
        {
            grant : ['*'],
            to    : ['RiskManager']
        }
    ])                      as projection on rm.Mitigations;

    //### END OF INSERT
    annotate Mitigations with @odata.draft.enabled;
    entity BusinessPartners as projection on rm.BusinessPartners;
}
