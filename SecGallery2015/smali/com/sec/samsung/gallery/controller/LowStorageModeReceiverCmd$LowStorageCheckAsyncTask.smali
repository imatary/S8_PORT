.class Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;
.super Landroid/os/AsyncTask;
.source "LowStorageModeReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowStorageCheckAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;-><init>(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->access$100(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkLowStorageMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->access$100(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->access$100(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "is_low_storage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->access$100(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "UPDATE_MENU"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;->access$100(Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "is_low_storage"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/LowStorageModeReceiverCmd$LowStorageCheckAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
