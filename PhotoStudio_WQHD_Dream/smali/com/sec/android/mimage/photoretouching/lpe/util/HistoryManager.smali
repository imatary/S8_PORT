.class public Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# static fields
.field private static HISTORY_SIZE:I


# instance fields
.field private hThread:Landroid/os/HandlerThread;

.field private mCleaner:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mPreviousEventsIndex:I

.field private mSavedEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->HISTORY_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mSavedEvents:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData(I)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewState()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewState()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showProgress()V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)V

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$1;->start()V

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewHeight()I

    move-result v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setPreviewData([III)V

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->resetOriginal()V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewHeight()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getIsPng()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setIsLasso(Z)V

    goto :goto_0
.end method

.method private getCleaner()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCleaner:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "history"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$3;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCleaner:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCleaner:Landroid/os/Handler;

    return-object v0
.end method

.method private getRedoAllEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getRedoEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    .locals 5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getUndoEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    .locals 4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addHistoryEvent(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCardViewSize()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-le v1, v4, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v6

    if-ne v6, v2, :cond_0

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCleaner()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->removeCardViewData(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    const/4 v6, -0x1

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->HISTORY_SIZE:I

    if-lt v6, v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->removeFirstHistory()V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCleaner:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCleaner:Landroid/os/Handler;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-void
.end method

.method public getCurrentBitmap(I)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method public getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    goto :goto_0
.end method

.method public getCurrentPosition(I)I
    .locals 6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    :goto_0
    if-gt v3, v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v5

    if-ne v5, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_2

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSavedPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mSavedEvents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mSavedEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getPreviewHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method public getUndoAllEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasRedoHistory(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getRedoEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSavedImage()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mSavedEvents:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mSavedEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUndoHistory(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getUndoEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mSavedEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public redo(I)Z
    .locals 3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getRedoEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public redoAll(I)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getRedoAllEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeFirstHistory()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCleaner()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->removeCardViewData(I)V

    return-void
.end method

.method public removeHistory(I)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCardViewSize()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v3

    if-ne v3, p1, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCleaner()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->removeCardViewData(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public saved(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mSavedEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getCurrentEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public undo(I)Z
    .locals 3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getUndoEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public undoAll(I)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mCurrentEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mPreviousEventsIndex:I

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getUndoAllEvent(I)Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public undoToID(III)Z
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v3, p3, -0x1

    sub-int v0, v3, p2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->getLayerId()I

    move-result v3

    if-ne v3, p1, :cond_0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->mHistoryEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v1, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->applyHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;I)Z

    move-result v3

    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
