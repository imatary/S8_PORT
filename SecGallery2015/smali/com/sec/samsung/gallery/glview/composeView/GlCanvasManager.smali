.class public Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
.super Ljava/lang/Object;
.source "GlCanvasManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;
    }
.end annotation


# static fields
.field private static final MAX_CANVAS_COUNT:I = 0x64

.field private static final mCanvasLock:Ljava/lang/Object;


# instance fields
.field private final mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private final mInstanceCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mCanvasLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mInstanceCache:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mInstanceCache:Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 9

    sget-object v8, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mCanvasLock:Ljava/lang/Object;

    monitor-enter v8

    shl-int/lit8 v1, p2, 0x10

    or-int v7, v1, p1

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mInstanceCache:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;Lcom/sec/android/gallery3d/glcore/GlRootView;IILcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$1;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mInstanceCache:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->get()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v6

    monitor-exit v8

    return-object v6

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recycle()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mInstanceCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->recycle()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mInstanceCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method
