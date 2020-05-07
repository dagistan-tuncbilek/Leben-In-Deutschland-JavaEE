<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navbar.jspf"%>

<section>

	<nav class="navbar-expand-sm" aria-label="fragen300">
		<br />
		<ul class="pagination justify-content-center">

			<li class="page-item"><a class="page-link" href="PageServlet5"
				tabindex="-1" aria-disabled="false">Previous</a></li>
			<li class="page-item" aria-current="page"><a
				class="page-link" href="PageServlet1">1 <span class="sr-only">(current)</span></a>
			</li>
			<li class="page-item"><a class="page-link"  href="PageServlet2">2 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet3">3</a></li>
			<li class="page-item"><a class="page-link" href="PageServlet4">4 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet5">5</a></li>
			<li class="page-item active"><a class="page-link" href="#">6 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet7">7</a></li>
			<li class="page-item"><a class="page-link" href="PageServlet8">8 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet9">9</a></li>
			<li class="page-item"><a class="page-link" href="PageServlet10">10 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet11">11</a></li>
			<li class="page-item"><a class="page-link" href="PageServlet12">12 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet7">Next</a></li>

		</ul><br /><br />
	</nav>


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




<footer>
	<nav aria-label="...">
		<ul class="pagination justify-content-center">

			<li class="page-item"><a class="page-link" href="PageServlet5"
				tabindex="-1" aria-disabled="false">Previous</a></li>
			<li class="page-item" aria-current="page"><a
				class="page-link" href="PageServlet1">1 <span class="sr-only">(current)</span></a>
			</li>
			<li class="page-item"><a class="page-link"  href="PageServlet2">2 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet3">3</a></li>
			<li class="page-item"><a class="page-link" href="PageServlet4">4 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet5">5</a></li>
			<li class="page-item active"><a class="page-link" href="#">6 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet7">7</a></li>
			<li class="page-item"><a class="page-link" href="PageServlet8">8 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet9">9</a></li>
			<li class="page-item"><a class="page-link" href="PageServlet10">10 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet11">11</a></li>
			<li class="page-item"><a class="page-link" href="PageServlet12">12 </a></li>
			<li class="page-item"><a class="page-link" href="PageServlet7">Next</a></li>
		</ul>
	</nav>
	<br />

</footer>


<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="webjars/popper.js/1.14.3/popper.min.js"></script>
<script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>