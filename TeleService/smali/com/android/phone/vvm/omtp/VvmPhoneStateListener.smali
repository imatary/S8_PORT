.class public Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "VvmPhoneStateListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mPreviousState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    iget v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    if-eq v2, v4, :cond_0

    if-eqz v2, :cond_1

    iget v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    if-eqz v4, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    return-void

    :cond_1
    if-nez v2, :cond_4

    new-instance v3, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v4}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isVoicemailSourceConfigured(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v4}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isNotificationsChannelActive(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "VvmPhoneStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notifications channel is active for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v4, v5, v8, v8, v8}, Landroid/provider/VoicemailContract$Status;->setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->clearMwiIndicator(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->isVvmSourceRegistered(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "VvmPhoneStateListener"

    const-string/jumbo v5, "Signal returned: requesting resync for "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "VvmPhoneStateListener"

    const-string/jumbo v5, "Signal returned: requesting resync for "

    invoke-static {v4, v5}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "full_sync"

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v4, v5, v6, v9}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    iput v2, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPreviousState:I

    return-void

    :cond_3
    const-string/jumbo v4, "VvmPhoneStateListener"

    const-string/jumbo v5, "Signal returned: reattempting activation for "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "VvmPhoneStateListener"

    const-string/jumbo v5, "Signal returned: reattempting activation for "

    invoke-static {v4, v5}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->startActivation()V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "VvmPhoneStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notifications channel is inactive for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "full_sync"

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v5, v6, v7, v9}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->isVvmSourceRegistered(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v4, v5, v8, v9, v9}, Landroid/provider/VoicemailContract$Status;->setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V

    goto :goto_0
.end method
