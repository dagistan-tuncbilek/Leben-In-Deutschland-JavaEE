<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navbar3.jspf"%>
<br/>
<section>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<h2>PRÜFUNG</h2>
		    <h4>In diesem Test beantworten Sie 33 Fragen zu Deutschland. 
		    	30 Fragen beziehen sich auf Deutschland und 3 Fragen beziehen sich auf Staaten..</h4>
		</div>
	</div>
</section>
<br/><br/>
<section>
	<div class="row">
		<div class="col-sm-2"></div>
		<form class="col-sm-6"  action="QuizServlet" METHOD="POST">
			<c:forEach items="${questions}" var="question">
				<table class="table table-bordered">
					<tbody>
						<tr class="table-warning">
							<th>${question.thema}. ${question.quest}</th>
						<tr>
					</tbody>
				</table>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="radio${question.thema}" value="A" id="answerA${question.thema}" >
				  <label class="form-check-label" for="answerA${question.thema}" >
				    A: ${question.answerA}
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="radio${question.thema}" value="B" id="answerB${question.thema}">
				  <label class="form-check-label" for="answerB${question.thema}">
				    B: ${question.answerB}
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="radio${question.thema}" value="C" id="answerC${question.thema}">
				  <label class="form-check-label" for="answerC${question.thema}">
				    C: ${question.answerC}
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="radio${question.thema}" value="D"  id="answerD${question.thema}">
				  <label class="form-check-label" for="answerD${question.thema}">
				    D: ${question.answerD}
				  </label>
				</div> <br/>  													
				<c:if test="${question.hasPhoto!=null}">
					<div class="border border-dark">
						<img src="images/${question.number}.png"
						class="rounded mx-auto d-block" width="450" height="270">
					</div>
				</c:if>				
					<br />
			</c:forEach>
			 <button class="btn btn-primary" type="submit" value="Test Abgeschlossen">Test Abgeschlossen</button>
		</form>
			
<%@ include file="../common/rightimg.jspf"%>
		
	</div>
		<br/><br/>
</section>


<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="webjars/popper.js/1.14.3/popper.min.js"></script>
<script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>