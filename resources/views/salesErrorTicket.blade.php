@extends('app_layouts.master')
@section('main_content')


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <div class="container p-4">
    <!-- Main content -->
    <div class="col-12 ">
      <div class="card card-primary card-outline card-outline-tabs">
        <div class="card-header p-0 border-bottom-0">
          <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" id="custom-tabs-four-profile-tab" data-toggle="pill"
                href="#custom-tabs-four-profile" role="tab" aria-controls="custom-tabs-four-profile"
                aria-selected="true">Ticket</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/salesBusLog" role="tab">Bus</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/salesHotelLog" role="tab">Hotel</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/salesCarLog" role="tab">Car</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/salesVisaLog" role="tab">Visa</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/salesMedLog" role="tab">Medical</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/salesGenLog" role="tab">General</a>
            </li>
          </ul>
        </div>
        <div class="card-body">

          <div class="tab-pane fade active show" id="custom-tabs-four-profile" role="tabpanel"
            aria-labelledby="custom-tabs-four-profile-tab">
            <div class="card">
              <div class="card-header border-transparent">
               
                        
                              
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                      <tr>
                      <th>ID</th>
                          <th>Type</th>
                          <th>Issue Date </th>
                          <th> Refernce </th>
                          <th>Passenger Name</th>
                          <th>Ticket Status </th>
                          <th>Airline Code</th>
                          <th>Ticket Number </th>
                          <th>Dept City </th>
                          <th> Dept Date </th>
                          <th> Arr City </th>
                          <th>Dept City2 </th>
                          <th> Dept Date2 </th>
                          <th> Arr City2 </th>
                          <th>Busher Time</th>
                          <th>Supplier</th>
                          <th>Supplier Cost</th>
                          <th>Supplier Cuurency</th>
                          <th>Employee Name</th>
                          <th>Passenger Cost </th>
                          <th>Passenger Currency </th>
                          <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php $i=1 ?>
                      <tr> </tr>
                      
                      @forelse($data as $item)
                      <tr>
                       
                        <input type="hidden" class="id" value="{{$item->bus_id}}">
                       
                        <td>
                          <?php echo $i;?>
                        </td>
                        </td>
                          @if($item->Dep_city2==null)
                          <td> One Way</td>
                          @else
                          <td> Rounded Way</td>
                          @endif
                        <?php
 $m= (explode("|",$item->remark_body));
 $mv=[];
 foreach($m as $mm)
 {
   $ss= explode(",",$mm);
   array_push($mv,$ss); 
    
 } 
?>

                      <?php
                         $issue_date=false;
                       $refernce=false;
                       $passenger_name=false;
                       $airline_id=false;
                       $ticket_status=false;
                       $busher_time=false;
                       $ticket_number=false;
                       $Dep_city=false;
                       $arr_city=false;
                       $dep_date=false;
                       $Dep_city2=false;
                       $arr_city2=false;
                       $dep_date2=false;
                       $busher_time=false;
                       $due_to_supp=false;
                       $provider_cost=false;
                       $provider_cost=false;
                       $cur_id=false;
                       $due_to_customer=false;
                       $passnger_currency=false;
                       $cost=false;
                          $x=0;      

                            for( $i=0;$i<sizeof($mv);$i++){
                        if ($mv[$i][$x]==='Issue_date') {
                         $issue_date=true;
                         break;
                        }
                        else{
                          $issue_date=false;
                        }
                      }
                      for( $i=0;$i<sizeof($mv);$i++){

                      if ($mv[$i][$x]==='refernce') {
                        $refernce=true;
                        break;
                       }
                       else{
                        $refernce=false;
                      }
                      }
                      for( $i=0;$i<sizeof($mv);$i++){

                     if ($mv[$i][$x]==='passenger_name') {
                      $passenger_name=true;
                      break;
                     }
                     else{
                      $passenger_name=false;
                    }
                      }
                      for( $i=0;$i<sizeof($mv);$i++){

                   if ($mv[$i][$x]==='ticket_status') {
                    $ticket_status=true;
                    break;
                   }
                   else{
                    $ticket_status=false;
                  }
                      }
                      for( $i=0;$i<sizeof($mv);$i++){

                        if ($mv[$i][$x]==='airline_name') {
                         $airline_id=true;
                         break;
                        }
                        else{
                         $airline_id=false;
                       }
                           }
                      for( $i=0;$i<sizeof($mv);$i++){

                 if ($mv[$i][$x]==='busher_time') {
                  $busher_time=true;
                  break;
                 }
                 else{
                  $busher_time=false;
                }}
                for( $i=0;$i<sizeof($mv);$i++){

              if ($mv[$i][$x]==='ticket_number') {
                $ticket_number=true;
                break;
               }
               else{
                $ticket_number=false;
              }}
              for( $i=0;$i<sizeof($mv);$i++){
             
             if ($mv[$i][$x]==='Dep_city1') {
              $Dep_city=true;
              break;
             }}
             for( $i=0;$i<sizeof($mv);$i++){
          
           if ($mv[$i][$x]==='arr_city1') {
            $arr_city=true;
            break;
           }}
           for( $i=0;$i<sizeof($mv);$i++){
        
         if ($mv[$i][$x]==='dep_date1') {
          $dep_date=true;
          break;
         }}
       
