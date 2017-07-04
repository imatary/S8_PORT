.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;
.super Ljava/lang/Thread;
.source "FilterGroupViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTagTask"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "UpdateTagTask"


# instance fields
.field private volatile mDirty:Z

.field private volatile mIsActive:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->mIsActive:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->mDirty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;Ljava/lang/String;Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->terminate()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->notifyDirty()V

    return-void
.end method

.method private declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->mDirty:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->mIsActive:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->mIsActive:Z

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->mDirty:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->mDirty:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->updateTagList()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    return-void
.end method
