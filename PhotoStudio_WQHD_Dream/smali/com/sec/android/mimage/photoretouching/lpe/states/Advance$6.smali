.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;
.super Ljava/lang/Object;
.source "Advance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->doOriginalDone(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field final synthetic val$historyList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$historyList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBufferId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, v1

    new-array v2, v0, [I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$historyList:Ljava/util/ArrayList;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvanceOriginalWithHistory([I[IIILjava/util/ArrayList;)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[I[IIILjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v5

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$6;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->addOriginalToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;[III)V

    goto :goto_0
.end method