for( $i=0;$i<sizeof($mv);$i++){
 
  if ($mv[$i][$x]==='Dep_city2') {
   $Dep_city2=true;
   break;
  }}
  for( $i=0;$i<sizeof($mv);$i++){
 
 if ($mv[$i][$x]==='arr_city2') {
 $arr_city2=true;
 break;
 }}
 for( $i=0;$i<sizeof($mv);$i++){
 
 if ($mv[$i][$x]==='dep_date2') {
 $dep_date2=true;
 break;
 }}

 for( $i=0;$i<sizeof($mv);$i++){
 
  if ($mv[$i][$x]==='bursher_time') {
  $bursher_time=true;
  break;
  }}
         for( $i=0;$i<sizeof($mv);$i++){
      
       if ($mv[$i][$x]==='due_to_supp') {
        $due_to_supp=true;
        break;
       }}
    
       for( $i=0;$i<sizeof($mv);$i++){
    
     if ($mv[$i][$x]==='provider_cost') {
      $provider_cost=true;
      break;
     }}
     for( $i=0;$i<sizeof($mv);$i++){

     if ($mv[$i][$x]==='cur_id') {
      $cur_id=true;
      break;
     }}
     for( $i=0;$i<sizeof($mv);$i++){

     if ($mv[$i][$x]==='user_id') {
      $due_to_customer=true;
      break;
     }}
     for( $i=0;$i<sizeof($mv);$i++){

     if ($mv[$i][$x]==='cost') {
      $cost=true;
      break;
     }}
     for( $i=0;$i<sizeof($mv);$i++){

     if ($mv[$i][$x]==='passnger_currency') {
      $passnger_currency=true;
      break;
     }
         }
                      if($issue_date)
                      echo" <td class='text-red'>  $item->Issue_date</td>";
                      else
                      echo"<td>$item->Issue_date</td>";
                       
                    
                      if ($refernce) {
                        echo" <td class='text-red'>  $item->refernce</td>";
                       }
                     else
                     {
                       echo"<td>  $item->refernce</td>";
 
                     } 


                     if ($passenger_name) {
                      echo" <td class='text-red'>  $item->passenger_name</td>";
                     }
                   else
                   {
                     echo"<td> $item->passenger_name</td>";

                   } 

                   if ($ticket_status) {
                     if( $item->ticket_status==1)
                    echo" <td class='text-red'>  OK</td>";
                    elseif ( $item->ticket_status==2)
                    echo" <td class='text-red'>  Issue</td>";
                    elseif ( $item->ticket_status==3)
                    echo" <td class='text-red'>  Void</td>";
                    else
                    echo" <td class='text-red'>  Refund</td>";

                   }
                 else
                 {
                  if( $item->ticket_status==1)
                  echo" <td >  OK</td>";
                  elseif ( $item->ticket_status==2)
                  echo" <td >  Issue</td>";
                  elseif ( $item->ticket_status==3)
                  echo" <td >  Void</td>";
                  else
                  echo" <td>  Refund</td>";
                 } 
                 if ($airline_id) {
                  echo" <td class='text-red'>  $item->airline_name</td>";
                 }
               else
               {
                 echo"<td>  $item->airline_name</td>";
  
               } 
                 if ($ticket_number) {
                  echo" <td class='text-red'>  $item->ticket_number</td>";
                 }
               else
               {
                 echo"<td> $item->ticket_number</td>";
               } 
               if ($Dep_city) {
                echo" <td class='text-red'> $item->Dep_city</td>";
               }
             else
             {
               echo"<td> $item->Dep_city</td>";

             } 

            
           if ($dep_date) {
            echo" <td class='text-red'>  $item->dep_date</td>";
           }
         else
         {
           echo"<td>  $item->dep_date</td>";

         } 
         if ($arr_city) {
          echo" <td class='text-red'> $item->arr_city</td>";
         }
       else
       {
         echo"<td> $item->arr_city</td>";

       } 
         if($item->Dep_city2==null)
         echo" <td > --</td>";     
      else
      {
       if ($Dep_city2) {
        echo"<td>  $item->Dep_city2</td>";
       }
       else{
        echo"<td class='text-red'>  $item->Dep_city2</td>";
   
       }
      } 
        

    
       if($item->dep_date2==null)
      echo" <td > --</td>";     
   else
   {
    if ($dep_date2) {
     echo"<td>  $item->dep_date2</td>";
    }
    else{
     echo"<td class='text-red'>  $item->dep_date2</td>";

    }
   } 
   if($item->arr_city2==null)
   echo" <td > --</td>";     
