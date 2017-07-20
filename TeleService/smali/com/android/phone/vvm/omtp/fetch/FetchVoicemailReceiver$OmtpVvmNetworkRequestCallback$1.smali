.class Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;
.super Ljava/lang/Object;
.source "FetchVoicemailReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

.field final synthetic val$network:Landroid/net/Network;


# direct methods
.method constructor <init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iput-object p2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->val$network:Landroid/net/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v2, v2, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get2(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v2

    if-lez v2, :cond_2

    new-instance v0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v2, v2, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v3, v3, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get1(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->val$network:Landroid/net/Network;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;)V

    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->isSuccessfullyInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "FetchVoicemailReceiver"

    const-string/jumbo v3, "Can\'t retrieve Imap credentials."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v2, v2, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-wrap0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    return-void

    :cond_0
    new-instance v2, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v3, v3, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v4, v4, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v4}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get4(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v3, v3, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get3(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->fetchVoicemailPayload(Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v2, v2, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get2(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v2, v2, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get2(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-set0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;I)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;->this$1:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;

    iget-object v2, v2, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-wrap0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    return-void

    :cond_2
    return-void
.end method
