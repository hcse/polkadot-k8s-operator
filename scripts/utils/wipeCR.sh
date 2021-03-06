if test -z "$DIR"
then
      DIR=$(dirname "${BASH_SOURCE[0]}")/..
      cd "$DIR" || exit
      source ./config/config.sh
fi

pushd .. >/dev/null 2>&1
kubectl delete -f deploy/crds/"$K8S_CR"
popd >/dev/null 2>&1 || exit