.class public Lcom/android/phone/vvm/omtp/VvmPackageInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VvmPackageInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-string/jumbo v9, "VvmPackageInstallReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive intent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string/jumbo v9, "VvmPackageInstallReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "intent getAction : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v9

    new-array v6, v9, [Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x0

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v9

    if-ge v7, v9, :cond_7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    aput-object v9, v6, v7

    aget-object v9, v6, v7

    if-nez v9, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    aget-object v9, v6, v7

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v9

    invoke-direct {v0, p1, v9}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {p1, v3, v9, v10}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startActivation()V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getOmtpVvmSources()Ljava/util/Set;

    move-result-object v5

    const-string/jumbo v9, "VvmPackageInstallReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneAccounts : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v9

    invoke-direct {v0, p1, v9}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getCarrierVvmPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v3, v9, v10}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-static {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removeSource(Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startDeactivation()V

    goto :goto_2

    :cond_7
    return-void
.end method
