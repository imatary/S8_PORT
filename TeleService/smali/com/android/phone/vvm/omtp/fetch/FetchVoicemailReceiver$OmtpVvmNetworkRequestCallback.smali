.class Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "FetchVoicemailReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmtpVvmNetworkRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;


# direct methods
.method private constructor <init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;-><init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback$1;-><init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;Landroid/net/Network;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-wrap0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get2(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get2(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-set0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;I)I

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-wrap1(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-wrap0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get2(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-get2(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-set0(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;I)I

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$OmtpVvmNetworkRequestCallback;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    invoke-static {v0}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->-wrap1(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    :cond_0
    return-void
.end method
