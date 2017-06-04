.class Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;
.super Ljava/lang/Object;
.source "SamsungAccountBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v0, "SamsungAccountBinder"

    const-string/jumbo v1, "Samsung Account Service Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v1

    # setter for: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mISAService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$002(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;-><init>(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V

    # setter for: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mSACallback:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$102(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;)Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->registerCallback()Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$200(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungAccountBinder"

    const-string/jumbo v1, "Request access token"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestAccessToken()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$300(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "SamsungAccountBinder"

    const-string/jumbo v1, "Samsung Account Service DisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mISAService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$002(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    return-void
.end method
