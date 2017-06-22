.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhotoRetouching.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitAsyncTask"
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
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$800(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$700(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->initBG()V

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

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

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
