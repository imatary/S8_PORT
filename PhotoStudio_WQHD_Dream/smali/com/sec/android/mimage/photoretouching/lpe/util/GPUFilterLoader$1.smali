.class Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;
.super Ljava/lang/Object;
.source "GPUFilterLoader.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->registerGPUFilterChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

.field final synthetic val$threadPoolExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->val$threadPoolExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageChange()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->val$threadPoolExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onPackageChange()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->isProgressDialogDissmissable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->dissmissProgressDialog()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->val$threadPoolExecutor:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
