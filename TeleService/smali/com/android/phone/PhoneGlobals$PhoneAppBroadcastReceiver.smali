.class Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 46

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "PhoneAppBroadcastReceiver onReceive "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string/jumbo v42, "airplane_mode_on"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-static {v0, v5}, Lcom/android/phone/PhoneGlobals;->-wrap3(Lcom/android/phone/PhoneGlobals;I)V

    :cond_1
    :goto_0
    const-string/jumbo v41, "feature_usa"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->onPhoneReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    const-string/jumbo v41, "feature_kor"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_3

    invoke-static {}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->getInstance()Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v41, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_24

    const-string/jumbo v41, "subscription"

    const/16 v42, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    invoke-static/range {v37 .. v37}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v25

    const-string/jumbo v41, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v41, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v41, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "mReceiver: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "- state: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " apnType= "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "- reason: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "- subId: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "- phoneId: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v25 .. v25}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v41

    if-eqz v41, :cond_6

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v24

    :goto_1
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v41

    if-nez v41, :cond_7

    const-string/jumbo v41, "DISCONNECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    const-string/jumbo v41, "roamingOn"

    const-string/jumbo v42, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    :goto_2
    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "Phone.REASON_ROAMING_ON : roamingOn"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "PhoneConstants.STATE_CHANGE_REASON_KEY : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-static {v0, v10}, Lcom/android/phone/PhoneGlobals;->-set0(Lcom/android/phone/PhoneGlobals;Z)Z

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "disconnectedDueToRoaming = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " PhoneUtils.isDataRoaming() = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDataRoaming()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "feature_usa"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_8

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->actionAnyDataConnectionStateChanged(Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->-wrap8(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    goto/16 :goto_1

    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v41, "mobile_newtork_style_for_lgt"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    const-string/jumbo v41, "mobile_newtork_style_for_ktt"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    const-string/jumbo v41, "mobile_newtork_style_for_skt"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    move v9, v15

    const-string/jumbo v41, "default"

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    const-string/jumbo v41, "pdpSetupFailed"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    const-string/jumbo v41, "CONNECTING"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->-get2()Z

    move-result v41

    if-nez v41, :cond_9

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "CONNECTING -showDataCallSetupFailed"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/NotificationMgr;->showDataCallSetupFailed()V

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-set1(Z)Z

    :cond_9
    const-string/jumbo v41, "DISCONNECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_a

    const-string/jumbo v41, "CONNECTING"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1b

    const-string/jumbo v41, "apnFailed"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1b

    :cond_a
    if-eqz v15, :cond_b

    if-eqz v14, :cond_b

    const-string/jumbo v41, "radioTurnedOff"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->-get2()Z

    move-result v41

    if-eqz v41, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/NotificationMgr;->hideDataCallSetupFailed()V

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "DISCONNECTED -hideDataCallSetupFailed"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-set1(Z)Z

    :cond_b
    if-eqz v14, :cond_11

    if-nez v16, :cond_c

    if-eqz v15, :cond_11

    :cond_c
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getActivePDPRejectCause()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "state = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " reason = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " apnType = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " rejectstate = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "roamingOn"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_d

    if-eqz v16, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v41

    if-eqz v41, :cond_f

    :cond_d
    if-eqz v16, :cond_18

    if-eqz v32, :cond_e

    const-string/jumbo v41, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_16

    :cond_e
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v41

    if-nez v41, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xa

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "DISCONNECTED/roamingOn - is_dataroaming_on off -> showDataDisconnectedRoaming()"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_4
    if-eqz v16, :cond_11

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isMobileDataOn()Z

    move-result v18

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v41

    if-nez v41, :cond_10

    if-eqz v18, :cond_10

    if-eqz v32, :cond_10

    const-string/jumbo v41, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1a

    :cond_10
    :goto_5
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x1f

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_11
    if-eqz v17, :cond_12

    if-eqz v10, :cond_12

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "Don\'t show showDataDisconnectedRoaming() in SKT Operator"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_6
    if-nez v16, :cond_5

    if-nez v17, :cond_5

    if-nez v15, :cond_5

    const-string/jumbo v41, "feature_multisim"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_20

    const-string/jumbo v41, "null"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_5

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "MultiSIM reason = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_13

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDataRoaming()Z

    move-result v41

    if-nez v41, :cond_14

    :cond_13
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v41

    if-nez v41, :cond_1f

    const-string/jumbo v41, "DISCONNECTED"

    const-string/jumbo v42, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1f

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v41

    if-eqz v41, :cond_1f

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDataRoaming()Z

    move-result v41

    if-eqz v41, :cond_1f

    :cond_14
    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "MultiSIM 2 reason = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "roamingOn"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_15

    const-string/jumbo v41, "dataEnabled"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_15

    const-string/jumbo v41, "connected"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_15

    const-string/jumbo v41, "nwTypeChanged"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xa

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v41, "0"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_e

    const-string/jumbo v41, "apnFailed"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xa

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v10, 0x1

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "DISCONNECTED/roamingOn - showDataDisconnectedRoaming()"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "DISCONNECTED/roamingOn - skip this noti rejectState= "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v41

    if-nez v41, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xa

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "DISCONNECTED/roamingOn - showDataDisconnectedRoaming()"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xb

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "DISCONNECTED/roamingOn - hideDataDisconnectedRoaming() bcz data_roaming is on"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1a
    const-string/jumbo v41, "0"

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x1e

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    :cond_1b
    const-string/jumbo v41, "CONNECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_12

    if-eqz v15, :cond_1c

    if-eqz v14, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->-get2()Z

    move-result v41

    if-eqz v41, :cond_1c

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "CONNECTED - hideDataCallSetupFailed()"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/NotificationMgr;->hideDataCallSetupFailed()V

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-set1(Z)Z

    :cond_1c
    if-eqz v14, :cond_1e

    if-nez v16, :cond_1d

    if-nez v15, :cond_1d

    if-eqz v17, :cond_1e

    :cond_1d
    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "CONNECTED - hideDataDisconnectedRoaming()"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xb

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1e
    if-eqz v16, :cond_12

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x1f

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_1f
    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "MultiSIM 3 reason = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xb

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_20
    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "reason : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "null"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_5

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "disconnectedDueToRoaming : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "PhoneProxy.getDataRoamingEnabled() : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "intent.getStringExtra(PhoneConstants.STATE_KEY) : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "TelephonyManager.getDefault().getDataEnabled() : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "PhoneUtils.isDataRoaming() : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDataRoaming()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "SingleSIM reason = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_21

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v41

    if-nez v41, :cond_23

    const-string/jumbo v41, "DISCONNECTED"

    const-string/jumbo v42, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_23

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v41

    if-eqz v41, :cond_23

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDataRoaming()Z

    move-result v41

    if-eqz v41, :cond_23

    :cond_21
    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "SingleSIM 2 reason = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "roamingOn"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_22

    const-string/jumbo v41, "dataEnabled"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_22

    const-string/jumbo v41, "connected"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_22

    const-string/jumbo v41, "nwTypeChanged"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xa

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "sendEmptyMessage(EVENT_DATA_ROAMING_DISCONNECTED) is done."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_23
    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "SingleSIM 3 reason = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xb

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_24
    const-string/jumbo v41, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get3(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v41

    if-eqz v41, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const-string/jumbo v43, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x8

    move-object/from16 v0, v42

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_25
    const-string/jumbo v41, "KCL"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "ERO"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "OPT"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "TMN"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "TEB"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "TWO"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "XTE"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "SMA"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "GLB"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "MTL"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "VVT"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string/jumbo v41, "MBC"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_28

    :cond_26
    const-string/jumbo v41, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v42, "READY"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    move/from16 v41, v0

    if-nez v41, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/android/phone/PhoneGlobals;->mIsSim2Locked:Z

    move/from16 v41, v0

    if-eqz v41, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/phone/PhoneGlobals;->mIsSim2Locked:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v41

    if-eqz v41, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v41

    if-eqz v41, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->dismiss()V

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, " dismiss EVENT_SIM_STATE_CHANGED READY"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_7
    const-string/jumbo v41, "lost_phone_lock"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_29

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v41

    if-eqz v41, :cond_29

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->checkPendingEmergencyDialer(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_29
    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSimMccMncReady()Z

    move-result v41

    if-eqz v41, :cond_1

    const-string/jumbo v41, "support_smart_call"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v41

    if-nez v41, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v41

    if-nez v41, :cond_1

    const-string/jumbo v41, "smart_call_privacy_notice_donotshow"

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_2d

    const/16 v35, 0x1

    :goto_8
    const-string/jumbo v41, "smart_call_privacy_notice_agree"

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_2e

    const/16 v27, 0x1

    :goto_9
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportMccSmartCall()Z

    move-result v41

    sput-boolean v41, Lcom/android/phone/PhoneGlobals;->mSmartCallMccSupported:Z

    const-string/jumbo v41, "support_smart_call_mcc"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2a

    const-string/jumbo v41, "support_smart_call_mcc"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2b

    sget-boolean v41, Lcom/android/phone/PhoneGlobals;->mSmartCallMccSupported:Z

    if-eqz v41, :cond_2b

    :cond_2a
    if-eqz v35, :cond_2b

    if-eqz v27, :cond_2f

    :cond_2b
    :goto_a
    const-string/jumbo v41, "support_smart_call_mcc"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    sget-boolean v41, Lcom/android/phone/PhoneGlobals;->mSmartCallMccSupported:Z

    if-nez v41, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isShowingSmartCallNoti()Z

    move-result v41

    if-eqz v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/SmartCallNotificationMgr;->cancelSmartCallsFilterNotification()V

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "Skip dismiss"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2d
    const/16 v35, 0x0

    goto :goto_8

    :cond_2e
    const/16 v27, 0x0

    goto :goto_9

    :cond_2f
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->needShowSmartCallNoti()Z

    move-result v41

    if-eqz v41, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/SmartCallNotificationMgr;->showSmartCallsFilterNotification()V

    goto :goto_a

    :cond_30
    const-string/jumbo v41, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_31

    const-string/jumbo v41, "support_smart_call"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isShowingSmartCallNoti()Z

    move-result v41

    if-nez v41, :cond_1

    const-string/jumbo v41, "first_call"

    const/16 v42, -0x1

    invoke-static/range {v41 .. v42}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v41

    if-nez v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/SmartCallNotificationMgr;->cancelSmartCallsFilterNotification()V

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v41, "com.samsung.android.smartcallprovider.ACTION_SUPPORT_NOTI"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_32

    const-string/jumbo v41, "support_smart_call"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isShowingSmartCallNoti()Z

    move-result v41

    if-eqz v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->smartNotificationMgr:Lcom/android/phone/SmartCallNotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/SmartCallNotificationMgr;->cancelSmartCallsFilterNotification()V

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v41, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_33

    const-string/jumbo v41, "phoneName"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v41, "phone"

    const/16 v42, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Radio technology switched. Now "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " ("

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ") is active."

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->-wrap5(Lcom/android/phone/PhoneGlobals;I)V

    const-string/jumbo v41, "roaming_enhancement"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    const-string/jumbo v41, "global_network_cdma_gsm_enable_for_spr"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->updatePhoneName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v41, "com.samsung.intent.action.ACTION_BACKGROUND_SWITCH_COMPLETE"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_34

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "Receive  ACTION_BACKGROUND_SWITCH_COMPLETE "

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_34
    const-string/jumbo v41, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->-wrap4(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_35
    const-string/jumbo v41, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3a

    const-string/jumbo v41, "phone"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneGlobals;->-set6(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Emergency Callback Mode. phoneId:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get8(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/Phone;

    move-result-object v41

    if-eqz v41, :cond_39

    const-string/jumbo v41, "usa_cdma_emergency_concept"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get8(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/Phone;

    move-result-object v41

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->onEmergencyCallbackModeChanged(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get8(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/Phone;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v41

    if-eqz v41, :cond_38

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "phoneinECMState"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    if-eqz v41, :cond_37

    new-instance v41, Landroid/content/Intent;

    const-class v42, Lcom/android/phone/EmergencyCallbackModeService;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneGlobals;->-set6(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_38
    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Got ACTION_EMERGENCY_CALLBACK_MODE_CHANGED, but ECM isn\'t supported for phone: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/phone/PhoneGlobals;->-get8(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/Phone;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneGlobals;->-set6(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_39
    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "phoneInEcm is null."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3a
    const-string/jumbo v41, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3c

    const-string/jumbo v41, "vowifi_in_can"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_3c

    const-string/jumbo v41, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v42, v0

    if-eqz v21, :cond_3b

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v41

    :goto_b
    move/from16 v0, v41

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/phone/PhoneGlobals;->mIsWifiConnected:Z

    const-string/jumbo v41, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "NETWORK_STATE_CHANGED_ACTION : mIsWifiConnected : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/phone/PhoneGlobals;->mIsWifiConnected:Z

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "NETWORK_STATE_CHANGED_ACTION getWifiState : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string/jumbo v42, "wifi_calling_help"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "mWifiCalling: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/android/phone/PhoneGlobals;->mIsWifiConnected:Z

    move/from16 v41, v0

    if-eqz v41, :cond_1

    if-nez v19, :cond_1

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "inside if : mIsWifiConnected : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/phone/PhoneGlobals;->mIsWifiConnected:Z

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string/jumbo v42, "wifi_calling_help"

    const/16 v43, 0x1

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v40, Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const-class v42, Lcom/android/phone/WfcCallAlertPopupActivity;

    invoke-direct/range {v40 .. v42}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v41, "android.intent.action.MAIN"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v41, 0x10000000

    invoke-virtual/range {v40 .. v41}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v41, "provisioning_popup"

    const-string/jumbo v42, "false"

    invoke-virtual/range {v40 .. v42}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3b
    const/16 v41, 0x0

    goto/16 :goto_b

    :cond_3c
    const-string/jumbo v41, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3e

    const-string/jumbo v41, "vowifi_in_can"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_3e

    const-string/jumbo v41, "apntype"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v41, "ikeerror"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v41, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/telephony/TelephonyManager;

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "PhoneGlobals extras apntype ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "ikeerror ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "ims"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_3d

    if-nez v11, :cond_3d

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "Provisioning Success"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "wifi_call_enable"

    const/16 v42, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string/jumbo v42, "wifi_calling_rogers_imsi"

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_3d
    const-string/jumbo v41, "ims"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    const/16 v41, 0x18

    move/from16 v0, v41

    if-ne v11, v0, :cond_1

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "Provisioning Failed. Will show Rogers URL"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "wifi_call_enable"

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v28, Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    const-class v42, Lcom/android/phone/WfcCallAlertPopupActivity;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v41, "android.intent.action.MAIN"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v41, 0x10000000

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v41, "provisioning_popup"

    const-string/jumbo v42, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3e
    const-string/jumbo v41, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_42

    const-string/jumbo v41, "telecom"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/telecom/TelecomManager;

    const-string/jumbo v41, "android.media.EXTRA_RINGER_MODE"

    const/16 v42, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    if-nez v34, :cond_3f

    invoke-virtual/range {v38 .. v38}, Landroid/telecom/TelecomManager;->silenceRinger()V

    :cond_3f
    const-string/jumbo v41, "automatic_answering_machine"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string/jumbo v42, "callsettings_answer_memo"

    const/16 v43, 0x2

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v6, v0, :cond_1

    if-eqz v34, :cond_40

    const/16 v41, 0x1

    move/from16 v0, v34

    move/from16 v1, v41

    if-ne v0, v1, :cond_41

    :cond_40
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemo(Z)V

    goto/16 :goto_0

    :cond_41
    const/16 v41, 0x2

    move/from16 v0, v34

    move/from16 v1, v41

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemo(Z)V

    goto/16 :goto_0

    :cond_42
    const-string/jumbo v41, "com.samsung.android.motion.PALM_DOWN"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_43

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "SEM_ACTION_PALM_DOWN"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x18

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_43
    const-string/jumbo v41, "com.android.phone.action.DISABLE_UCE_TOGGLE"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_44

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "ACTION_DISABLE_UCE_TOGGLE"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x5a

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    const-wide/16 v44, 0x7530

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_44
    const-string/jumbo v41, "com.samsung.settings.action.talkback_toggled"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_45

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "ACTION_TALKBACK"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0xf

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_45
    const-string/jumbo v41, "com.android.phone.action.DISABLE_VIDEOCALL_TOGGLE"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_47

    new-instance v29, Lcom/sec/ims/settings/RcsConfigurationReader;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    const-string/jumbo v41, "root/application/1/presence/source-throttlepublish"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getInt(Ljava/lang/String;)I

    move-result v12

    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v12, v0, :cond_46

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "ACTION_DISABLE_VIDEOCALL_TOGGLE : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x5b

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    mul-int/lit16 v0, v12, 0x3e8

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_46
    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "ACTION_DISABLE_VIDEOCALL_TOGGLE : 30000"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x5b

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    const-wide/16 v44, 0x7530

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-wide/from16 v2, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_47
    const-string/jumbo v41, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4b

    const-string/jumbo v41, "data_roaming_noti_tray"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_48

    const-string/jumbo v41, "national_roaming_mode_menu"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_49

    :cond_48
    :goto_c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/NotificationMgr;->isDataRoaming()Z

    move-result v41

    if-eqz v41, :cond_1

    const-string/jumbo v41, "persist.sys.dataprefer.simid"

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v41

    if-nez v41, :cond_1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v41

    if-nez v41, :cond_1

    const-string/jumbo v41, "feature_kor"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_4a

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "Don\'t show showDataDisconnectedRoaming() in SKT/KTT/LGT Operator"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_49
    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "Locale has changed : Data Roaming status is "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/NotificationMgr;->hideRoamingNotification()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v41, v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    goto :goto_c

    :cond_4a
    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "showDataDisconnectedRoaming() in other Operator"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto/16 :goto_0

    :cond_4b
    const-string/jumbo v41, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4c

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "EMERGENCY_STATE_CHANGED"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get1(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/EmergencyModeManager;

    move-result-object v41

    if-eqz v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->-get1(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/EmergencyModeManager;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyModeManager;->onChange(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4c
    const-string/jumbo v41, "action_wfc_switch_profile_broadcast"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4d

    const-string/jumbo v41, "oem_request"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v33

    new-instance v41, Ljava/lang/Thread;

    new-instance v42, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver$1;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver$1;-><init>(Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;[B)V

    invoke-direct/range {v41 .. v42}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_4d
    const-string/jumbo v41, "android.intent.action.ECMP_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4e

    const-string/jumbo v41, "REG_STATE"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "ACTION_IMS_ECMP_STATE_CHANGED - REG_STATE = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v41, 0x1

    move/from16 v0, v31

    move/from16 v1, v41

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v41

    if-eqz v41, :cond_1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/services/telephony/TelephonyConnectionService;->getEmergencyCallHelper()Lcom/android/services/telephony/EmergencyCallHelper;

    move-result-object v41

    if-eqz v41, :cond_1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/services/telephony/TelephonyConnectionService;->getEmergencyCallHelper()Lcom/android/services/telephony/EmergencyCallHelper;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/services/telephony/EmergencyCallHelper;->sendECMPStateChangedMessage()V

    goto/16 :goto_0

    :cond_4e
    const-string/jumbo v41, "android.net.conn.SwitchDataNetworkDuringVoiceCall"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_4f

    const-string/jumbo v41, "android.net.conn.SwitchDataNetworkDuringMMS"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_51

    :cond_4f
    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "onReceive : try to switch data when MMS/call in use"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "CG"

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_50

    const-string/jumbo v41, "GG"

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_50

    const-string/jumbo v41, "DCGGS"

    const-string/jumbo v42, ""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1

    const-string/jumbo v41, "GSM"

    const-string/jumbo v42, "gsm.sim.selectnetwork"

    const-string/jumbo v43, "CDMA"

    invoke-static/range {v42 .. v43}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1

    :cond_50
    const v41, 0x7f0d0a95

    const/16 v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_51
    const-string/jumbo v41, "com.samsung.intent.action.SIMHOTSWAP"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_53

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "onReceive : ACTION_HOT_SWAP_TYPE_SIM"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v41, "chn_cdma_network_on_all_rat"

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_52

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/phone/PhoneGlobals;->mHotSwapHappen:Z

    goto/16 :goto_0

    :cond_53
    const-string/jumbo v41, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_54

    const-string/jumbo v41, "PhoneApp"

    const-string/jumbo v42, "ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_54
    const-string/jumbo v41, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_56

    const-string/jumbo v41, "policyData"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "DATAUSAGE_REACH_TO_LIMIT : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string/jumbo v43, "dataUsageReachToLimit"

    if-eqz v13, :cond_55

    const/16 v41, 0x1

    :goto_d
    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_55
    const/16 v41, 0x0

    goto :goto_d

    :cond_56
    const-string/jumbo v41, "com.samsung.nsds.action.DEVICE_CONFIG_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1

    const-string/jumbo v41, "nsds_service_previous_status"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const-string/jumbo v41, "nsds_service_new_status"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    if-nez v26, :cond_1

    const/16 v41, 0x1

    move/from16 v0, v23

    move/from16 v1, v41

    if-ne v0, v1, :cond_1

    const-string/jumbo v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "DEVICE_CONFIG_CHANGED to "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string/jumbo v42, "voicecall_type"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
