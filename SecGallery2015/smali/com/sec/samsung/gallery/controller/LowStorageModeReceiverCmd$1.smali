.class Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$1;
.super Landroid/content/BroadcastReceiver;
.source "LowStorageModeReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "is_low_storage"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "LowStorageCmd"

    const-string/jumbo v1, "ACTION_DEVICE_STORAGE_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "UPDATE_MENU"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "is_low_storage"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "LowStorageCmd"

    const-string/jumbo v1, "ACTION_DEVICE_STORAGE_LOW"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
