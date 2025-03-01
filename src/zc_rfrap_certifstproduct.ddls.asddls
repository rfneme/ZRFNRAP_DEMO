@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
define view entity zc_rfrap_certifstproduct as projection on zi_rfrap_certifstProduct
{
    key StateUuid,
    CertUuid,
    Matnr,
    Description,
    Version,
    Status,
    StatusOld,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Certif: redirected to parent zc_rfrap_certifproduct
}
