
<%@include file="../includes/header.jsp"%>
<!-- Page Content-->


<div class="container-fluid p-0">
    <!-- About-->
    <section class="resume-section" id="about">
        <div class="resume-section-content">
            <h1 class="mb-0">
                Clarence
                ${Receive}
                <span class="text-primary">Taylor</span>
            </h1>
            <div class="subheading mb-5">
                ${Send}
                3542 Berry Street · Cheyenne Wells, CO 80810 · (317) 585-8468 ·
                <a href="mailto:name@email.com">name@email.com</a>
            </div>
            <p class="lead mb-5">I am experienced in leveraging agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition.</p>
            <div class="social-icons">
                <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
                <a class="social-icon" href="#!"><i class="fab fa-twitter"></i></a>
                <a class="social-icon" href="#!"><i class="fab fa-facebook-f"></i></a>
            </div>
        </div>
    </section>
    <hr class="m-0" />

    <!-- Msg Receive-->
    <section class="resume-section" id="MsgReceive">
        <div class="resume-section-content">
            <h2 class="mb-5">Register</h2>
            <form action="/msg/register" method="post">
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1">WHO</span>
                    <input type="text" name="who" value="${member.mid}" readonly class="form-control" placeholder="who" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon2">WHOM</span>
                    <input type="text" name="whom" class="form-control" placeholder="whom" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon3">CONTENT</span>
                    <input type="text" name="content" class="form-control" placeholder="content" aria-label="Username" aria-describedby="basic-addon1">
                </div>

                <div>
                    <button type="submit" class="btn btn-primary float-md-end">Submit</button>
                </div>
            </form>
        </div>
    </section>
    <hr class="m-0" />
</div>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/js/scripts.js"></script>

<%@include file="../includes/footer.jsp"%>

