.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$1;
.super Ljava/lang/Object;
.source "CollageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->loadImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$1;->val$data:Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$1;->val$data:Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->decodeImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    return-void
.end method
