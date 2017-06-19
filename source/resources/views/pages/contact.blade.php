@extends('master')
@section('content')
<link href="https://fonts.googleapis.com/css?family=Oswald:700|Patua+One|Roboto+Condensed:700" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<section id="contact" class="content-section text-center">
        <div class="contact-section">
            <div class="container">
              <h2>Skontaktuj się z nami</h2>
              <br></br>
              <div class="row">
                <div class="col-md-8 col-md-offset-2">
                  <form class="form-horizontal" action="{{ url('contact') }}" method="POST">
                    <div class="form-group">
                      <label for="exampleInputName2">Imię</label>
                      <input type="text" class="form-control" id="exampleInputName2">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail2">Adres E-Mail</label>
                      <input type="email" class="form-control" id="exampleInputEmail2">
                    </div>
                    <div class="form-group ">
                      <label for="exampleInputText">Twoja wiadomość</label>
                     <textarea  class="form-control"></textarea> 
                    </div>
                    <button type="submit" class="btn btn-success">Wyślij</button>
                  </form>

                  <hr>
                    <h3>Znajdź nas!</h3>
                  <ul class="list-inline banner-social-buttons">
                    <li><a href="https://twitter.com" class="btn btn-default btn-lg"><i class="fa fa-twitter"> <span class="network-name">Twitter</span></i></a></li>
                    <li><a href="https://facebook.com" class="btn btn-default btn-lg"><i class="fa fa-facebook"> <span class="network-name">Facebook</span></i></a></li>
                    <li><a href="https://youtube.pl" class="btn btn-default btn-lg"><i class="fa fa-youtube-play"> <span class="network-name">Youtube</span></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
        </div>
      </section>
@stop