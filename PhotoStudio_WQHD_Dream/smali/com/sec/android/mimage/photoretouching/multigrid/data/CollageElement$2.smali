.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;
.super Ljava/lang/Object;
.source "CollageElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateBGColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    const/16 v2, 0xa

    const/16 v3, 0xa

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$202(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$200(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->val$color:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGTiles:[I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGTiles:[I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)[I

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

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
