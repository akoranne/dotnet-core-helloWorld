# .Net Core Hello World 

This project is a sample .Net Core app. It highlights the following...

* c# example
* manifest file to deploy to pcf
* concourse ci/cd pipeline.

## Local build
To build locally, run the following steps.

>
>   $ dotnet restore
>
>   $ dotnet build
>
>   $ dotnet run
>



## PCF Dev

__[Meet PCF Dev](https://blog.pivotal.io/pivotal-cloud-foundry/products/meet-pcf-dev-your-ticket-to-running-cloud-foundry-locally)__, a simplified, and minimized version of the Pivotal Cloud Foundry intended for your local machine. And [Getting started](https://pivotal.io/platform/pcf-tutorials/getting-started-with-pivotal-cloud-foundry-dev/introduction) is simple.

## Deploy to cloud

* Target the cloud instance

  ```
     $ cf login -a api.local.pcfdev.io --skip-ssl-validation

     API endpoint:  api.local.pcfdev.io   
     Email>     admin
     Password>  admin
  ```

* Build and deploy to cloud

  ```
     $ cd dotnet-core-helloWorld
     $ dotnet restore
     $ dotnet build
     $ cf push -f manifest.yml
  ```

* Test the cloud service

  ```
     $ curl -v 'http://dotnet-core-helloWorld.local.pcfdev.io'
     
  ```

* Concours CI/CD Pipleine

The CI/CD pipeline will build the and push the app to local pcf-dev instance. 
Setup the concourse pipeline as follows

  ```
     $ fly -t local set-pipeline -p dotnet-core-helloWorld -c ci/pipeline.yml -l ci/credentials-local.yml
     
     $ fly -t local unpause-pipeline -p dotnet-core-helloWorld
     
  ```

Please post your comments for me, or if you have any questions.

