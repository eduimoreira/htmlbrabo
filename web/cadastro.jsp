<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lancamento de Notas de alunos de uma classe</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/Crud.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/Crud.js"></script>
</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Lançamento <b>Notas</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Adicionar</span></a>
						<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Excluir</span></a>						
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                          
					
                        <th>Materia</th>
                        <th>1°Unidade</th>
			<th>2°Unidade</th>
                        <th>3°Unidade</th>
                        <th>4°Unidade</th>
                          <th>Resultado</th>
                         <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
				
                        <td>Matematica</td>
                        <td>1</td>
			<td>3</td>
                        <td>4</td>
                       <td>5</td>
                       <td>6</td> 
                       <td>7</td>
                        <td>8</td>
                         <td>9</td>
                       <td>
                            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                    <tr>
					
                       <td>Quimica</td>
                        <td></td>
			<td>3</td>
                        <td>4</td>
                       <td>5</td>
                       <td>6</td> 
                       <td>7</td>
                        <td>8</td>
                         <td>9</td>
                        
                         <td>
                            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
					<tr>
				
                        <td>Fisica</td>
                        <td>2</td>
                       <td>3</td>
                       <td>4</td>
                       <td>5</td>
                       <td>6</td> 
                       <td>7</td>
                       <td>8</td>
                       <td>9</td>
                        
                         <td>
                            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                    <tr>
                        
                        <td>Biologia</td>
                        <td>2</td>
			<td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td> 
                        <td>7</td>
                        <td>8</td>
                        <td>9</td>
                        
                         <td>
                            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>					
					<tr>
						
                        <td>Geografia</td>
                        <td>2</td>
			<td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td> 
                        <td>7</td>
                        <td>8</td>
                        <td>9</td>
                        
                        <td>
                            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr> 
                </tbody>
            </table>
			<div class="clearfix">
                    <ul class="pagination">
                    <li >ALUNO </a></li>
                   
                </ul>
            </div>
        </div>
    </div>
	<!-- Edit Modal HTML -->
        <form>
        <div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
                            
					<div class="modal-header">						
						<h4 class="modal-title">Adicionar</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					
                                            <div class="modal-body">					
                                                
                                              <div class="form-group">
							
                                                        <label>Materia</label>
							<input type="text" class="form-control" required>

							<label>1°Unidade</label>
							<input type="text" class="form-control" required>
						
                                                 
							<label>2°Unidade</label>
							<input type="text" class="form-control" required>
						
                                                
                                                
							<label>3°Unidade</label>
							<input type="text" class="form-control" required>
						
                                                
                                                
                                                 
							<label>4°Unidade</label>
							<input type="text" class="form-control" required>
						
                                                 
						
						
                                                
                                               
				
                                                <div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Add">
                                                </div>
                                          </div>
                                               </div>
                                              </div>
                                               </div> 
                                            </div>
                                        </form>
	
	<!-- Edit Modal HTML -->
        <form>
        <div id="editEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
                            
					<div class="modal-header">						
						<h4 class="modal-title">Editar</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
							 <label>Materia</label>
							<input type="text" class="form-control" required>
						
					
						
                                                
							<label>1°Unidade</label>
							<input type="text" class="form-control" required>
						
                                                 
							<label>2°Unidade</label>
							<input type="text" class="form-control" required>
						
                                                
                                                
							<label>3°Unidade</label>
							<input type="text" class="form-control" required>
						
                                                
                                                
                                                 
							<label>4°Unidade</label>
							<input type="text" class="form-control" required>
						
                                                 
							<label>Resultado</label>
							<input type="text" class="form-control" required>
						   		
					

                                            <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                            <input type="submit" class="btn btn-info" value="Save">
                                                
                                        </div>
                                            </div>
                                                </div>
                                                    </div>
                                                           </div>
                                                                </div>
        </form>
	<!-- Delete Modal HTML -->
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">Delete Employee</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<p>Tem certeza de que deseja excluir esses registros?</p>
						<p class="text-warning"><small>Esta ação não pode ser desfeita.</small></p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-danger" value="Delete">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>                                		                            
