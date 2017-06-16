.class Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;
.super Ljava/lang/Object;
.source "ImageData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->updateOriginalFromFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getLayerId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalDataId:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v1

    const-string v5, "PEDIT_ImageData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data from file is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalWidth()I

    move-result v3

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalHeight()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getOriginalHeight()I

    move-result v2

    :goto_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getLayerId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v4

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4, v1, v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalWidth:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mOriginalHeight:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v2

    goto :goto_2
.end method
