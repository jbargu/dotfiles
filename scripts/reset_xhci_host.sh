#!/bin/bash
CONTROLLER="0000:2a:00.1"
echo -n "$CONTROLLER" | sudo tee /sys/bus/pci/drivers/xhci_hcd/unbind
sleep 3
echo -n "$CONTROLLER" | sudo tee /sys/bus/pci/drivers/xhci_hcd/bind
