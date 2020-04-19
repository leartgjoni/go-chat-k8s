# this will also remove the load balancer. 
# If not run, terraform will complain on destroy because it will not be able to delete all the vpc, 
# being that some ports in them are being used by the load balancer
# of which terraform has no knowledge, so it can't delete.
helm delete go-chat-nginx