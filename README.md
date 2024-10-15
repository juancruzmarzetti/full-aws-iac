# IaC
 Esta infraestructura en AWS tiene un costo de diario de 0.12 U$D. Todos los gastos vienen de la VPC, más exactamente del gasto de la VPC de "Amazon Virtual Private Cloud Public IPv4 Addresses" > "
$0.005 per In-use public IPv4 address per hour". Me parece que el gasto se debe a que la base de datos en AWS RDS es públicamente accesible, pero al intentar hacerla privada, cuando ejecuto el pipeline desde Gitlab en el repositorio del Back-End e intento que se conecte la API a la Base de Datos RDS para generar las tablas y etc. no logro generar bien el túnel SSH por el cual se debería poder conectar, (utilizando la instancia EC2 como bastion host). Cualquier aporte se agredece muchísimo 🙌

- [Back-End de esta Infraestructura](https://github.com/juancruzmarzetti/java-spring-iac-aws)

---

### English
This AWS infrastructure has a daily cost of 0.12 U$D. All expenses come from the VPC, more precisely from the VPC expense of "Amazon Virtual Private Cloud Public IPv4 Addresses" > "
$0.005 per In-use public IPv4 address per hour". It seems to me that the expense is due to the fact that the database in AWS RDS is publicly accessible, but when I try to make it private, when I run the pipeline from Gitlab in the Back-End repository, and I try to connect the API to the RDS Database to generate the tables and etc. I cannot correctly generate the SSH tunnel through which it should be able to connect, (using the EC2 instance as bastion host). Any contribution is appreciated a lot 🙌

- [Back-End of this Infrastructure](https://github.com/juancruzmarzetti/java-spring-iac-aws)
