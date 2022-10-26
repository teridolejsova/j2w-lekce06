[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Obchůdek pro mlsné jazýčky: čokoláda</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/cokolada" method="post">
        <h1>Objednávka čokolády</h1>
        <label for="druh" class="radek">Zboží:</label>
        [@spring.formSingleSelect path="form.druh" options={
        "": "",
        "1": "Mléčná",
        "2": "Bílá",
        "3": "Hořká"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="jmeno" class="radek">Jméno a příjmení:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.obchodniPodminky" /]
            <label for="obchodniPodminky">Souhlasím s obchodními podmínkami</label>
        </div>
        <!--
        Formulář bude obsahovat:
        * výběr z druhů čokolády, např.: mléčná, bíla, hořká (select)
        * Jméno a příjmení (input)
        * e-mail – volitelný údaj (input)
        * souhlas s obchodními podmínkami (check box)
        -->
    </form>
</div>
</body>
</html>
