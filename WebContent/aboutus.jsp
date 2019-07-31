<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>

	@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900,900italic);

body {
    font-family: 'Source Sans Pro', sans-serif;
    line-height: 1.5;
    color: #323232;
    font-size: 15px;
    font-weight: 400;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
    -moz-font-smoothing: antialiased;
}
.heading-title {
    margin-bottom: 100px;
}
.text-center {
    text-align: center;
}
.heading-title h3 {
    margin-bottom: 0;
    letter-spacing: 2px;
    font-weight: normal;
}
.p-top-30 {
    padding-top: 30px;
}
.half-txt {
    width: 60%;
    margin: 0 auto;
    display: inline-block;
    line-height: 25px;
    color: #7e7e7e;
}
.text-uppercase {
    text-transform: uppercase;
}

.team-member, .team-member .team-img {
    position: relative;
}
.team-member {
    overflow: hidden;
}
.team-member, .team-member .team-img {
    position: relative;
}

.team-hover {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    margin: 0;
    border: 20px solid rgba(0, 0, 0, 0.1);
    background-color: rgba(255, 255, 255, 0.90);
    opacity: 0;
    -webkit-transition: all 0.3s;
    transition: all 0.3s;
}
.team-member:hover .team-hover .desk {
    top: 35%;
}
.team-member:hover .team-hover, .team-member:hover .team-hover .desk, .team-member:hover .team-hover .s-link {
    opacity: 1;
}
.team-hover .desk {
    position: absolute;
    top: 0%;
    width: 100%;
    opacity: 0;
    -webkit-transform: translateY(-55%);
    -ms-transform: translateY(-55%);
    transform: translateY(-55%);
    -webkit-transition: all 0.3s 0.2s;
    transition: all 0.3s 0.2s;
    padding: 0 20px;
}
.desk, .desk h4, .team-hover .s-link a {
    text-align: center;
    color: #222;
}
.team-member:hover .team-hover .s-link {
    bottom: 10%;
}
.team-member:hover .team-hover, .team-member:hover .team-hover .desk, .team-member:hover .team-hover .s-link {
    opacity: 1;
}
.team-hover .s-link {
    position: absolute;
    bottom: 0;
    width: 100%;
    opacity: 0;
    text-align: center;
    -webkit-transform: translateY(45%);
    -ms-transform: translateY(45%);
    transform: translateY(45%);
    -webkit-transition: all 0.3s 0.2s;
    transition: all 0.3s 0.2s;
    font-size: 35px;
}
.desk, .desk h4, .team-hover .s-link a {
    text-align: center;
    color: #222;
}
.team-member .s-link a {
    margin: 0 10px;
    color: #333;
    font-size: 16px;
}
.team-title {
    position: static;
    padding: 20px 0;
    display: inline-block;
    letter-spacing: 2px;
    width: 100%;
}
.team-title h5 {
    margin-bottom: 0px;
    display: block;
    text-transform: uppercase;
}
.team-title span {
    font-size: 12px;
    text-transform: uppercase;
    color: #a5a5a5;
    letter-spacing: 1px;
}
	
	
</style>

<div class="container">
<a href="index.jsp"> <- Back to Website</a>
                    <div class="row">
                        <div class="heading-title text-center">
                            <h3 class="text-uppercase">Our Developers </h3>
                            <p class="p-top-30 half-txt">The developers of the Alumni portal... </p>
                        </div>

                        <div class="col-md-3 col-sm-3">
                            <div class="team-member">
                                <div class="team-img">
                                    <img src="https://images.pexels.com/photos/1040499/pexels-photo-1040499.jpeg?auto=compress&cs=tinysrgb&h=350" alt="team member" style="height:270px;width:250px;" class="img-responsive">
                                </div>
                                <div class="team-hover">
                                    <div class="desk">
                                        <p>Full Stack Developer</p>
                                    </div>
                                    <div class="s-link">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-title">
                                <h5>Sagar Patil</h5>
                                <span>Developer</span>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="team-member">
                                <div class="team-img">
                                    <img src="https://scontent.fpnq4-1.fna.fbcdn.net/v/t1.0-9/543833_286909268116511_524275492_n.jpg?_nc_cat=101&_nc_ht=scontent.fpnq4-1.fna&oh=b774a28ed96d31831b390cf7eae04a21&oe=5C14E490" alt="team member" class="img-responsive" style="height:270px;width:250px;">
                                </div>
                                <div class="team-hover">
                                    <div class="desk">
                                        <p>Front End Developer</p>
                                    </div>
                                    <div class="s-link">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-title">
                                <h5>SHUBHAM RUNWAL</h5>
                                <span>Developer</span>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <div class="team-member">
                                <div class="team-img">
                                    <img src="https://scontent.fpnq4-1.fna.fbcdn.net/v/t1.0-9/31351422_2140785396154795_1257840673431070750_n.jpg?_nc_cat=107&_nc_ht=scontent.fpnq4-1.fna&oh=0d68d15af9ff96efb283df7fa96c7d7b&oe=5C45219A" alt="team member" class="img-responsive" style="height:270px;width:250px;">
                                </div>
                                <div class="team-hover">
                                    <div class="desk">
                                        <p>Back end coder</p>
                                    </div>
                                    <div class="s-link">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-title">
                                <h5>JAYESH SONTAKKE</h5>
                                <span>Developer</span>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-3">
                            <div class="team-member">
                                <div class="team-img">
                                    <img src="https://scontent.fpnq4-1.fna.fbcdn.net/v/t1.0-9/39973384_2142819622632449_8860441901568884736_n.jpg?_nc_cat=107&_nc_ht=scontent.fpnq4-1.fna&oh=88273e9a834752a7a4e8d39c77d9b9bf&oe=5C16117B" alt="team member" class="img-responsive" style="height:270px;width:250px;">
                                </div>
                                <div class="team-hover">
                                    <div class="desk">
                                        <p>Database Administrator</p>
                                    </div>
                                    <div class="s-link">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-title">
                                <h5>ASHUTOSH PATil</h5>
                                <span>Developer</span>
                            </div>
                        </div>

                    </div>

                </div>