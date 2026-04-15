@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Suchhilfe PLZ'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_CS2_PostcodHalp as select from zcs02_postcode
{
    key postcode as Postcode,
    city as City,
    country as Country
   }
