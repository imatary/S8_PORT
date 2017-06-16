.class Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;
.super Ljava/lang/Thread;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->onManualAddSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInitialized:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;

    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_INTELLIGENT_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->prepareSegmentation(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;Lcom/sec/android/secvision/segmentation/SegmentationMode;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
