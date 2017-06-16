.class Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;
.super Landroid/os/AsyncTask;
.source "EffectManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshtaskForLanguageChange"
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
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    return-void
.end method

.method private isProgressDialogDissmissable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->gpuloader:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->loadExternalFilters()I

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->isProgressDialogDissmissable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->onLanguageChanged()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->isProgressDialogDissmissable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$RefreshtaskForLanguageChange;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
