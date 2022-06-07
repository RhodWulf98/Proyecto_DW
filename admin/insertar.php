<?php require '../includes/header.php' ?>

<section>
    <h2>Igresar elemento</h2>
    <form class="formulario" action="">
        <button class="BotonNuevo" id="BotonNuevo">
            Ver listado de productos
        </button>
        <fieldset>
            <div class="form-field">
                <label for="nombre">Nombre: </label>
                <input type="text" name="nombre" id="nombre" autocomplete="off" required />
                <small></small>
            </div>
            <div class="form-field">
                <label for="precio">Precio: </label>
                <input type="number" name="precio" id="precio" step="0.01" autocomplete="off" required />
                <small></small>
            </div>
            <div class="form-field">
                <label for="imagen">Subir Imagen: </label>
                <input type="file" name="imagen" id="imagen" required />
                <small></small>
            </div>
            <div class="form-field">
                <label for="descripcion">Descripción: </label>
                <textarea name="descripcion" id="descripcion" cols="30" rows="10" required></textarea>
                <small></small>
            </div>
            <div class="form-field">
                <input type="submit" value="Enviar" />
            </div>
        </fieldset>
    </form>
</section>

<?php require '../includes/footer.php' ?>