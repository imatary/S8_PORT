.class Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;
.super Ljava/lang/Object;
.source "VisionCloudUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v1, "VisionCloudUtils"

    const-string/jumbo v2, "onServiceConnected start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-static {p2}, Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;

    move-result-object v2

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mIcs:Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$002(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;)Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mIcs:Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "VisionCloudUtils"

    const-string/jumbo v2, "onServiceConnected: mIcs is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mSettingListener:Lcom/samsung/android/visioncloudagent/aidl/IListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/samsung/android/visioncloudagent/aidl/IListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mIcs:Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mSettingListener:Lcom/samsung/android/visioncloudagent/aidl/IListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/samsung/android/visioncloudagent/aidl/IListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;->register(Lcom/samsung/android/visioncloudagent/aidl/IListener;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    const/4 v2, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mServiceConnected:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$302(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mVCListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mVCListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;->onServiceConnected()V

    :cond_2
    const-string/jumbo v1, "VisionCloudUtils"

    const-string/jumbo v2, "onServiceConnected end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VisionCloudUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service connection failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string/jumbo v1, "VisionCloudUtils"

    const-string/jumbo v2, "onServiceDisconnected start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mIcs:Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mSettingListener:Lcom/samsung/android/visioncloudagent/aidl/IListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/samsung/android/visioncloudagent/aidl/IListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mIcs:Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mSettingListener:Lcom/samsung/android/visioncloudagent/aidl/IListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/samsung/android/visioncloudagent/aidl/IListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;->unregister(Lcom/samsung/android/visioncloudagent/aidl/IListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    const/4 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mServiceConnected:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$302(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mVCListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mVCListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;->onServiceDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    const/4 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->mIcs:Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->access$002(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;)Lcom/samsung/android/visioncloudagent/aidl/IImageClassificationService;

    const-string/jumbo v1, "VisionCloudUtils"

    const-string/jumbo v2, "onServiceDisconnected end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VisionCloudUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "service disconnection failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
