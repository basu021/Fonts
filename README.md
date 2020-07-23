# Fonts
 <head>
    <meta charset="UTF-8"
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Title</title>
    <style>
        .card {
            border-left: 4px solid #751aff;
        }

        .card-header {
            color: white;
        }

        .chart {
            color: #751aff;
        }

        .field {
            height: 40px;
            background-color: rgb(71, 73, 66);
            margin: 10px;
            padding: 0 5px;
            color: white;
            line-height: 40px;
            position: relative;
        }

        input {
            background-color: transparent;
            padding: 0 60px;
            border: none;
            color: white;
            outline: none;
        }

        button {
            border: none;
            background-color: transparent;
            position: absolute;
            top: 0;
            right: 15px;
            color: white;
            outline: none;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="card bg-dark">
            <div class="card-header"><i class="fa fa-bar-chart chart" aria-hidden="true"></i>Example</div>
            <div class="field">
                <input id="Myinput" type="text" value=" Copy this text" disabled></input>
                <button onclick="myFunction()"><i class="fa fa-clone" aria-hidden="true"></i></button>
            </div>
        </div>
    </div>

    <script>
        function myFunction() {
            /* Get the text field */
            var copyText = document.getElementById("Myinput");

            /* Select the text field */
            copyText.select();
            copyText.setSelectionRange(0, 99999); /*For mobile devices*/

            /* Copy the text inside the text field */
            document.execCommand("copy");

            /* Alert the copied text */
       <!--     alert("Copied the text: " + copyText.value); -->
        }
    </script> for Logo design, webdesign .
