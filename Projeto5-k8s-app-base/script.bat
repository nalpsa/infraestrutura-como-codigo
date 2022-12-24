echo "Criando as imagens....."

docker build -t nalpsa/dio-backend:1.0 backend/.
docker build -t nalpsa/dio-db:1.0 db/.

echo "Realizando o push das imagens....."

docker push -t nalpsa/dio-backend:1.0
docker push -t nalpsa/dio-db:1.0

echo "Criando serviços no cluster Kubernetes...."
kubectl apply -f ./services.yaml

echo "Criando os deployments...."
kubectl apply -f ./deployment.yaml