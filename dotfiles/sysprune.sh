#!/usr/bin/env bash

# This is a draft but it works

# FIRST (I don't even know if it works but we'll assume yes)
# sudo launchctl list
# sudo launchctl disable system/netbiosd
# sudo launchctl disable system/parsecd
# sudo launchctl disable system/parentalcontrols.check
# sudo launchctl disable system/airportd
# sudo launchctl disable system/rtcreportingd

# Agents to disable
TODISABLE=('com.apple.photoanalysisd' 'com.apple.telephonyutilities.callservicesd' 'com.apple.AirPlayUIAgent' 'com.apple.AirPortBaseStationAgent' 'com.apple.CalendarAgent' 'com.apple.DictationIM' 'com.apple.iCloudUserNotifications' 'com.apple.familycircled' 'com.apple.familycontrols.useragent' 'com.apple.familynotificationd' 'com.apple.gamed' 'com.apple.icloud.findmydeviced.findmydevice-user-agent' 'com.apple.icloud.fmfd' 'com.apple.imagent' 'com.apple.cloudfamilyrestrictionsd-mac' 'com.apple.cloudpaird' 'com.apple.cloudphotosd' 'com.apple.DictationIM' 'com.apple.assistant_service' 'com.apple.CallHistorySyncHelper' 'com.apple.CallHistoryPluginHelper' 'com.apple.AOSPushRelay' 'com.apple.IMLoggingAgent' 'com.apple.geodMachServiceBridge' 'com.apple.syncdefaultsd' 'com.apple.security.cloudkeychainproxy3' 'com.apple.security.idskeychainsyncingproxy' 'com.apple.security.keychain-circle-notification' 'com.apple.sharingd' 'com.apple.appleseed.seedusaged' 'com.apple.cloudd' 'com.apple.assistantd' 'com.apple.parentalcontrols.check' 'com.apple.parsecd' 'com.apple.identityservicesd')


for agent in "${TODISABLE[@]}"
do
    sudo launchctl unload -w /System/Library/LaunchAgents/${agent}.plist
    launchctl unload -w /System/Library/LaunchAgents/${agent}.plist
    echo "[OK] Agent ${agent} Disabled"
done


# Daemons to disable
TODISABLE=('com.apple.netbiosd' 'com.apple.preferences.timezone.admintool' 'com.apple.preferences.timezone.auto' 'com.apple.remotepairtool' 'com.apple.rpmuxd' 'com.apple.security.FDERecoveryAgent' 'com.apple.icloud.findmydeviced' 'com.apple.findmymacmessenger' 'com.apple.familycontrols' 'com.apple.findmymac' 'com.apple.AirPlayXPCHelper' 'com.apple.SubmitDiagInfo' 'com.apple.screensharing' 'com.apple.appleseed.fbahelperd' 'com.apple.apsd' 'com.apple.AOSNotificationOSX' 'com.apple.FileSyncAgent.sshd' 'com.apple.ManagedClient.cloudconfigurationd' 'com.apple.ManagedClient.enroll' 'com.apple.ManagedClient' 'com.apple.ManagedClient.startup' 'com.apple.iCloudStats' 'com.apple.locationd' 'com.apple.mbicloudsetupd' 'com.apple.laterscheduler' 'com.apple.awacsd' 'com.apple.eapolcfg_auth' 'com.apple.familycontrols')


for daemon in "${TODISABLE[@]}"
do
    sudo launchctl unload -w /System/Library/LaunchDaemons/${daemon}.plist
    launchctl unload -w /System/Library/LaunchDaemons/${daemon}.plist
    echo "[OK] Daemon ${daemon} Disabled"
done


# /System/Library/LaunchAgents/com.apple.geodMachServiceBridge.plist: Operation not permitted while System Integrity Protection is engaged
# /System/Library/LaunchAgents/com.apple.security.idskeychainsyncingproxy.plist: Operation not permitted while System Integrity Protection is engaged
# /System/Library/LaunchAgents/com.apple.security.keychain-circle-notification.plist: Operation not permitted while System Integrity Protection is engaged
