# web-colecao

## Pré-requisito

* Java 17
* Gradle 8.10
* Enconding: UTF-8
* Tomcat 9.1 : https://tomcat.apache.org/download-90.cgi

## Algumas Tecnologias


Recomendações

É recomendado usar o Intelij IDEA para realizar modificações no projeto.

Configurações de execução do projeto no Intelij

* Acessar menu '`Run`' -> '`Edit Configuration`'
* Selecionar: '`Add New Configuration`' -> '`Smart Tomcat`'
  * name:
  * Tomcat server: '`Apache Tomcat/9.0.98`'
  * Catalina base: '`C:~.SmartTomcat\web-colecao\web-colecao.main`'
  * Deployment directory: '`C:~/IdeaProjects/web-colecao/src/main/webapp`'
  * Use classpath of module: '`web-colecao.main`'
  * Context path: '`/web-colecao`'
  * Server port: '`8081`'
  * Admin port: '`8005`'

---
## Acesso ao sistema 

### Local
Caso se subiu a aplicação api-colecao na porta 8080 então sobe a versão web 8081

```
http://localhost:8081/web-colecao 
```

