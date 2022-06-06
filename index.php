<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Mundo Digital</title>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="css/normalize.css" />
        <script
            src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>
        <link rel="stylesheet" href="css/style.css" />
    </head>
    <body>
        <script src="/js/script.js"></script>
        <header id="cabecera">
            <a href="index.html">
                <img
                    id="logotipo"
                    src="img/MundoDigitalLogo.svg"
                    alt="Logotipo"
                />
            </a>
            <nav class="enlaces-principales">
                <ul>
                    <li>
                        <a class="sombreado" href="html/ubicación.htm">Locales</a>
                    </li>
                    <li>
                        <a class="sombreado" href="html/nosotros.html">Nosotros</a>
                    </li>
                    <li><a class="sombreado" href="#">Promociones</a></li>
                    <li><a class="sombreado" href="#">Accesorios</a></li>
                    <li><a class="sombreado" href="#">*busqueda*</a></li>
                </ul>
            </nav>
            <nav class="enlaces-principales">
                <ul>
                    <li id="sesión">
                        <a href=""
                            ><img src="img/sesión/Iniciar sesión.png" alt=""
                        /></a>
                    </li>
                    <li id="sesión">
                        <a href=""
                            ><img src="img/sesión/Registrarse.png" alt=""
                        /></a>
                    </li>
                </ul>
            </nav>
        </header>
        <div
            id="carouselExampleIndicators"
            class="carousel slide"
            data-ride="carousel">
            <ol class="carousel-indicators">
                <li
                    data-target="#carouselExampleIndicators"
                    data-slide-to="0"
                    class="active"
                ></li>
                <li
                    data-target="#carouselExampleIndicators"
                    data-slide-to="1"
                ></li>
                <li
                    data-target="#carouselExampleIndicators"
                    data-slide-to="2"
                ></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img
                        class="d-block w-100"
                        src="img/carousel/1.png"
                        alt="First slide"
                    />
                </div>
                <div class="carousel-item">
                    <img
                        class="d-block w-100"
                        src="img/carousel/2.png"
                        alt="Second slide"
                    />
                </div>
                <div class="carousel-item">
                    <img
                        class="d-block w-100"
                        src="img/carousel/3.png"
                        alt="Third slide"
                    />
                </div>
            </div>
            <a
                class="carousel-control-prev"
                href="#carouselExampleIndicators"
                role="button"
                data-slide="prev"
            >
                <span
                    class="carousel-control-prev-icon"
                    aria-hidden="true"
                ></span>
                <span class="sr-only">Previous</span>
            </a>
            <a
                class="carousel-control-next"
                href="#carouselExampleIndicators"
                role="button"
                data-slide="next"
            >
                <span
                    class="carousel-control-next-icon"
                    aria-hidden="true"
                ></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="mostrador">
            <aside>
                <h3>Categorias</h3>
                <nav>
                    <ul>
                        <li><a href="">Accesorios</a></li>
                        <li><a href="">Tarjetas gráficas</a></li>
                        <li><a href="">Tarjetas madre</a></li>
                        <li><a href="">Memeoria RAM</a></li>
                        <li><a href="">Almacenamiento</a></li>
                    </ul>
                </nav>
            </aside>
            <main>
                <ul>
                    <li>
                        Productos <br />
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Sunt, facilis! Error velit maxime incidunt esse
                        ratione numquam laborum quaerat quos earum. Doloremque a
                        optio magnam quam. Illum placeat reiciendis vero.
                    </li>
                    <li>
                        Productos <br />
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Sunt, facilis! Error velit maxime incidunt esse
                        ratione numquam laborum quaerat quos earum. Doloremque a
                        optio magnam quam. Illum placeat reiciendis vero.
                    </li>
                    <li>
                        Productos <br />
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit. Sunt, facilis! Error velit maxime incidunt esse
                        ratione numquam laborum quaerat quos earum. Doloremque a
                        optio magnam quam. Illum placeat reiciendis vero.
                    </li>
                </ul>
            </main>
        </div>
        <?php
            require 'vendor/autoload.php';
            $producto = new Rhod\Producto;
        ?>
    </body>
</html>
