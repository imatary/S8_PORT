.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;
.super Landroid/os/AsyncTask;
.source "Adjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeInitSmartTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "PEDIT_Adjustment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeInitSmartTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->segEng:Lcom/samsung/android/media/vision/SemSegmentation;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/samsung/android/media/vision/SemSegmentation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->segEng:Lcom/samsung/android/media/vision/SemSegmentation;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/samsung/android/media/vision/SemSegmentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/vision/SemSegmentation;->release()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->segEng:Lcom/samsung/android/media/vision/SemSegmentation;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5602(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Lcom/samsung/android/media/vision/SemSegmentation;)Lcom/samsung/android/media/vision/SemSegmentation;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5702(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartMaskBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartMaskBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5802(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$DeInitSmartTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
