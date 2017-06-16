.class Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;
.super Ljava/lang/Object;
.source "HistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalDimensions(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalId(I)V

    :cond_0
    return-void
.end method
