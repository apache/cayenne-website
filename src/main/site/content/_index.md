---
# content for index page of the site
---
<!-- Intro -->
<section id="intro" class="pb-5">
    <div class="row align-items-center justify-content-center  mb-3">
        <div class="col-md-6  text-center">
            <img class="img-fluid  mb-2" src="img/cayenne_illustr.png" alt="Cayenne Illustration" />
            <h1 class="display-2  font-weight-normal">
                ORM
                <span class="font-weight-xlight">with</span>
                <span class="font-weight-semibold">character</span>
            </h1>
            <p class="small  font-italic">Apache Cayenne™ is an open source persistence framework providing object-relational mapping (ORM) and remoting services</p>
        </div>
        <div class="col-md  d-none">Video</div>
    </div>

    <!-- CTA Btn -->        
    <div class="text-center">
        <a href="/download/" class="btn btn-xlg btn-primary  text-uppercase  round-corners1">Download latest</a>
    </div>

</section>

<!-- Features -->
<section id="key-features"  class="mt-3 mb-5">
	<div class="solid-heading  mb-5">
		<h3 class="text-center  mx-3l2">Key <span class="font-weight-medium">features</span>
		</h3>
	</div>
	<div class="row no-gutters  pt-2">
		<!-- Features list -->
		<div class="col-lg-4  border border-left-0 border-top-0 border-bottom-0  mb-2">
			<ul class="nav nav-pills  justify-content-between flex-lg-column flex-nowrap">
				<li class="nav-item">
					<a class="nav-link active" data-toggle="tab" href="#modeler">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_modeler.svg" alt="Modeler">
							<span class="align-self-center  d-none d-lg-block">Modeler</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#db-first-flow">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_dbfirst_flow.svg" alt="Modeler">
							<span class="align-self-center  d-none d-lg-block">DB-first flow</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#transparent-transactions">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_transp_trans.svg" alt="Modeler">
							<span class="align-self-center  d-none d-lg-block">Transparent transactions</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#objectcontext">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_object_context.svg" alt="Modeler">
							<span class="align-self-center  d-none d-lg-block">ObjectContext</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#extension-api">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_extensions.svg" alt="Modeler">
							<span class="align-self-center  d-none d-lg-block">Extension API</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#generic-objects">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_generic_objects.svg" alt="Modeler">
							<span class="align-self-center  d-none d-lg-block">Generic objects</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#data-encryption">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_data_encrypt.svg" alt="Modeler">
							<span class="align-self-center  d-none d-lg-block">Data Encryption</span>
						</div>
					</a>
				</li>
			</ul>
		</div>
		<div class="col-lg-8">
			<!-- Features Desc -->
			<div class="tab-content  px-lg-5" id="myTabContent">
				<div class="tab-pane fade show active" id="modeler" role="tabpanel" aria-labelledby="modeler-tab">
					<h4>Modeler</h4>
					<p>Cayenne is distributed with CayenneModeler - a complete GUI mapping tool that supports reverse-engineering of RDBMS schemas, working with database mappings and generation of Java source code for the persistent objects.</p>
					<figure class="highlight">
						<pre><code class="language-xml">&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;!DOCTYPE web-app
   PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
   "http://java.sun.com/dtd/web-app_2_3.dtd"&gt;
&lt;web-app&gt;
    &lt;display-name&gt;Cayenne Tutorial&lt;/display-name&gt;
    &lt;servlet&gt;
        &lt;servlet-name&gt;cayenne-project&lt;/servlet-name&gt;
        &lt;servlet-class&gt;org.apache.cayenne.rop.ROPServlet&lt;/servlet-class&gt;
        &lt;load-on-startup&gt;0&lt;/load-on-startup&gt;
    &lt;/servlet&gt;
    &lt;servlet-mapping&gt;
        &lt;servlet-name&gt;cayenne-project&lt;/servlet-name&gt;
        &lt;url-pattern&gt;/cayenne-service&lt;/url-pattern&gt;
    &lt;/servlet-mapping&gt;
&lt;/web-app&gt;</code></pre>
					</figure>
					<p>Persistent Java classes are generated and synchronized with the mapping using the Modeler or alternatively with Maven or Ant. A database SQL schema can be generated from the Modeler and also with simple API calls.</p>
				</div>
				<div class="tab-pane fade" id="db-first-flow" role="tabpanel" aria-labelledby="db-first-flow-tab">
					<h4>DB-first-flow</h4>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
				</div>
				<div class="tab-pane fade" id="transparent-transactions" role="tabpanel" aria-labelledby="transparent-transactions-tab">
					<h4>Transparent transactions</h4>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
				</div>
				<div class="tab-pane fade" id="objectcontext" role="tabpanel" aria-labelledby="objectcontext-tab">
					<h4>Object Context</h4>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
				</div>
				<div class="tab-pane fade" id="extension-api" role="tabpanel" aria-labelledby="extension-api-tab">
					<h4>Extension API</h4>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
				</div>
				<div class="tab-pane fade" id="generic-objects" role="tabpanel" aria-labelledby="generic-objects-tab">
					<h4>Generic Objects</h4>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
				</div>
				<div class="tab-pane fade" id="data-encryption" role="tabpanel" aria-labelledby="data-encryption-tab">
					<h4>Data Encryption</h4>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.
					</p>
				</div>
			</div>
		</div>
	</div>
</section>