     $(document).ready(function(){
        $('#loginForm').submit(function (event) {
           // submit되는 것을 막기
           event.preventDefault();
           
           
           //id, pwd 값 가져오기
           var id = $("#id").val();
           var pwd = $("#password").val();
           console.log(id, pwd);
           // 서버로 post 방식 전송 (ajax)
           $.post("/WebClass/login",
                 {id: id, pwd:pwd},
                 function(data) {
                    //서버로부터 응답을 받으면
                    //alert(data.form.id+'님 로그인되었습니다.');
                    var myModal= $('#myModal');
                    myModal.modal();
                    myModal.find('.modal-body').text(data.form.id+'님 로그인되었습니다.');               
                 });
        });
     });
//모달종료이벤투
     $('#myModal').on('hidden.bs.modal', function(e){
    	 location.href='mainIn.html';
     })