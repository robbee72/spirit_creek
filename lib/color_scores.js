<page; standardController="stat_page__c"; standardstylesheets="true"; sidebar="false" >

     

    <apex;:stylesheet; value="{!URLFOR($Resource.jquerySort, 'js/themes/blue/style.css')}"  />
    <apex;:stylesheet; value="{!URLFOR($Resource.jquerySort, 'css/ui-lightness/jquery-ui-1.8.6.custom.css')}"  />

   

  <script; type="text/javascript"; language="javascript"; src="{!URLFOR($Resource.jquerySort, 'js/jquery-latest.js')}"></script>

  <script; type="text/javascript"; language="javascript"; src="{!URLFOR($Resource.jquerySort, 'js/jquery.tablesorter.min.js')}"></script>



</style>

 

<apex;:form >

 

<apex;:sectionHeader; title="for stats" />

<apex;:outputPanel; id="js">

      <script; language="javascript"; type="text/javascript">;

      var j$ = jQuery.noConflict();

       

            function Loading(b){

                  if(b){

                        j$('.loadingIcon').removeClass('hideIt');

                  }else{

                        j$('.loadingIcon').addClass('hideIt');

                  }

            }

            j$(document).ready(function(){

                  j$("#tableToSort").tablesorter({

                    headers: {

                        0: {sorter: 'text'},

                        1: {sorter: 'digit'},

                        2: {sorter: 'digit'},

                        3: {sorter: 'digit'}

                    }

                });

            });  

      </script>

</apex;:outputPanel>

 

<apex;:outputPanel; id="table">    

      <table; id="tableToSort"; class="tablesorter"; border="0"; cellpadding="0"; cellspacing="1">

      <thead; class="rich-table-thead">

          <tr; class="headerRow">

                <th; colspan="1"; scope="col">Agent</th>

                <th; colspan="1"; scope="col">First; Break</th>

                <th; colspan="1"; scope="col">Lunch; Break</th>

                <th; colspan="1"; scope="col">Second; Break</th>

                <th; colspan="1"; scope="col">test; stat</th>

          </tr>

    </thead>

    <tbody>

          <apex;:repeat; value="{!agent_page__c.reps__r}"; var=;"u"><tr; class="dataRow"><td><apex;:outputLink; value="/{!u.id}"; target="_Blank">{;!u.name;}</outputLink></td>

                <td; align="center">{;!u.first_break__c;}</td>

                <td>{;!u.lunch_break__c;}</td>

                <td>{;!u.second_break__c;}</td>

                <td>{;!u.test_stat__c;}</td>         

          </tr>                                  

          </apex;:repeat>

    </tbody></table>

</apex;:outputPanel>

 

</apex;:form>

</apex;:page>;
