<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navbar3.jspf"%>

<section>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8"><br>
			<h2 class="text-center">TESTERGEBNIS</h2><br>
  			<ul class="list-group list-group-horizontal justify-content-center">
			  <li class="list-group-item list-group-item-success font-weight-bolder">Richtige Antwort : ${trueAnswer}</li>
			  <li class="list-group-item list-group-item-warning font-weight-bolder">Falsche Antwort : ${falseAnswer}</li>
			  <li class="list-group-item font-weight-bolder">Leere Antwort : ${emptyAnswer}</li>
			</ul>
			<br>
			  <a class="btn btn-primary" href="SelectLand.html" role="button">Neu Prüfung</a><br><br>
		</div>
	</div>
</section>

<section>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-6">
			<c:forEach items="${questions}" var="question">
				<table class="table table-bordered">
					<tbody>
						<tr class="">
							<th>${question.thema}. ${question.quest}</th>
						<tr>
					</tbody>
				</table>

				<table class="table table-hover table-bordered">
					<tbody>
						<tr>
							<c:choose>
								<c:when test="${question.trueAnswer=='A'}">
									<c:choose>
										<c:when test="${question.studentAnswer==null}">									
											<td style="width:50%" class="table-secondary font-weight-bolder">A: ${question.answerA}</td>
										</c:when>
										<c:otherwise>
											<td style="width:50%" class="table-primary font-weight-bolder">A: ${question.answerA}</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								
								<c:otherwise>
									<c:choose>
										<c:when test="${question.studentAnswer=='A'}">
											<td style="width:50%" class="text-danger font-weight-bolder">A: ${question.answerA}</td>
										</c:when>
										<c:otherwise>	
											<td style="width:50%">A: ${question.answerA}</td>
										</c:otherwise>
									</c:choose>							
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${question.trueAnswer=='B'}">
									<c:choose>
										<c:when test="${question.studentAnswer==null}">									
											<td style="width:50%" class="table-secondary font-weight-bolder">B: ${question.answerB}</td>
										</c:when>
										<c:otherwise>
											<td style="width:50%" class="table-primary font-weight-bolder">B: ${question.answerB}</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${question.studentAnswer=='B'}">
											<td style="width:50%" class="text-danger font-weight-bolder">B: ${question.answerB}</td>
										</c:when>
										<c:otherwise>	
											<td style="width:50%">B: ${question.answerB}</td>
										</c:otherwise>
									</c:choose>							
								</c:otherwise>
							</c:choose>
						</tr>

						<tr>
							<c:choose>
								<c:when test="${question.trueAnswer=='C'}">
									<c:choose>
										<c:when test="${question.studentAnswer==null}">									
											<td style="width:50%" class="table-secondary font-weight-bolder">C: ${question.answerC}</td>
										</c:when>
										<c:otherwise>
											<td style="width:50%" class="table-primary font-weight-bolder">C: ${question.answerC}</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${question.studentAnswer=='C'}">
											<td style="width:50%" class="text-danger font-weight-bolder">C: ${question.answerC}</td>
										</c:when>
										<c:otherwise>	
											<td style="width:50%">C: ${question.answerC}</td>
										</c:otherwise>
									</c:choose>							
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${question.trueAnswer=='D'}">
									<c:choose>
										<c:when test="${question.studentAnswer==null}">									
											<td style="width:50%" class="table-secondary font-weight-bolder">D: ${question.answerD}</td>
										</c:when>
										<c:otherwise>
											<td style="width:50%" class="table-primary font-weight-bolder">D: ${question.answerD}</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${question.studentAnswer=='D'}">
											<td style="width:50%" class="text-danger font-weight-bolder">D: ${question.answerD}</td>
										</c:when>
										<c:otherwise>	
											<td style="width:50%">D: ${question.answerD}</td>
										</c:otherwise>
									</c:choose>							
								</c:otherwise>
							</c:choose>
						</tr>
					</tbody>
				</table>
				
				<c:if test="${question.hasPhoto!=null}">
					<div class="border border-dark">
						<img src="images/${question.number}.png"
							class="rounded mx-auto d-block" width="450" height="270">
					</div>
				</c:if>
				
				<br /><br />
			</c:forEach>
		</div>
		
<%@ include file="../common/rightimg.jspf"%>

	</div>
</section>


<script src="webjars/jquery/3.0.0/jquery.min.js"></script>
<script src="webjars/popper.js/1.14.3/popper.min.js"></script>
<script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>