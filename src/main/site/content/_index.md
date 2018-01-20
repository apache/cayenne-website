---
# content for index page of the site
---
<!-- Intro -->
<section id="intro" class="pb-5">
    <div class="row align-items-center justify-content-center  mb-3">
        <div class="col-md-6  text-center">
            <img class="img-fluid  mb-2" src="img/cayenne_illustr.png" alt="Cayenne Illustration" />
            <h1 class="display-2  font-weight-normal">
				<span class="font-weight-xlight">Your</span>
				<span class="font-weight-semibold">ORM</span>
				superpower
            </h1>
            <p class="small  font-italic">Apache Cayenne™ is an open source Java ORM (object-to-relational mapping) framework</p>
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
							<img class="align-self-center  mr-lg-3l2" src="img/icon_dbfirst_flow.svg" alt="DB First Flow">
							<span class="align-self-center  d-none d-lg-block">DB-first flow</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#transparent-transactions">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_transp_trans.svg" alt="Transactions">
							<span class="align-self-center  d-none d-lg-block">Transparent transactions</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#objectcontext">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_object_context.svg" alt="Object Context">
							<span class="align-self-center  d-none d-lg-block">ObjectContext</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#extension-api">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_extensions.svg" alt="Extension API">
							<span class="align-self-center  d-none d-lg-block">Extension API</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#generic-objects">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_generic_objects.svg" alt="Generic Objects">
							<span class="align-self-center  d-none d-lg-block">Generic objects</span>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#data-encryption">
						<div class="media">
							<img class="align-self-center  mr-lg-3l2" src="img/icon_data_encrypt.svg" alt="Data Encryption">
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
					<p>Cayenne is distributed with CayenneModeler - a complete GUI mapping tool that supports reverse-engineering of RDBMS schemas, editing object-relational mapping projects, generation of Java source code for the persistent objects and other functions.</p>
					
		            <img class="img-fluid  mb-2" src="img/cayenne-modeler1.png" alt="Cayenne Modeler" />

				</div>
				<div class="tab-pane fade" id="db-first-flow" role="tabpanel" aria-labelledby="db-first-flow-tab">
					<h4>DB-first-flow</h4>
					<p>Cayenne allows you to design your data model in a single place - the database. Other layers (OR mapping and Java objects) are synchronized automatically via CayenneModeler or a build script, so you don't have to repeat yourself. Such approach is called "database-first". It saves you development time and prevents errors by ensuring that your model is in sync across multiple layers. It is also quite flexible. It works well with common DB migrations frameworks like Liquibase or Flyway, allows object structure customizations and is designed for iterative schema evolution.
					</p>
				</div>
				<div class="tab-pane fade" id="transparent-transactions" role="tabpanel" aria-labelledby="transparent-transactions-tab">
					<h4>Transparent transactions</h4>
					<p>
						Most ORM frameworks require you to manage transactions manually or with external tools like Spring. Also you must always ensure you stay within transaction bounds when traversing relationships between objects. Cayenne takes a notably different approach, freeing you from writing lots of trivial code. Transaction management happens automatically behind the scenes. Object graph can be expanded lazily on demand without any special considerations. 
					</p>
					<p>
						At the same time Cayenne works well with external transaction managers. It also has its own transaction API that can be used to run multiple operations atomically in regards to DB commit/rollback. The good thing is that it is completely optional and should be used only when needed.
					</p>
				</div>
				<div class="tab-pane fade" id="objectcontext" role="tabpanel" aria-labelledby="objectcontext-tab">
					<h4>Object Context</h4>
					<p>
						At the heart of Cayenne persistence API lies ObjectContext. ObjectContext can be thought of as a unit of work. It  has its own copy of persistent objects. While vaguely similar to JPA EntityManager, ObjectContext is closer to a version control client. It is not connected to the database except when a read or write operation is in progress, it doesn't hold on to any resources (such as DB connections), and doesn't need to be closed. 
					</p>
					<p>
						As a result ObjectContexts are serializable and rather lightweight. Contexts can be nested (a child context can read/write from/to parent without affecting the DB). There is even a version of ObjectContext that can run in an entirely different JVM from the main app, and communicate with the app via a binary web service.
					</p>
				</div>
				<div class="tab-pane fade" id="extension-api" role="tabpanel" aria-labelledby="extension-api-tab">
					<h4>Extension API</h4>
					<p>
						 Cayenne stack is built around a small dependency injection (DI) container responsible for configuring and binding all framework services. It provides a simple API to define custom implementations of core services and strategies or add extensions to the existing ones (e.g. custom value types). Additionally many things can be configured via system properties.
					</p>
					<p>
						Cayenne is truly modular. The above-mentioned DI container supports autoloading of extra modules from classpath. Cayenne itself takes advantage of this, isolating various optional features and integrations into optional modules. You can do the same with your own code.
					</p>
				</div>
				<div class="tab-pane fade" id="generic-objects" role="tabpanel" aria-labelledby="generic-objects-tab">
					<h4>Generic Objects</h4>
					<p>
						Traditional Java ORMs depend on bytecode generation or dynamic proxies to "connect" persistent objects with the framework. In constrast, Cayenne objects implement a simple API contract to interact with the ORM runtime, but otherwise can be structured arbitrarily, not requiring any annotation or "enhancement".
					</p>
					<p>This opens up some interesting possibilities. E.g. Cayenne provides a Map-based "generic" persistent object that can be dynamically mapped to any entity. This means that ORM model can be created in runtime without recompiling the code. Combined with DB reverse-engineering feature, this allows building completely generic data tools and services.
					</p>
				</div>
				<div class="tab-pane fade" id="data-encryption" role="tabpanel" aria-labelledby="data-encryption-tab">
					<h4>Data Encryption</h4>
					<p>
						Traditionally protecting DB data at rest stops at encrypting entire hard drive partitions. Cayenne goes a few steps further, offering a more secure and flexible solution - "cayenne-crypto" module with field-level data encryption. 
					</p>
					<p>
						 You can designate any number of columns in multiple tables in your model as encrypted, and Cayenne will transparently encrypt and decrypt data with minimal overhead. Default encryption algorithm is AES/CBC/PKCS#5 with 128 or 256-bit key. Other useful features are key revocation, data compression, HMAC signatures.
					</p>
		            <img class="img-fluid  mb-2" src="img/crypto-protocol.png" alt="Cayenne Crypto Protocol" />
				</div>
			</div>
		</div>
	</div>
</section>