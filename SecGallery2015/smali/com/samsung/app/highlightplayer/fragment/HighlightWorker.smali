.class public Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;
.super Ljava/lang/Object;
.source "HighlightWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;
    }
.end annotation


# instance fields
.field private mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContext:Landroid/content/Context;

.field private mDummyHighlightWorkerListener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightWorkListener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

.field private mVideoHighlightHelper:Lcom/samsung/app/highlightplayer/VideoHighlightHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$1;

    invoke-direct {v0, p0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$1;-><init>(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mDummyHighlightWorkerListener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mDummyHighlightWorkerListener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mHighlightWorkListener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$2;-><init>(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;

    invoke-direct {v0}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mVideoHighlightHelper:Lcom/samsung/app/highlightplayer/VideoHighlightHelper;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mHighlightWorkListener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mHighlightWorkListener:Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)Lcom/samsung/app/highlightplayer/VideoHighlightHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mVideoHighlightHelper:Lcom/samsung/app/highlightplayer/VideoHighlightHelper;

    return-object v0
.end method


# virtual methods
.method public appInit()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$5;

    invoke-direct {v1, p0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$5;-><init>(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mVideoHighlightHelper:Lcom/samsung/app/highlightplayer/VideoHighlightHelper;

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/VideoHighlightHelper;->getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    return-object v0
.end method

.method public prepareNewEvent(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$3;-><init>(Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
