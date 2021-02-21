<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.html" %>
    </head>
    <body>
        <!-- Barra de navegação - Cliente -->
        <nav class="navbar">
            <div class="container">
                <a class="navbar-brand">
                    <img src="assets/imagens/logo.png" alt="Logo OrangePDV" width="92" class="d-inline-block align-top">
                </a>
                <button class="btn btn-restrito" data-bs-toggle="modal" data-bs-target="#modalLogin">Restrito</button>
            </div>
        </nav>
        
        <!-- Mensagens -->
            
            <div class="toast align-items-center m-3" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="d-flex">
                    <div class="toast-body">
                        <span id="mensagem">
                            <%= request.getAttribute("mensagem") %>
                        </span>
                    </div>
                    <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
        
        <!-- Exibir produtos -->
        
        
        
        
        <!-- Modal Login -->
        
        <div class="modal fade" tabindex="-1" id="modalLogin">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content p-4">
                    <div class="modal-header">
                        <h5 class="modal-title">Login</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Formulário Login -->
                        <form action="UsuariosController" method="POST">
                            <input type="hidden" name="acao" value="login" required>
                            <div class="mb-4">
                                <input type="text" class="form-control cpf" name="cpf" placeholder="CPF" required>
                            </div>
                            <div class="mb-4">
                                <input type="password" class="form-control" name="senha" placeholder="Senha" required>
                            </div>
                            <div class="mb-4">
                                <input type="submit" class="form-control btn btn-entrar" id="exampleFormControlInput1" value="Entrar">
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
        
        <%@include file="scripts.html" %>
        <script src="js/cpf-mask.js"></script>
        
        <script>
            $( document ).ready(function() {
                if ($('#mensagem').text().trim() != "null") {
                    $('.toast').toast('show');
                }
            });
        </script>
    </body>
</html>
