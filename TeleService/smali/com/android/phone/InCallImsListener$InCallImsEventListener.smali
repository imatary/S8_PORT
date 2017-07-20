.class Lcom/android/phone/InCallImsListener$InCallImsEventListener;
.super Lcom/sec/ims/volte2/ImsCallEventListener;
.source "InCallImsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallImsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InCallImsEventListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/volte2/ImsCallEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/InCallImsListener$InCallImsEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InCallImsListener$InCallImsEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncomingCall(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v4, "[InCallImsListener]"

    const-string/jumbo v5, "onIncomingCall: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/android/phone/InCallImsListener;->-get0()Lcom/sec/ims/volte2/IVolteService;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/ims/volte2/IVolteService;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v4, "[InCallImsListener]"

    const-string/jumbo v5, "InCallImsEventListener callsession is NULL."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getIncomingInviteRawSip()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[InCallImsListener]"

    const-string/jumbo v5, "InCallImsEventListener for Caller Name ID."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "[InCallImsListener]"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/phone/InCallImsListener;->-wrap0(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "[InCallImsListener]"

    const-string/jumbo v5, "Unsupported Encoding."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
