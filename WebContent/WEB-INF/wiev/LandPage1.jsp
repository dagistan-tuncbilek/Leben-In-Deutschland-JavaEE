<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navbar2.jspf"%>

<section>
	<br><br>
	<h2 class="font-weight-bold text-center">Baden-W�rttemberg</h2>
	<br><br>
</section>
<section>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-6">
			<c:forEach items="${questions}" var="question">
				<table class="table table-bordered">
					<tbody>
						<tr class="table-warning">
							<th>${question.number}. ${question.quest} (${question.thema})</th>
						<tr>
					</tbody>
				</table>

				<table class="table table-hover table-bordered">
					<tbody>
						<tr>
							<c:choose>
								<c:when test="${question.trueAnswer=='A'}">
									<td style="width: 50%" class="table-success">A:
										${question.answerA}</td>
								</c:when>
								<c:otherwise>
									<td style="width: 50%">A: ${question.answerA}</td>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${question.trueAnswer=='B'}">
									<td class="table-success">B: ${question.answerB}</td>
								</c:when>
								<c:otherwise>
									<td>B: ${question.answerB}</td>
								</c:otherwise>
							</c:choose>
						</tr>

						<tr>
							<c:choose>
								<c:when test="${question.trueAnswer=='C'}">
									<td class="table-success">C: ${question.answerC}</td>
								</c:when>
								<c:otherwise>
									<td>C: ${question.answerC}</td>
								</c:otherwise>
							</c:choose>

							<c:choose>
								<c:when test="${question.trueAnswer=='D'}">
									<td class="table-success">D: ${question.answerD}</td>
								</c:when>
								<c:otherwise>
									<td>D: ${question.answerD}</td>
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


<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="webjars/popper.js/1.14.3/popper.min.js"></script>
<script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>