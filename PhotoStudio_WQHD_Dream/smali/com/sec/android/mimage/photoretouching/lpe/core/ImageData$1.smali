.class Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;
.super Ljava/lang/Object;
.source "ImageData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->onOriginalDecode([III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$data:[I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$data:[I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$width:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$data:[I

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->write([I)I

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;I)I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$data:[I

    array-length v1, v1

    new-array v0, v1, [B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->updateMaskBuffer([B)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$data:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->update([II)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalHeight:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setOriginalData(III)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getLayerId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->firstEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$data:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$width:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$1;->val$height:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    goto :goto_1
.end method
