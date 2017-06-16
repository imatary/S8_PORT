.class Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;
.super Ljava/lang/Object;
.source "HistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewState()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->hideProgress()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->val$layerId:I

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z
    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z

    return-void
.end method
