<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah data kelas</title>
        <%@include file="../layout/header.jsp" %>
        <script type="text/javascript">
            $(document).ready(function () {
                $('select').material_select();
            });
        </script>
    </head>
    <body class="container">
        <h3>Data Kelas</h3>

        <springf:form method="post" action="tambahBaru" commandName="kelas">
            <div class="input-field">
                <springf:label path="kode">Kode</springf:label>
                <springf:input path="kode"/>
            </div>
            <div class="input-field">
                <springf:label path="nama">Nama</springf:label>
                <springf:input path="nama"/>                
            </div>
            <div class="input-field">
                <springf:select path="jurusan.id">
                    <c:forEach items="${daftarJurusan}" var="jurusan">
                        <springf:option value="${jurusan.id}">${jurusan.kode} - ${jurusan.nama}</springf:option>
                    </c:forEach>
                </springf:select>
            </div>
            <div class="input-field">
                <input class="btn waves-effect waves-light" type="submit" value="Kirim"/>        
                &nbsp;
                <a class="btn waves-effect waves-light" href="<spring:url value="/kelas/daftar"/>">Kembali</a>
            </div>
        </springf:form>
    </body>
</html>