else
{
 if ($arr_city2) {
  echo"<td> $item->arr_city2</td>";
 }
 else{
  echo"<td class='text-red'> $item->arr_city2</td>";

 }
} 
if($item->busher_time==null)
echo" <td > --</td>";  
if ($item->Dep_city!=null)
{
     

 if ($busher_time) {
  echo"<td>  $item->busher_time</td>";
 }
 else{
  echo"<td class='text-red'>  $item->busher_time</td>";

 
} }
              
         if ($due_to_supp) {
          echo" <td class='text-red'> $item->supplier_name</td>";
         }
       else
       {
         echo"<td> $item->supplier_name</td>";

       } 
       if ($provider_cost) {
        echo" <td class='text-red'> $item->provider_cost</td>";
       }
     else
     {
       echo"<td>  $item->provider_cost</td>";

     } 
     if ($cur_id) {
      echo" <td class='text-red'>  $item->cur_name</td>";
     }
   else
   {
     echo"<td>  $item->cur_name</td>";
  
   } 

     if ($due_to_customer) {
      
      echo" <td class='text-red'>$item->emp_first_name   $item->emp_last_name</td>";
     }
   else
   {
     echo"<td> $item->emp_first_name   $item->emp_last_name</td>";

   } 

  

 if ($cost) {
  echo" <td class='text-red'> $item->cost</td>";
 }
else
{
 echo"<td> $item->cost</td>";

} 
if ($passnger_currency) {
  echo" <td class='text-red'>  $item->passnger_currency</td>";
 }
else
{
 echo"<td>  $item->passnger_currency</td>";

} 
                    
                   
                     
                      ?>
                       
                      
                        <td>
                         
                              <a class="" 
                            href="{{ url('/sales/up_err_ticket/'.$item->tecket_id) }}"><i class="fa fa-pencil-alt text-primary"
                              aria-hidden="true"></i></a>                        </td>
                      </tr>
                      <?php $i++ ?>
