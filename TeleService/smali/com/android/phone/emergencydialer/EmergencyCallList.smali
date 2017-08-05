.class public Lcom/android/phone/emergencydialer/EmergencyCallList;
.super Landroid/app/ListActivity;
.source "EmergencyCallList.java"


# instance fields
.field private final RTS_TOKEN:Ljava/lang/String;

.field private final RTS_TOKEN_CS:Ljava/lang/String;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mEmergencyCallsDialog:Landroid/app/AlertDialog;

.field private mLocked:Z

.field private mNameList:[Ljava/lang/String;

.field private mNumberList:[Ljava/lang/String;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mToast:Landroid/widget/Toast;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/emergencydialer/EmergencyCallList;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->createCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const-string/jumbo v0, "CS"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->RTS_TOKEN_CS:Ljava/lang/String;

    const-string/jumbo v0, ";"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->RTS_TOKEN:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private createCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "createCallIntent()..."

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;Z)V

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "- Intent.ACTION_CALL_EMERGENCY"

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "SKTRADDialOption"

    const-string/jumbo v2, "abroad"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    const-string/jumbo v1, "- Intent.ACTION_CALL_PRIVILEGED"

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isInRoamingServiceState()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    const-string/jumbo v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "ril.skt.network_regist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, ";"

    const/4 v8, 0x4

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v10

    const-string/jumbo v8, "Status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v5, v7

    const-string/jumbo v8, "CS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v7, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x5

    if-ne v4, v7, :cond_1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rtsCsValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / rtsStatusValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;Z)V

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isInRoamingServiceState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;Z)V

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 5

    const-string/jumbo v3, "ril.currentplmn"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "450"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRoaming : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;Z)V

    return v1

    :cond_1
    const-string/jumbo v3, "domestic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemKeyEventRequested - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "EmergencyCallList"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "EmergencyCallList"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSystemKeyEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private requestSystemKeyEventForKTT(Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, p1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private requestSystemKeyEvents(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x1a

    invoke-direct {p0, v0, p1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private setCategoryOf119(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    aget-object v1, v2, p1

    const/4 v0, -0x1

    const-string/jumbo v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x4

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", categoryOf119 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/emergencydialer/EmergencyCallList;->log(Ljava/lang/String;Z)V

    const-string/jumbo v2, "ril.skt119Cat"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->isInRoamingServiceState()Z

    move-result v2

    if-nez v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x10

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setEmergencyList()V
    .locals 8

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->isRoaming()Z

    move-result v3

    const-string/jumbo v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v3, :cond_2

    const-string/jumbo v6, "ril.simtype"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const-string/jumbo v6, "3"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "18"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const v6, 0x7f0900ac

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900ad

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const v6, 0x7f0900ae

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900af

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->isInRoamingServiceState()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0900b0

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900b1

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v6, 0x7f0900b2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900b3

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v3, :cond_5

    const v6, 0x7f0900b4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900b5

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    const v6, 0x7f0900b6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900b7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardReady()Z

    move-result v1

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v6

    if-nez v6, :cond_7

    const/4 v0, 0x1

    :goto_1
    if-nez v3, :cond_9

    const-string/jumbo v6, "feature_kor_open"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f0900ba

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900bb

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    const v6, 0x7f0900b8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900b9

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "feature_kor_open"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    const v6, 0x7f0900be

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900bf

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const v6, 0x7f0900bc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v6, 0x7f0900bd

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private showEmergencyCallsDialog(I)V
    .locals 8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    aget-object v1, v6, p1

    const-string/jumbo v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0d07a5

    invoke-virtual {p0, v6}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0d07a4

    invoke-virtual {p0, v6}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    aget-object v2, v6, p1

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "119"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "gsm.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "450"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->isRoaming()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v4, :cond_6

    const v6, 0x7f0d0795

    invoke-virtual {p0, v6}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%s"

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-eqz v4, :cond_3

    new-instance v6, Lcom/android/phone/emergencydialer/EmergencyCallList$2;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList$2;-><init>(Lcom/android/phone/emergencydialer/EmergencyCallList;Ljava/lang/String;)V

    const v7, 0x7f0d0559

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    if-eqz v4, :cond_7

    const v3, 0x7f0d0558

    :goto_2
    new-instance v6, Lcom/android/phone/emergencydialer/EmergencyCallList$3;

    invoke-direct {v6, p0, v4, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList$3;-><init>(Lcom/android/phone/emergencydialer/EmergencyCallList;ZLjava/lang/String;)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/emergencydialer/EmergencyCallList$4;

    invoke-direct {v6, p0}, Lcom/android/phone/emergencydialer/EmergencyCallList$4;-><init>(Lcom/android/phone/emergencydialer/EmergencyCallList;)V

    const v7, 0x7f0d0327

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/emergencydialer/EmergencyCallList$5;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/emergencydialer/EmergencyCallList$5;-><init>(Lcom/android/phone/emergencydialer/EmergencyCallList;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mEmergencyCallsDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mEmergencyCallsDialog:Landroid/app/AlertDialog;

    const v7, 0x7f0d0793

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mEmergencyCallsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    iget-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mEmergencyCallsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    const v6, 0x7f0d0794

    invoke-virtual {p0, v6}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%s"

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    const v3, 0x7f0d032a

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "intent.stop.app-in-app"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyCallList;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-boolean v5, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mLocked:Z

    const-string/jumbo v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "20"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "18"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvents(Z)V

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyCallList;->isSystemKeyEventRequested(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mLocked:Z

    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mLocked:Z

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    sparse-switch p1, :sswitch_data_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_0
    return v2

    :sswitch_1
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xbb -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1b -> :sswitch_1
        0x50 -> :sswitch_1
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_1
        0x40a -> :sswitch_1
        0x40e -> :sswitch_1
        0x40f -> :sswitch_1
        0x410 -> :sswitch_1
        0x411 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string/jumbo v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xbb -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-direct {p0, p3}, Lcom/android/phone/emergencydialer/EmergencyCallList;->setCategoryOf119(I)V

    if-nez p3, :cond_0

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startEmergencyDialerActivity(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/phone/emergencydialer/EmergencyCallList;->showEmergencyCallsDialog(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEventForKTT(Z)V

    :cond_0
    const-string/jumbo v1, "ota_mode_disable_expand"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvents(Z)V

    :cond_1
    const-string/jumbo v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "EmergencyCallList"

    const-string/jumbo v2, "StatusBarManager.DISABLE_NONE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mEmergencyCallsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mEmergencyCallsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    const-string/jumbo v1, "support_bixby"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v2, "EmergencyList"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v1}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    iput-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 15

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    const-string/jumbo v11, "feature_ktt"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEventForKTT(Z)V

    :cond_0
    const-string/jumbo v11, "ota_mode_disable_expand"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "statusbar"

    invoke-virtual {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    const-string/jumbo v11, "true"

    const-string/jumbo v12, "ril.domesticOtaStart"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvents(Z)V

    const/high16 v11, 0x70000

    invoke-virtual {v6, v11}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    const/4 v11, 0x6

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    const/16 v11, 0xbb

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/phone/emergencydialer/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    const-string/jumbo v11, "statusbar"

    invoke-virtual {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    invoke-static {v6}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->disableStatusBarLostPhone(Landroid/app/StatusBarManager;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->setEmergencyList()V

    new-instance v11, Landroid/widget/ArrayAdapter;

    iget-object v12, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mNameList:[Ljava/lang/String;

    const v13, 0x7f040053

    invoke-direct {v11, p0, v13, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->setListAdapter(Landroid/widget/ListAdapter;)V

    const v11, 0x7f0d0793

    invoke-virtual {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "current_sec_active_themepackage"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v11, 0x1

    new-array v0, v11, [I

    const v11, 0x1010098

    const/4 v12, 0x0

    aput v11, v0, v12

    const/4 v7, 0x0

    const v11, 0x103003e

    :try_start_0
    invoke-virtual {p0, v11, v0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    const-string/jumbo v11, "EmergencyCallList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onResume: Theme Color change to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v9}, Landroid/text/Spannable;->length()I

    move-result v12

    const/4 v13, 0x0

    const/16 v14, 0x12

    invoke-interface {v9, v11, v13, v12, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v9}, Lcom/android/phone/emergencydialer/EmergencyCallList;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const-string/jumbo v11, "phone"

    invoke-virtual {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "ril.simtype"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "gsm.sim.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Lcom/android/phone/emergencydialer/EmergencyCallList$1;

    invoke-direct {v11, p0}, Lcom/android/phone/emergencydialer/EmergencyCallList$1;-><init>(Lcom/android/phone/emergencydialer/EmergencyCallList;)V

    invoke-virtual {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->semConvertToTranslucent(Landroid/app/Activity$SemTranslucentConversionListener;)Z

    const-string/jumbo v11, "000000000000000"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "12"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v11, "45001"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const v11, 0x7f0d04ca

    invoke-virtual {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/emergencydialer/EmergencyCallList;->displayToast(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v11, "support_bixby"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Lcom/android/phone/ia/EmergencyCallListStateListener;

    invoke-direct {v11, p0}, Lcom/android/phone/ia/EmergencyCallListStateListener;-><init>(Lcom/android/phone/emergencydialer/EmergencyCallList;)V

    iput-object v11, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v11, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v12, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v11, v12}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string/jumbo v11, "EmergencyList"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string/jumbo v11, "EmergencyList"

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_6
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_7
    iget-object v11, p0, Lcom/android/phone/emergencydialer/EmergencyCallList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v12, "EmergencyList"

    invoke-virtual {v11, v12}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    const/high16 v11, 0x10000

    invoke-virtual {v6, v11}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v11, "EmergencyCallList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onResume: Fail to apply theme title color - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v7, 0x0

    goto/16 :goto_1
.end method
