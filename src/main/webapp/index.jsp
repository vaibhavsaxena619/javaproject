<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaibhav Saxena, Full Stack Developer</title>
    <link href="https://fonts.googleapis.com/css?family=Caveat|Montserrat:400,600&display=swap" rel="stylesheet">
    <style>
    
    	html {
  box-sizing: border-box;
}
*, *:before, *:after {
  box-sizing: inherit;
}

body {
  color: #343434;
  margin: 0;
  padding: 0;
  font-family: 'Montserrat', sans-serif;
  font-size: 15px;
  line-height: 1.5;
}
img {
  width: 300px;
}
a {
  color: #FFE66D;
}
a:hover {
  text-decoration: none;
}
h1 {
  font-size: 100px;
  line-height: 1;
}
h2 {
  font-size: 45px;
}
h1, h2 {
  font-family: 'Caveat', cursive;
  font-weight: 400;
  margin: 0;
}
.content-wrap {
  max-width: 800px;
  width: 90%;
  margin: 0 auto;
  padding: 60px 0;
}
h3 {
  margin-bottom: 0;
}
.item-details h3 + p {
  font-style: italic;
}
.item-details h3 ~ p {
  margin: 0;
}
.divider > section {
  border-bottom: 1px dashed #343434;
  padding: 25px 0;
}
.divider > section:last-of-type {
  border-bottom: none;
}



/* Profile
------------------------------------*/
header {
  background: #2F3061;
  color: #F7FFF7;
}


/* Projects
------------------------------------*/
.projects {
  background: #ffedf8;
}
.projects a {
  color: #2F3061;
}
.projects .btn {
  color: #F7FFF7;
  background: #2F3061;
  text-decoration: none;
  padding: 8px;
  border-radius: 4px;
  display: inline-block;
}
.projects .btn:hover {
  background: rgba(47, 48, 97, 80%);
}
.project-item {
  overflow: hidden;
}
.project-item h3 {
  margin-top: 0;
}


/* Work Experience
------------------------------------*/
.work-experience {
  background: #A1C6D7;
}

.education p {
  width: 60%;
}

input[type=submit]{
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}


/* Contact Info
------------------------------------*/
footer {
  background: #343434;
  color: #F7FFF7;
}
.contact-list {
  list-style-type: none;
  padding: 0;
}
.contact-list a {
  padding: 15px;
  display: inline-block;
}


/* Responsive
------------------------------------*/
@media screen and (min-width:750px){
  header, footer {
    text-align: center;
  }
  .project-item img {
    float: left;
    margin-right: 20px;
  }

  .job-item {
    display: grid;
    grid-template-columns: 1fr 2fr;
    column-gap: 20px;
  }
  .contact-list {
    display: flex;
    justify-content: center;
  }
}

@media screen and (max-width:749px){
  h1 {
    font-size: 75px;
    line-height: 0.9;
    margin-bottom: 20px;
  }
  h2 {
    line-height: 1;
  }
  .contact-list a {
    padding: 5px;
  }
}
    
    </style>
  </head>
  <body>
    <main>
      <!-- ***************  ABOUT / PROFILE  **************** -->
      <header>
        <div class="content-wrap">
          <h1>Ojawini Marathe</h1>
          <h2>*Insert your answer*</h2>

          <p>*insert stuff here*</p>

        </div>
      </header>

      <!-- ************ PROJECTS / PORTFOLIO  ************** -->
      <section class="projects">
        <div class="content-wrap divider">
          <h2>Projects</h2>

          <!-- Project 1 -->
          <section class="project-item">
            <h3>Developing IoT solutions for Cisco Packet Tracer</h3>
            <p>Implementing IoT solutions to day to day problems at home and college in Cisco Packet Tracer. </p>
          </section>
		  <section class="project-item">
            <h3>Age and Gender predictor using Computer Vision</h3>
            <p> The first step of the project was face detection which was done using Keras. once the face was detected a data set was created by extracting important features from the face, and the data set was used to train a model using  CNN to classify the gender and predict the age.</p>
          </section>
		  <section class="project-item">
            <h3>Smart health monitoring system</h3>
            <p> It is a medical aid to monitor heart rate, body temperature, and ECG using a smartphone with an SOS  facility to notify family members and call the ambulance for help. </p>
          </section>

        </div>
      </section>

      <section class="work-experience">
        <div class="content-wrap item-details divider">
          <h2>Application Name</h2>
                   
          <section class="job-item">
            <div class="job-details">
              <h3>About the App</h3>
            </div>
            <div class="job-summary">
              <p> *alot about the app*</p>
            </div>
            <div>
            	<form action="geo">
					<input type="submit" value="Geo Location">
				</form>
            </div>
          </section>
          </div>
          </section>
      <!-- ************  CONTACT INFO / SOCIAL MEDIA  ************ -->
      <footer>
        <div class="content-wrap">
          <h2>Let's Keep in Touch!</h2>

          <!-- Social media and contact links. Add or remove any networks. -->
          <ul class="contact-list">
            <li><a href="mailto:vaibhav.saxena619@gmail.com">Mail ID</a></li>
            <li><a href="http://instagram.com/_raggedy_man" target="_blank">Instagram</a></li>
            <li><a href="https://twitter.com/vaibhavace" target="_blank">Twitter</a></li>
            <li><a href="https://www.linkedin.com/in/vaibhavsaxena619/" target="_blank">LinkedIn</a></li>
          </ul>
        </div>
      </footer>
    </main>
  </body>
</html>
