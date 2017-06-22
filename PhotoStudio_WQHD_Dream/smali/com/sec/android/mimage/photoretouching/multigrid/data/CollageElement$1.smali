.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;
.super Ljava/lang/Object;
.source "CollageElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateBG(IILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

.field final synthetic val$aspectId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;IILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->val$id:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->val$aspectId:I

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->val$id:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->val$aspectId:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateBGBitmap(IILandroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onBackgroundUpdated()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
