---
title: Cayenne 4.1 Final Released
date: 2020-07-21T12:00:00+03:00
---

Apache Cayenne team is really glad to announce a final (general availability) release of _Cayenne 4.1_. 

Here is a recap of changes made since 4.0:

- New field-based data objects (see {{% jira 2330 %}}), 
  that are **much faster** to read and write, while **significantly** reducing the app memory footprint.
  
- Dependency-free Cayenne core. No more velocity or commons-collections compile dependencies. Only "slf4j-api" is required in the base config.

- New extensible project XML structure. This allows to store cgen and reverse engineering configs along with the project.

- New reverse engineering UI in Cayenne Modeler, that is much more intuitive and customizable, 
more over configuration is now saved so you can evolve it with your model and perform reverse engineering in one click.
<p style="text-align: center;">
    <img class="img-fluid" src="/docs/4.1/upgrade-guide/images/modeler-dbimport.png" alt="New reverse engineering UI"/>
</p>

- User controlled transaction propagation logic and isolation level.

```
    TransactionManager manager = runtime.getInjector().getInstance(TransactionManager.class);
    TransactionDescriptor descriptor = new TransactionDescriptor(
            Connection.TRANSACTION_SERIALIZABLE, // set transaction isolation to SERIALIZABLE 
            TransactionPropagation.REQUIRES_NEW  // require new transaction for every operation
    );
    manager.performInTransaction(() -> {
        // perform some DB operations...
        return null;
    }, descriptor);
    
```

- And numerous minor fixes and improvements. 

Cayenne can be downloaded from [here](/download.html).

{{% gap %}}

Here is bug fixes since the last release candidate:

* {{% jira 2642 %}} EhCache memory leak due to misconfiguration
* {{% jira 2643 %}} ObjectSelect.prefetch(name, semantics) method creates a phantom node
* {{% jira 2646 %}} Wrong target path selection logic in cgen config
* {{% jira 2647 %}} Modeler: project upgrade from 4.0.B2 to 4.1.RC2 failure
* {{% jira 2653 %}} No methods for queries with qualifier parameters generated
* {{% jira 2654 %}} Exception in dbimport when relationships should be imported, but no explicit configuration exists