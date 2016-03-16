<jsp:directive.include file="/WEB-INF/view/jsp/dianrong/common/top.jsp" />

<div class="container find-pwd-container">
		<div class="find-pwd-content ng-scope">
			<header class="find-pwd">
				<% 
								Object savedLoginContext = request.getSession().getAttribute("pwdg_savedLoginContext");
								if(savedLoginContext == null) {
									%>
										<a href="<%=path %>/login"><spring:message code="screen.password.reset.step.backtofirstpage"/></a>
									<% 
								} else {
									%>
										<a href="${sessionScope.pwdg_savedLoginContext}"><spring:message code="screen.password.reset.step.backtofirstpage"/></a>
									<% 
								}
						%>
				&gt;<spring:message code="screen.password.reset.step1.title" />
			</header>
			<div class="common-wizard password-reset-wizard ng-isolate-scope">
				<div class="modal-header">
					<ul class="steps-indicator steps-4">
						<li class="ng-scope done">
							<a class="ng-binding ng-pristine ng-valid">
								<span class="step-num ng-binding">1</span>
								<spring:message code="screen.password.reset.step1.notice"/>
							</a>
							</li>
						<li class="ng-scope done">
							<a class="ng-binding ng-pristine ng-valid">
								<span class="step-num ng-binding">2</span>
								<spring:message code="screen.password.reset.step2.notice"/>
							</a>
						</li>
						<li class="ng-scope done">
							<a class="ng-binding ng-pristine ng-valid">
								<span class="step-num ng-binding">3</span>
								<spring:message code="screen.password.reset.step3.notice"/>
							</a>
						</li>
						<li class="ng-scope current">
							<a class="ng-binding ng-pristine ng-valid">
								<span class="step-num ng-binding">4</span>
								<spring:message code="screen.password.reset.step4.notice"/>
							</a>
						</li>
					</ul>
				</div>
				
				<!-- content -->
				<div class="steps">
					<div class="row">
					  <div class="col-md-offset-5 col-md-3 reset-success-notice">
						<img src="<%=path %>/images/pwdreset/icon-reset-success.png" class="img-responsive check-ok-icon" alt="Responsive image">
					  </div>
					</div>
					<div class="row">
					  <div class="col-md-offset-4 col-md-4 h6">
						<spring:message code="screen.password.reset.step3.success.notice"/>
								<% 
									Object savedLoginContext1 = request.getSession().getAttribute("pwdg_savedLoginContext");
									if(savedLoginContext1 == null) {
										%>
											<a href="<%=path %>/login"><spring:message code="screen.password.reset.step3.success.login"/></a>
										<% 
									} else {
										%>
											<a href="${sessionScope.pwdg_savedLoginContext}"><spring:message code="screen.password.reset.step3.success.login"/></a>
										<% 
									}
								%>
					  </div>
					</div>
				<div>
			</div>
		</div>
</div>

<jsp:directive.include file="/WEB-INF/view/jsp/dianrong/common/bottom.jsp" />