# node-alpine-git

Imagen Docker ligera basada en `node:lts-alpine`, diseñada para entornos de CI/CD como Jenkins.

## Características

- Incluye Node.js, Yarn, Git y OpenSSH.
- Ideal para Jenkinsfiles y automatización de tareas.
- Basada en Alpine Linux para minimizar el tamaño.

## Uso

### Construcción

```bash
docker build -t node-alpine-git .
```

Ejecución

```bash
docker run -it --rm node-alpine-git
```

Ejemplo en Jenkinsfile

```groovy
pipeline {
    agent {
        docker {
            image 'node-alpine-git'
        }
    }
    stages {
        stage('Example') {
            steps {
                sh 'yarn --version && git --version'
            }
        }
    }
}
```
