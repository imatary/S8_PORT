.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;
.super Ljava/lang/Thread;
.source "CollageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->getFinalBitmap()Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mSaveAfterShuffle:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1102(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
