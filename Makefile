build-container:
	# add commands to build container here
	docker build --tag=v1.0 .

push-container:
	# add commands to push container here
	docker tag v1.0 public.ecr.aws/i6e3c0d4/example_app
	docker push public.ecr.aws/i6e3c0d4/example_app

apply-container:
	# add command to deploy container image to EKS
	kubectl apply -f deployment.yaml
	kubectl get deployments

lint:
	# This is a linter for Dockerfiles
	hadolint Dockerfile