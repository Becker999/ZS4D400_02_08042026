@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCS02_CUSTOMERS'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_CS02_CUSTOMERS
  as select from zcs02_customers
{
  key customerid as Customerid,
  salutation as Salutation,
  last_name as LastName,
  first_name as FirstName,
  street as Street,
  city as City,
  
  @Consumption.valueHelpDefinition: [{ entity.name: 'I_Country',
                                       entity.element: 'Country'}]
  country as Country,
  
  @Consumption.valueHelpDefinition: [{ entity.name: 'ZR_CS2_PostcodHalp',
                                         entity.element: 'Postcode'}]
  postcode as Postcode,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
