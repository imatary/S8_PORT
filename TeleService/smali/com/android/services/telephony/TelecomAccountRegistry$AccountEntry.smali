.class final Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;
.super Ljava/lang/Object;
.source "TelecomAccountRegistry.java"

# interfaces
.implements Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccountEntry"
.end annotation


# instance fields
.field private mAccount:Landroid/telecom/PhoneAccount;

.field private final mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

.field private mIsDummy:Z

.field private mIsEmergency:Z

.field private mIsMergeCallSupported:Z

.field private mIsMergeOfWifiCallsAllowedWhenVoWifiOff:Z

.field private mIsVideoCapable:Z

.field private mIsVideoConferencingSupported:Z

.field private mIsVideoPauseSupported:Z

.field private mIsVideoPresenceSupported:Z

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneCapabilitiesNotifier:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

.field private final mPstnCallNotifier:Lcom/android/services/telephony/cdma/PstnCallNotifier;

.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;Landroid/content/Context;Lcom/android/internal/telephony/Phone;ZZ)V
    .locals 4

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-boolean p4, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsEmergency:Z

    iput-boolean p5, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsDummy:Z

    invoke-direct {p0, p4, p5}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->registerPstnPhoneAccount(ZZ)Landroid/telecom/PhoneAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    const-string/jumbo v0, "Registered phoneAccount: %s with handle: %s , isEmergency: %s, isDummy: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/services/telephony/PstnIncomingCallNotifier;

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    new-instance v0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhoneCapabilitiesNotifier:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    new-instance v0, Lcom/android/services/telephony/cdma/PstnCallNotifier;

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p2, v1}, Lcom/android/services/telephony/cdma/PstnCallNotifier;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPstnCallNotifier:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    return-void
.end method

.method private getPhoneAccountExtras()Landroid/os/Bundle;
    .locals 6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v4, "carrier_instant_lettering_length_limit_int"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "carrier_instant_lettering_encoding_string"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private isCarrierEmergencyVideoCallsAllowed()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCarrierInstantLetteringSupported()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "carrier_instant_lettering_available_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCarrierMergeCallSupported()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "support_conference_call_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCarrierMergeOfWifiCallsAllowedWhenVoWifiOff()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCarrierVideoConferencingSupported()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCarrierVideoPauseSupported()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "support_pause_ims_video_calls_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCarrierVideoPresenceSupported()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "use_rcs_presence_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerPstnPhoneAccount(ZZ)Landroid/telecom/PhoneAccount;
    .locals 35

    if-eqz p2, :cond_d

    const-string/jumbo v11, "Dummy "

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-static {v0, v11, v1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v29

    const/4 v8, 0x0

    const/16 v24, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get7(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_0

    const-string/jumbo v19, ""

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_1

    const-string/jumbo v28, ""

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get5(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/SubscriptionManager;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v22

    if-eqz p1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0d0878

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "label when number is emergency: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0d0879

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const/16 v7, 0x26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0b0016

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v7, 0x36

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get3(Lcom/android/services/telephony/TelecomAccountRegistry;)Z

    move-result v31

    if-nez v31, :cond_3

    const-string/jumbo v31, "Disabling video calling for secondary user."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    or-int/lit8 v7, v7, 0x8

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isCarrierVideoPresenceSupported()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoPresenceSupported:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoPresenceSupported:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    or-int/lit16 v7, v7, 0x100

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isCarrierEmergencyVideoCallsAllowed()Z

    move-result v31

    if-eqz v31, :cond_6

    or-int/lit16 v7, v7, 0x200

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isCarrierVideoPauseSupported()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoPauseSupported:Z

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isCarrierInstantLetteringSupported()Z

    move-result v31

    if-eqz v31, :cond_7

    or-int/lit8 v7, v7, 0x40

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->getPhoneAccountExtras()Landroid/os/Bundle;

    move-result-object v16

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isCarrierMergeCallSupported()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsMergeCallSupported:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isCarrierVideoConferencingSupported()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoConferencingSupported:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->isCarrierMergeOfWifiCallsAllowedWhenVoWifiOff()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsMergeOfWifiCallsAllowedWhenVoWifiOff:Z

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->updateVideoPauseSupport(Landroid/telephony/SubscriptionInfo;)V

    :cond_8
    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0b0015

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v31

    if-eqz v31, :cond_9

    or-int/lit16 v7, v7, 0x80

    :cond_9
    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v31, 0x7f0200be

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_14

    const v31, 0x7f0a00b0

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-object v31, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v10, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v14

    :cond_a
    :goto_2
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get7(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v20

    const/16 v17, 0x0

    if-eqz v20, :cond_b

    if-eqz v29, :cond_b

    if-eqz p1, :cond_15

    :cond_b
    :goto_3
    if-eqz v17, :cond_c

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "group_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Adding Merged Account with group: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {v12}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    const-string/jumbo v32, "tel"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    const-string/jumbo v32, "tel"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/telecom/PhoneAccount$Builder;->setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/telecom/PhoneAccount$Builder;->setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v33, "tel"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const-string/jumbo v33, "voicemail"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get6(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telecom/TelecomManager;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    return-object v4

    :cond_d
    const-string/jumbo v11, ""

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get7(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get7(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v9, v18

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "label when PhoneAccount is single: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    const/16 v26, 0x0

    if-eqz v22, :cond_10

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v24

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v14

    :cond_10
    invoke-static/range {v24 .. v24}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v31

    if-eqz v31, :cond_13

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    :goto_4
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_11

    const-string/jumbo v31, "Could not get a display name for subid: %d"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    aput-object v33, v32, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v25, v32, v33

    const v33, 0x7f0d087a

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    :cond_11
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v31, "feature_multisim"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get7(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v18

    :cond_12
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "label: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v25, v33, v34

    const v34, 0x7f0d087a

    move-object/from16 v0, v32

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v33

    const-string/jumbo v34, "unknown"

    invoke-virtual/range {v32 .. v34}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    :cond_14
    const-string/jumbo v31, "icon drawable is null"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_15
    const/16 v31, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    aget-object v15, v20, v31

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v17, 0x1

    goto/16 :goto_3

    :cond_16
    add-int/lit8 v31, v31, 0x1

    goto :goto_5
.end method

.method private updateVideoPauseSupport(Landroid/telephony/SubscriptionInfo;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-static {v3}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    iget v3, v1, Landroid/content/res/Configuration;->mnc:I

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVideoPauseSupport -- no mcc/mnc for sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " using mcc/mnc from main context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v3, "support_pause_ims_video_calls_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoPauseSupported:Z

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVideoPauseSupport -- mcc/mnc for sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    goto :goto_0
.end method


# virtual methods
.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isVideoPauseSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoPauseSupported:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVideoCapabilitiesChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIsVideoCapable:Z

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-static {v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get1(Lcom/android/services/telephony/TelecomAccountRegistry;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-static {v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get0(Lcom/android/services/telephony/TelecomAccountRegistry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method teardown()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mIncomingCallNotifier:Lcom/android/services/telephony/PstnIncomingCallNotifier;

    invoke-virtual {v0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->teardown()V

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPhoneCapabilitiesNotifier:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;

    invoke-virtual {v0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->teardown()V

    iget-object v0, p0, Lcom/android/services/telephony/TelecomAccountRegistry$AccountEntry;->mPstnCallNotifier:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    invoke-virtual {v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->teardown()V

    return-void
.end method
