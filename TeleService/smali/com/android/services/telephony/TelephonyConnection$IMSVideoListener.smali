.class public Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;
.super Lcom/sec/ims/volte2/IImsVideoListener$Stub;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IMSVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;-><init>()V

    return-void
.end method

.method private notifyEvent(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnection;->-get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnection;->-get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCallDownGraded(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "onCallDownGraded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x12c

    invoke-direct {p0, p1, v0}, Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;->notifyEvent(II)V

    return-void
.end method

.method public onCameraEvent(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCameraFirstFrameReady(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCameraStopEvent(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCameraSwitchFailure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCameraSwitchSuccess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCaptureFailure(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCaptureSuccess(IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNoFarFrame(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVideoAttemped(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "onVideoAttemped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoAvailable(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVideoHeld(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVideoResumed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