@empty
<tr>
                                            <td colspan="10">There is No data 
                  </td>
                                        </tr>                         @endforelse
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                {{$data->links()}}
              </div>
            </div>
          </div>

        </div>
        <!-- /.card -->
      </div>
    </div>
  </div>
</div>
</div>


<script>



  $(document).ready(function () {


    $("#save").click(function () {
      console.log('save');
      var bus_id = $('#bus_id').val();
      var emp_id = $('#bus_emp_id').val();
      var remark_id = $('#bus_remark_id').val();
      var remark_body = $('#remark_body').val();
      var service_id = $('#bus_service_id').val();
      var issue_date = $('#issue_date').val();
      var refernce = $('#refernce').val();
      var passenger_name = $('#passenger_name').val();
      var ticket_status = $('#ticket_status').val();
      var ticket_number = $('#ticket_number3').val();
      var Dep_city = $('#Dep_city').val();
      var arr_city = $('#arr_city').val();
      var dep_date = $('#dep_date').val();
      var busher_time = $('#busher_time').val();
      var due_to_supp = $('#due_to_supp').val();
      var provider_cost = $('#provider_cost').val();
      var cur_id = $('#cur_id').val();
      var due_to_customer = $('#due_to_customer').val();
      var cost = $('#cost').val();
      var passnger_currency = $('#passnger_currency').val();
      // console.log('remark_body');
      // console.log(remark_body);
      var remark_body = {
        'issue_date': issue_date,
        'refernce': refernce,
        'passenger_name': passenger_name,
        'ticket_status': ticket_status,
        'ticket_number': ticket_number,
        'Dep_city': Dep_city,
        'arr_city': arr_city,
        'dep_date': dep_date,
        'busher_time': busher_time,
        'due_to_supp': due_to_supp,
        'provider_cost': provider_cost,
        'cur_id': cur_id,
        'due_to_customer': due_to_customer,
        'cost': cost,
        'passnger_currency': passnger_currency

      }
      console.log('mycheck');
      console.log(remark_body);
      var bus_id = $('#bus_id').val();
      var emp_id = $('#bus_emp_id').val();
      var remark_id = $('#bus_remark_id').val();
      var service_id = $('#bus_service_id').val();
      var ticket_number10 = $('#ticket_number10').val();
      $.ajax({
        url: "{{url('/displaySalesManager/saved')}}",
        data: { remark_body: remark_body, bus_id: bus_id, emp_id: emp_id, remark_id: remark_id, service_id: service_id, ticket_number10: ticket_number10 },
        success: function (data) {
          console.log('sec');
          $('#add').remove();
          swal("Send Secussful", {
            icon: "success",
          }).then((willDelete) => {
            location.reload();
          });
        },
        error: function () {
          console.log('err');
        }

      });
    });

    $('.sendbtn').click(function (e) {
      e.preventDefault();
      var id = $(this).closest("tr").find('.id').val();
      console.log(id);

      //alert(id);
      swal({
        title: "Are you sure?",
        text: "Do you want send this Service!",
        icon: "success",
        buttons: true,
        dangerMode: true,
      })
        .then((willDelete) => {
          if (willDelete) {
            var data = {
              '_token': $('input[name=_token]').val(),
              'id': id,
            };

            $.ajax({
              headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              },
              type: "GET",
              url: '/salesManager/bus_send/' + id,
              data: data,
              success: function (response) {
                // cartdata=response;
                //console.log('cartdata');
                console.log(response[0]);

                if (response[0] == '<') {
                  swal("Send Successfully", {
                    icon: "success",
                  }).then((willDelete) => {
                    location.reload();
                  });
                }
                else {
                  swal("upload file before", {
                    icon: "error",
                  }).then((willDelete) => {
                    location.reload();
                  });


                }
              }
            });
          }


        });
    });


  });
</script>



@endsection