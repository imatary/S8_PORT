.class public Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;
.super Landroid/app/IntentService;
.source "OmtpVvmSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->download(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->upload(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->setRetryAlarm(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "OmtpVvmSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private buildMap(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Voicemail;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Voicemail;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Voicemail;

    sget-object v3, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildMap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", message.getId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telecom/Voicemail;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v1}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static cancelAllRetries(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    const-string/jumbo v0, "full_sync"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->cancelRetriesForIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static cancelRetriesForIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, v4, p1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v2, "full_sync"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "download_only"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string/jumbo v2, "upload_only"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private download(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->fetchAllVoicemails()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v7}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getAllVoicemails()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v7, 0x0

    return v7

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->buildMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    sget-object v7, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "download localVoicemails.size() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Voicemail;

    sget-object v7, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "download : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", localVoicemail : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v1}, Landroid/telecom/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Voicemail;

    sget-object v7, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "download : remoteVoicemail : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v4, :cond_3

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v7, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->deleteFromDatabase(Landroid/telecom/Voicemail;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "download : remoteVoicemail READ : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/telecom/Voicemail;->isRead()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v4}, Landroid/telecom/Voicemail;->isRead()Z

    move-result v7

    invoke-virtual {v1}, Landroid/telecom/Voicemail;->isRead()Z

    move-result v8

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v7, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->markReadInDatabase(Landroid/telecom/Voicemail;)V

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Voicemail;

    invoke-static {p0, v4}, Landroid/provider/VoicemailContract$Voicemails;->insert(Landroid/content/Context;Landroid/telecom/Voicemail;)Landroid/net/Uri;

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    sget-object v7, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mStoredVvm:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    iget-object v7, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v7}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getAllVoicemails()Ljava/util/List;

    move-result-object v7

    sput-object v7, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->mStoredVvm:Ljava/util/List;

    return v10
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getSyncIntent(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)Landroid/content/Intent;
    .locals 6

    if-eqz p3, :cond_0

    if-eqz p2, :cond_2

    invoke-static {p0, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string/jumbo v5, "phone_account"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    invoke-static {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->cancelRetriesForIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getOmtpVvmSources()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    invoke-static {p0, v1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0
.end method

.method private releaseNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private requestNetwork(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->getNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    const v2, 0xea60

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    return-void
.end method

.method private setRetryAlarm(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "phone_account"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0, v6, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)J

    move-result-wide v2

    sget-object v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Retrying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Retrying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "alarm"

    invoke-virtual {p0, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-wide/16 v6, 0x2

    mul-long/2addr v6, v2

    invoke-static {p0, p1, v6, v7}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;J)V

    return-void
.end method

.method private setupAndSendNetworkRequest(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 10

    invoke-static {p0, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Sync requested for disabled account"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v5, "full_sync"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailLastFullSyncTime(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v2

    const-wide/32 v8, 0xea60

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    sget-object v5, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Avoiding duplicate full sync: synced recently for "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0, p1, v0, v1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailLastFullSyncTime(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;J)V

    :cond_2
    new-instance v4, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;

    invoke-direct {v4, p0, p0, p1, p2}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;-><init>(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->requestNetwork(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;)V

    return-void
.end method

.method private upload(Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getReadVoicemails()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v3}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->getDeletedVoicemails()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    sget-object v3, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upload : readVoicemails : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v3, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upload : deletedVoicemails : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->markMessagesAsDeleted(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v3, v0}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->deleteFromDatabase(Ljava/util/List;)I

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->markMessagesAsRead(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-virtual {v3, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;->markReadInDatabase(Ljava/util/List;)I

    :cond_1
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    invoke-direct {v0, p0}, Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->mQueryHelper:Lcom/android/phone/vvm/omtp/sync/VoicemailsQueryHelper;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    if-nez p1, :cond_0

    sget-object v6, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onHandleIntent: could not handle null intent"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "phone_account"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    sget-object v7, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Sync requested: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " for all accounts: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    sget-object v6, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Sync requested: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - for account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->setupAndSendNetworkRequest(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Sync requested: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - for all accounts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->getOmtpVvmSources()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v2, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->setupAndSendNetworkRequest(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    goto :goto_1
.end method
