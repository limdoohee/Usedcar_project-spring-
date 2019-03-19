<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script src="../../resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="../../resources/js/vendor/jquery-ui.min.js"></script>
	<script src="../../resources/js/jquery-3.3.1.js"></script>
	<script src="../../resources/js/test.js"></script>
<style>
body {
  margin: 0;
  font-family: 'Playfair Display', serif;
  padding: 0 15px;
}

/*Chosen style*/
.chosen-wrapper {
  margin: 0 auto 25px;
  max-width: 400px;
  position: relative;
}
.chosen-wrapper:after {
  pointer-events: none;
  content: "";
  position: absolute;
  top: 32px;
  right: 20px;
  width: 0;
  height: 0;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-top: 8px solid rgba(0, 0, 0, 0.5);
  transition: all 0.2s cubic-bezier(0.25, 0.46, 0.45, 0.94);
  z-index: 9;
}
.chosen-wrapper.is-active:after {
  border-top: 8px solid black;
  -ms-transform: rotate(180deg);
  -webkit-transform: rotate(180deg);
  transform: rotate(180deg);
}
.chosen-wrapper .chosen-container .chosen-single {
  border-radius: 0;
  height: 70px;
  border: solid 2px #d9d9d9;
  background: #fff;
  font-size: 22px;
  color: rgba(0, 0, 0, 0.5);
  padding: 0 30px;
  line-height: 66px;
  transition: all 0.3s ease;
  box-shadow: none;
  background: #fff;
}
.chosen-wrapper .chosen-container .chosen-single b {
  display: none !important;
}
.chosen-wrapper .chosen-container .chosen-single span {
  letter-spacing: 0;
  padding: 0;
  line-height: inherit;
}
.chosen-wrapper .chosen-container.chosen-with-drop .chosen-single {
  border-width: 2px 2px 1px;
  border-color: #000  #000 #d9d9d9;
  color: #000;
  background-image: none;
}
.chosen-wrapper .chosen-container.chosen-with-drop .chosen-drop {
  opacity: 1;
  visibility: visible;
  transform: translateY(0);
}
.chosen-wrapper .chosen-container.chosen-container-single-nosearch .chosen-search {
  display: none;
}
.chosen-wrapper .chosen-container .chosen-drop {
  letter-spacing: 0;
  border-radius: 0;
  box-shadow: none;
  border-width: 0 2px 2px;
  border-color: #000;
  margin-top: 0;
  -webkit-transition: all 0.3s cubic-bezier(0.55, 0.085, 0.68, 0.53);
  -o-transition: all 0.3s cubic-bezier(0.55, 0.085, 0.68, 0.53);
  transition: all 0.3s cubic-bezier(0.55, 0.085, 0.68, 0.53);
  opacity: 0;
}
.chosen-wrapper .chosen-container .chosen-results {
  font-size: 22px;
  color: #000;
  max-height: 245px;
  margin: 0;
  padding: 0;
}
.chosen-wrapper .chosen-container .chosen-results li {
  padding: 16px 30px 18px;
  margin: 0;
  border-bottom: 1px solid #e5e5e5;
  -webkit-transition: all 0.4s cubic-bezier(0.55, 0.085, 0.68, 0.53);
  -o-transition: all 0.4s cubic-bezier(0.55, 0.085, 0.68, 0.53);
  transition: all 0.4s cubic-bezier(0.55, 0.085, 0.68, 0.53);
  line-height: 20px;
}
.chosen-wrapper .chosen-container .chosen-results li.highlighted {
  background-color: #eeeeee !important;
  color: #000;
  background-image: none;
}
.chosen-wrapper--style2:after {
  right: 0;
}
.chosen-wrapper--style2:before {
  content: '';
  width: 0;
  border-top: 2px solid #000;
  position: absolute;
  left: 0;
  bottom: 0;
  z-index: 1;
  transition: all 0.2s cubic-bezier(0.06, 1, 0.89, 0.85);
}
.chosen-wrapper--style2.is-active:before {
  width: 100%;
}
.chosen-wrapper--style2 .chosen-container .chosen-single {
  border-width: 0 0 2px;
  padding: 0;
}
.chosen-wrapper--style2 .chosen-container.chosen-with-drop .chosen-single {
  border-width: 0 0 2px;
}
.chosen-wrapper--style2 .chosen-container.chosen-with-drop .chosen-drop {
  opacity: 1;
  visibility: visible;
  transform: translateY(5px);
}
.chosen-wrapper--style2 .chosen-container .chosen-drop {
  border-color: #d9d9d9;
  border-top: 2px solid #d9d9d9;
}
.chosen-wrapper--style2 .chosen-container .chosen-results li {
  padding: 16px 15px 18px;
}

/*ScrollBox style*/
.nicescroll-rails {
  border-left: 1px solid #d9d9d9;
  transform: translate(-2px);
  top: 0 !important;
}
.nicescroll-rails .nicescroll-cursors {
  width: 6px !important;
  margin-right: 2px;
}

.link {
  position: absolute;
  left: 0;
  bottom: 0;
  padding: 20px;
}
.link a {
  display: flex;
  align-items: center;
  text-decoration: none;
  color: #000;
}
.link .fa {
  font-size: 28px;
  margin-right: 8px;
  color: #000;
}

</style>
</head>
<body>
<div class="chosen-wrapper" data-js="custom-scroll">
  <select class="chosen-select" data-placeholder="Lorem ipsum dolor sit amet">
    <option></option>
    <option>Consectetur adipiscing</option>
    <option>Sed do eiusmod tempor</option>
    <option>Incididunt ut labore</option>
    <option>Voluptatem accusantium</option>
    <option>Duis aute irure dolor </option>
    <option>Nemo enim</option>
    <option>Consectetur adipiscing</option>
    <option>Sed do eiusmod tempor</option>
    <option>Incididunt ut labore</option>
    <option>Voluptatem accusantium</option>
    <option>Duis aute irure dolor </option>
    <option>Nemo enim</option>
    <option>Consectetur adipiscing</option>
    <option>Sed do eiusmod tempor</option>
    <option>Incididunt ut labore</option>
    <option>Voluptatem accusantium</option>
    <option>Duis aute irure dolor </option>
    <option>Nemo enim</option>
  </select>
</div>
</body>
</html>