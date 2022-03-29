<?php
session_start();
require('./assets/php/co_bdd.php');
require('./assets/componants/header.php');

require('./assets/php/function.php');



?>


<body>
    <div class="page-wrapper">
        <?php require('./assets/componants/barreMenu.php') ?>
        <main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>

                        <li class="breadcrumb-item active couleurBlanche" aria-current="page">Franchiser</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->
            <div class="container">
                <div class="page-header page-header-big text-center" style="background-image: url('./open.jfif')">
                    <h1 class="page-title text-white">REJOIGNEZ LE MOUVEMENT <span class="text-white"></span></h1>
                </div><!-- End .page-header -->
            </div><!-- End .container -->

            <div class="page-content pb-0">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 mb-2 mb-lg-0">
                            <h2 class="title mb-1 couleurJaune">Information</h2><!-- End .title mb-2 -->
                            <p class="mb-3 couleurBlanche">Être Franchisé Oh My Sushi, c’est bénéficier de la notoriété et du savoir-faire de chez Oh My Sushi. <br>
                                C’est aussi entreprendre en restauration rapide avec des produits uniques.</p>

                        </div><!-- End .col-lg-6 -->
                        <div class="col-lg-6">
                            <h2 class="title mb-1 couleurJaune">Des Questions? </h2><!-- End .title mb-2 -->
                            <p class="mb-2 couleurBlanche">Vous êtes intéressé ou simplement besoin d'information supplémentaire? Contactez-nous </p>

                            <form action="./assets/php/envoiMailContact.php?email=franchise" method="POST" class="contact-form mb-3">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label for="cname" class="sr-only">Nom</label>
                                        <input type="text" name="name" class="form-control" id="cname" placeholder="Nom *" required>
                                    </div><!-- End .col-sm-6 -->

                                    <div class="col-sm-6">
                                        <label for="cemail" class="sr-only">Email</label>
                                        <input type="email" class="form-control" name="email" id="cemail" placeholder="Email *" required>
                                    </div><!-- End .col-sm-6 -->
                                </div><!-- End .row -->

                                <div class="row">
                                    <div class="col-sm-6">
                                        <label for="cphone" class="sr-only">Téléphone</label>
                                        <input type="tel" class="form-control" name="phone" id="cphone" placeholder="Téléphone">
                                    </div><!-- End .col-sm-6 -->

                                    <div class="col-sm-6">
                                        <label for="csubject" class="sr-only">Sujet</label>
                                        <input type="text" class="form-control" name="sujet" id="csubject" placeholder="Sujet">
                                    </div><!-- End .col-sm-6 -->
                                </div><!-- End .row -->

                                <label for="cmessage" class="sr-only">Message</label>
                                <textarea class="form-control" cols="30" rows="4" name="message" id="cmessage" required placeholder="Message *"></textarea>

                                <button type="submit" class="btn btn-outline-primary-2 btn-minwidth-sm">
                                    <span>ENVOYER</span>
                                    <i class="icon-long-arrow-right"></i>
                                </button>
                            </form><!-- End .contact-form -->
                        </div><!-- End .col-lg-6 -->
                    </div><!-- End .row -->

                    <hr class="mt-4 mb-5">

                    <iframe width="100%" height="450" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJgZL30pfHlEcRJ-trOOsiJNY&key=AIzaSyDYTHhDL0e-AY1qUm8zKl-rueyk6CrD_AI"></iframe>
                </div><!-- End .container -->

            </div><!-- End .page-content -->
        </main><!-- End .main -->
        <?php require('./assets/componants/footer.php') ?>
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

    <?php require('./assets/componants/menu.php'); ?>

    <?php require('./assets/componants/navmenumobile.php'); ?>
    <?php require('./assets/componants/fenetreModalConnexion.php'); ?>


    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>





</html>