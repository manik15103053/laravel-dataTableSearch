<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Data live Search</title>
</head>
<body>
    <div class="container mt-5 mb-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="col">
                            <div class="float-left">
                               <h4>User Data Table live Search ||
                                <a href="{{ route('post-data-search') }}">Post Data</a>
                               </h4>
                            </div>
                        </div>
                        <div class="col">
                            <div class="float-right">
                                <form id="search-form">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <input type="text" id="search-input" name="query" class="form-control" placeholder="Search....">
                                        </div>
                                        {{-- <div class="col-md-3">
                                            <button type="submit" class="btn btn-info">Search</button>
                                        </div> --}}
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped" id="search-results">
                            <thead>
                              <tr>
                                <th width="5%" scope="col">Sl</th>
                                <th width="10%" scope="col">Name</th>
                                <th width="10%" scope="col">Email</th>
                                <th width="10%" scope="col">Phone</th>
                                <th width="10%" scope="col">Address</th>
                                <th width="10%" scope="col">Country</th>
                                {{-- <th width="10%" scope="col">Description</th> --}}
                              </tr>
                            </thead>
                            <tbody>
                                @foreach($users as $key => $value)
                                    <tr>
                                        <td>{{ $users->firstItem() + $key }}</td>
                                        <td>{{ $value->name }}</td>
                                        <td>{{ $value->email }}</td>
                                        <td>{{ $value->phone }}</td>
                                        <td>{{ $value->address }}</td>
                                        <td>{{ $value->country }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        
                            {{ $users->links() }}
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script>
    $(document).ready(function(){
        $("#search-input").on('keyup',function(){
            var query = $(this).val();
            $.ajax({
                url: "{{ route('data-search') }}",
                type: "GET",
                data:{query: query},
                success: function(data){
                    $("tbody").html(data);
                }
            });
        });
    });
 </script>
 <script type="text/javascript">
    $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
    </script>
</body>
</html>