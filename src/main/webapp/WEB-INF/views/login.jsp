<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<style>
.gradient-custom {
	/* fallback for old browsers */
	background: #6a11cb;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1))
}
</style>
</head>
<body>

	<section class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-dark text-white" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">
							<div class="alert alert-danger" role="alert">${errorMsg}</div>
							<form method="POST" class="mb-md-5 mt-md-4 pb-5 needs-validation"
								novalidate>

								<h2 class="fw-bold mb-2 text-uppercase">تسجيل دخول</h2>
								<p class="text-white-50 mb-5">الرجاء ادخال البريد الالكتروني
									وكلمة المرور</p>

								<div class="form-outline form-white mb-4">
									<input type="email" id="typeEmailX"
										class="form-control form-control-lg" name="email"
										placeholder="البريد الالكتروني" required />

								</div>

								<div class="form-outline form-white mb-4">
									<input type="password" id="typePasswordX"
										class="form-control form-control-lg" placeholder="كلمة المرور"
										name="pass" required />

								</div>

								<p class="small mb-5 pb-lg-2">
									<a class="text-white-50" href="#!">نسيت كلمة المرور؟</a>
								</p>

								<button class="btn btn-outline-light btn-lg px-5" type="submit">تسجيل
									دخول</button>

								<div class="d-flex justify-content-center text-center mt-4 pt-1">
									<a href="#!" class="text-white"><i
										class="fab fa-facebook-f fa-lg"></i></a> <a href="#!"
										class="text-white"><i
										class="fab fa-twitter fa-lg mx-4 px-2"></i></a> <a href="#!"
										class="text-white"><i class="fab fa-google fa-lg"></i></a>
								</div>

							</form>

							<div>
								<p class="mb-0">
									ليس لديك حساب؟ <a href="#!" class="text-white-50 fw-bold">تسجيل</a>
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
		integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
		crossorigin="anonymous"></script>
	<script>
		(() => {
			  'use strict'

			  // Fetch all the forms we want to apply custom Bootstrap validation styles to
			  const forms = document.querySelectorAll('.needs-validation')

			  // Loop over them and prevent submission
			  Array.from(forms).forEach(form => {
			    form.addEventListener('submit', event => {
			      if (!form.checkValidity()) {
			        event.preventDefault()
			        event.stopPropagation()
			      }

			      form.classList.add('was-validated')
			    }, false)
			  })
			})()
		</script>
</body>
</html>