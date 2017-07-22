.class Lcom/android/phone/InCallImsListener$1;
.super Ljava/lang/Object;
.source "InCallImsListener.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallImsListener;->registerCallStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallImsListener;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallImsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InCallImsListener$1;->this$0:Lcom/android/phone/InCallImsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v1, "[InCallImsListener]"

    const-string/jumbo v2, "onServiceConnected: Connected to Volte service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/ims/volte2/IVolteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/InCallImsListener;->-set0(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    :try_start_0
    invoke-static {}, Lcom/android/phone/InCallImsListener;->-get0()Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallImsListener$InCallImsEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/phone/InCallImsListener$InCallImsEventListener;-><init>(Lcom/android/phone/InCallImsListener$InCallImsEventListener;)V

    invoke-interface {v1, v2}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "[InCallImsListener]"

    const-string/jumbo v1, "onServiceDisconnected: Disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/InCallImsListener;->-set0(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    return-void
.end method
