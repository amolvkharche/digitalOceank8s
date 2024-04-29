RED='\033[0;31m'
RESET="\e[0m"
GREEN='\033[0;37m'
echo -e "----------------------------------------------------------------------------------------------------"
echo -e "${RED}Removing neuvector pods and services ${GREEN} "
echo -e "----------------------------------------------------------------------------------------------------"
kubectl delete -f https://raw.githubusercontent.com/neuvector/manifests/main/kubernetes/5.3.0/neuvector-k8s.yaml

echo -e "----------------------------------------------------------------------------------------------------"
echo -e "${RED}Removing neuvector namespace  ${GREEN} "
echo -e "----------------------------------------------------------------------------------------------------"
kubectl delete ns neuvector


echo -e "----------------------------------------------------------------------------------------------------"
echo -e "${RED}Removing neuvector clusterrole and clusterrolebindings  ${GREEN}"
echo -e "----------------------------------------------------------------------------------------------------"
kubectl delete clusterrole `kubectl get clusterrole |grep -i neuvector |awk '{print $1}'`

kubectl delete clusterrolebindings `kubectl get clusterrolebindings |grep -i neuvector |awk '{print $1}'`
echo -e "----------------------------------------------------------------------------------------------------${RESET}"

