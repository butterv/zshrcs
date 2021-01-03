function pilogin() {
	case "$1" in
		"m" ) ssh -i ~/.ssh/id_rsa_raspberry satoshi@raspberrypi-kubernetes-master ;;
		"w1" ) ssh -i ~/.ssh/id_rsa_raspberry satoshi@raspberrypi-kubernetes-worker1 ;;
		"w2" ) ssh -i ~/.ssh/id_rsa_raspberry satoshi@raspberrypi-kubernetes-worker2 ;;
		* ) echo "unknown host" ;;
	esac
}
