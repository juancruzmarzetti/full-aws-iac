# IaC
 Esta infraestructura en AWS tiene un costo de diario de 0.12 U$D. Todos los gastos vienen de la VPC, más exactamente del gasto de la VPC de "Amazon Virtual Private Cloud Public IPv4 Addresses" > "
$0.005 per In-use public IPv4 address per hour". Me parece que el gasto se debe a que la base de datos en AWS RDS es públicamente accesible, pero al intentar hacerla privada, cuando ejecuto el pipeline desde Gitlab en el repositorio del Back-End e intento que se conecte la API a la Base de Datos RDS para generar las tablas y etc. no logro generar bien el túnel SSH por el cual se debería poder conectar, (utilizando la instancia EC2 como bastion host). Cualquier aporte se agredece muchísimo 🙌

- [Back-End de esta Infraestructura](https://github.com/juancruzmarzetti/java-spring-iac-aws)
- [Front-End de esta infraestructura](https://github.com/juancruzmarzetti/react-vite-iac-aws)

### ♻ Infraestructura reutilizable
# AWS IaC con Terraform

## Instrucciones para reutilización de IaC:

### Variables de Entorno de Gitlab:

- #### Heredadas del grupo de repositorios:
  - **`JUANKEYS`**: valor de nuestras llaves .pem. 
  - **`CI_REGISTRY_USER`**: nuestro nombre de usuario de Docker Hub.
  - **`CI_REGISTRY_PASSWORD`**: nuestra contraseña de Docker Hub.
  - **`CI_REGISTRY`**: "docker.io" como valor, sin comillas. 
  - **`AWS_SECRET_ACCESS_KEY`**: nuestra llave de acceso secreta de AWS.
  - **`AWS_ACCESS_KEY_ID`**: nuestro id de llave de acceso de AWS.

- #### De este repositorio específico:
  - **`TF_API_TOKEN`**: Token de acceso personal; ir a User Settings > Access Tokens > Generar un token con permisos "api" y "read_repository" (copiar el token, ya que solo se muestra una vez). Ese token será el valor de esta variable.

  Esta IaC se complementa con el Back-End de [este repositorio](https://github.com/juancruzmarzetti/java-spring-iac-aws) y tambíen con el Front-End de [este otro repositorio](https://github.com/juancruzmarzetti/react-vite-iac-aws)
---

### English
This AWS infrastructure has a daily cost of 0.12 U$D. All expenses come from the VPC, more precisely from the VPC expense of "Amazon Virtual Private Cloud Public IPv4 Addresses" > "
$0.005 per In-use public IPv4 address per hour". It seems to me that the expense is due to the fact that the database in AWS RDS is publicly accessible, but when I try to make it private, when I run the pipeline from Gitlab in the Back-End repository, and I try to connect the API to the RDS Database to generate the tables and etc. I cannot correctly generate the SSH tunnel through which it should be able to connect, (using the EC2 instance as bastion host). Any contribution is appreciated a lot 🙌

- [Back-End of this Infrastructure](https://github.com/juancruzmarzetti/java-spring-iac-aws)
- [Front-End of this Infrastricture](https://github.com/juancruzmarzetti/react-vite-iac-aws)

### ♻ Reusable Infrastructure
# AWS IaC with Terraform

## Instructions for Reusing IaC:

### GitLab Environment Variables:

- #### Inherited from the repository group:
  - **`JUANKEYS`**: value of our .pem keys.
  - **`CI_REGISTRY_USER`**: our Docker Hub username.
  - **`CI_REGISTRY_PASSWORD`**: our Docker Hub password.
  - **`CI_REGISTRY`**: "docker.io" as the value, without quotes.
  - **`AWS_SECRET_ACCESS_KEY`**: our AWS secret access key.
  - **`AWS_ACCESS_KEY_ID`**: our AWS access key ID.

- #### For this specific repository:
  - **`TF_API_TOKEN`**: Personal access token; go to User Settings > Access Tokens > Generate a token with "api" and "read_repository" permissions (copy the token as it’s shown only once). This token will be the value for this variable.

  This IaC is complemented by the Back-End in [this repository](https://github.com/juancruzmarzetti/java-spring-iac-aws) and also by the Front-End in [this other repository](https://github.com/juancruzmarzetti/react-vite-iac-aws).
