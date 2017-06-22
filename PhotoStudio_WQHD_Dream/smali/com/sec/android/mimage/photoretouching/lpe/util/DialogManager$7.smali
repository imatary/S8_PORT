.class Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->makeProgressDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->val$mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->val$filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->val$mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->val$mContext:Landroid/content/Context;

    const v3, 0x7f0a000a

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0300a1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method
