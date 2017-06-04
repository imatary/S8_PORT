.class Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;
.super Ljava/lang/Object;
.source "GlCanvasManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlCanvasExt"
.end annotation


# static fields
.field private static final DEF_CHILD_COUNT:I = 0x10


# instance fields
.field private mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field final mCanvasListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

.field private mCount:I

.field private final mHeight:I

.field private final mKey:I

.field private mMax:I

.field private final mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mUsed:I

.field private final mWidth:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;Lcom/sec/android/gallery3d/glcore/GlRootView;II)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mWidth:I

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mHeight:I

    shl-int/lit8 v0, p4, 0x10

    or-int/2addr v0, p3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mKey:I

    new-array v0, v2, [Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mMax:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mUsed:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;Lcom/sec/android/gallery3d/glcore/GlRootView;IILcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->get()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->recycle()V

    return-void
.end method

.method private get()Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mUsed:I

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v6, v3

    if-eqz v1, :cond_0

    iget v6, v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    if-nez v6, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    move-object v2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mWidth:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mHeight:I

    invoke-direct {v1, v6, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setListener(Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;)V

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mUsed:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mMax:I

    if-lt v6, v7, :cond_2

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mMax:I

    mul-int/lit8 v4, v6, 0x2

    new-array v5, v4, [Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mMax:I

    invoke-static {v6, v9, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mMax:I

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mMax:I

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aput-object v1, v6, v0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mUsed:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mUsed:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    move-object v2, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mUsed:I

    goto :goto_2
.end method

.method private recycle()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mUsed:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    return-void
.end method


# virtual methods
.method public remove(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 4

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mUsed:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->reset()V

    move v1, v0

    :cond_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->mInstanceCache:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->mKey:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager$GlCanvasExt;->recycle()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
