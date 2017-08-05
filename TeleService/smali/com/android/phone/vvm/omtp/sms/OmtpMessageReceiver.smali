.class public Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmtpMessageReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private processSync(Lcom/android/phone/vvm/omtp/sms/SyncMessage;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSender()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/telecom/Voicemail;->createForInsertion(JLjava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v4}, Landroid/telecom/Voicemail$Builder;->setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getLength()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/telecom/Voicemail$Builder;->setDuration(J)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/Voicemail$Builder;->setSourcePackage(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Voicemail$Builder;->build()Landroid/telecom/Voicemail;

    move-result-object v2

    new-instance v0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->insertIfUnique(Landroid/telecom/Voicemail;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "MBU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "download_only"

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "GU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "OmtpMessageReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrecognized sync trigger event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSource(Lcom/android/phone/vvm/omtp/sms/StatusMessage;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->getReturnCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3, v4, v4, v4}, Landroid/provider/VoicemailContract$Status;->setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailCredentialsFromStatusMessage(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/phone/vvm/omtp/sms/StatusMessage;)V

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, v2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->addSource(Landroid/telecom/PhoneAccountHandle;)V

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "full_sync"

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->clearMwiIndicator(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "OmtpMessageReceiver"

    const-string/jumbo v3, "Visual voicemail not available for subscriber."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    if-nez v6, :cond_0

    const-string/jumbo v6, "OmtpMessageReceiver"

    const-string/jumbo v7, "Received message for null phone account"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v6, v7}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "OmtpMessageReceiver"

    const-string/jumbo v7, "Received vvm message for disabled vvm source."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_3

    aget-object v6, v5, v0

    iget-object v6, v6, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v6, :cond_2

    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "OmtpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received vvm message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "//VVM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->parse(Ljava/lang/String;)Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "//VVM:SYNC:"

    if-ne v6, v7, :cond_6

    new-instance v2, Lcom/android/phone/vvm/omtp/sms/SyncMessage;

    invoke-direct {v2, v4}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;-><init>(Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;)V

    const-string/jumbo v6, "OmtpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received SYNC sms with event"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "OmtpMessageReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received SYNC sms with event"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->getSyncTriggerEvent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->processSync(Lcom/android/phone/vvm/omtp/sms/SyncMessage;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {v4}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "//VVM:STATUS:"

    if-ne v6, v7, :cond_7

    const-string/jumbo v6, "OmtpMessageReceiver"

    const-string/jumbo v7, "Received STATUS sms for "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "OmtpMessageReceiver"

    const-string/jumbo v7, "Received Status sms for "

    invoke-static {v6, v7}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/phone/vvm/omtp/sms/StatusMessage;

    invoke-direct {v1, v4}, Lcom/android/phone/vvm/omtp/sms/StatusMessage;-><init>(Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;)V

    invoke-direct {p0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageReceiver;->updateSource(Lcom/android/phone/vvm/omtp/sms/StatusMessage;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "OmtpMessageReceiver"

    const-string/jumbo v7, "This should never have happened"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
