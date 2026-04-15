@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCS02_POSTCODE'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_CS02_POSTCODE
  as select from ZCS02_POSTCODE
{
  key postcode as Postcode,
  city as City,
  country as Country
}
