.class Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;
.super Ljava/lang/Object;
.source "SmsSendService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "SmsSendService"

    const-string/jumbo v3, "Background sender connected"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/mms/transaction/IMessageBackgroundSender$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v4, v1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;->access$402(Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;Lcom/android/mms/transaction/IMessageBackgroundSender;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    return-void
.end method
