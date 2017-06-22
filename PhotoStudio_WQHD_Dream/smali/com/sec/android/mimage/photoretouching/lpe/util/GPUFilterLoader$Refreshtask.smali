.class Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
.super Landroid/os/AsyncTask;
.source "GPUFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Refreshtask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private isCanceled:Z

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->isCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->loadExternalFilters()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->isCanceled:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->isProgressDialogDissmissable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->isCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->reloadGPUEffectThumbs(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->currentFilterCount:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$602(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;I)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
