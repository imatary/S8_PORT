.class Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "OmtpVvmSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmtpVvmNetworkRequestCallback"
.end annotation


# instance fields
.field mAction:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mNetworkRequest:Landroid/net/NetworkRequest;

.field mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field mRetryCount:I

.field final synthetic this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;


# direct methods
.method public constructor <init>(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p2, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput-object p4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-static {p3}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mNetworkRequest:Landroid/net/NetworkRequest;

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public getNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 6

    :goto_0
    iget v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mRetryCount:I

    if-lez v3, :cond_9

    const/4 v2, 0x1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v1, v3, v4, p1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;)V

    invoke-virtual {v1}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->isSuccessfullyInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Can\'t retrieve Imap credentials."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-static {v3, p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-wrap2(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3, v4}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void

    :cond_0
    const-string/jumbo v3, "full_sync"

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "upload_only"

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-static {v3, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-wrap1(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z

    move-result v2

    :cond_2
    const-string/jumbo v3, "full_sync"

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "download_only"

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-static {v3, v1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-wrap0(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Lcom/android/phone/vvm/omtp/imap/ImapHelper;)Z

    move-result v0

    :cond_4
    invoke-static {}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upload succeeded: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] download succeeded: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3, v4}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-static {v3, p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-wrap2(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3, v4}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void

    :cond_6
    iget v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mRetryCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mRetryCount:I

    if-eqz v2, :cond_8

    const-string/jumbo v3, "download_only"

    iput-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Retrying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Immediately retrying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/vvm/omtp/LocalLogHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_7

    const-string/jumbo v3, "upload_only"

    iput-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-static {v3, p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-wrap2(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->mAction:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-wrap3(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-static {v0, p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-wrap2(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;

    invoke-static {v0, p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->-wrap2(Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
