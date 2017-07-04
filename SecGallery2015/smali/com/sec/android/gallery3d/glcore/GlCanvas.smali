.class public Lcom/sec/android/gallery3d/glcore/GlCanvas;
.super Lcom/sec/android/gallery3d/glcore/TextureBase;
.source "GlCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;,
        Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;,
        Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;
    }
.end annotation


# static fields
.field static final ASYNC_RENDER_STATE_APPLIED:I = 0x3

.field public static final ASYNC_RENDER_STATE_NONE:I = 0x0

.field private static final ASYNC_RENDER_STATE_POSTPONED:I = 0x5

.field static final ASYNC_RENDER_STATE_PROCESSED:I = 0x2

.field static final ASYNC_RENDER_STATE_RUNNING:I = 0x1

.field static final ASYNC_RENDER_STATE_SUSPENDED:I = 0x4

.field private static final BITMAP_COUNT_POOL:I = 0x20

.field private static final BITMAP_COUNT_TYPE:I = 0x30

.field private static final TAG:Ljava/lang/String; = "GlCanvas"

.field private static final mConfig:Landroid/graphics/Bitmap$Config;


# instance fields
.field mASyncRenderState:I

.field mCanvas:Landroid/graphics/Canvas;

.field private mContentBitmap:Landroid/graphics/Bitmap;

.field private mItemIndex:I

.field mListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

.field private mManualRecycle:Z

.field public mReferCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/TextureBase;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mCanvas:Landroid/graphics/Canvas;

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mItemIndex:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mManualRecycle:Z

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setSize(II)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/TextureBase;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mCanvas:Landroid/graphics/Canvas;

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mItemIndex:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mManualRecycle:Z

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mReferCount:I

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static createUploadBitmapCache()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;-><init>(I)V

    return-object v0
.end method

.method public static destroyUploadBitmapCache(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$100(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$200(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    move-result-object v5

    aget-object v3, v5, v1

    const/4 v4, 0x0

    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$300(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[I

    move-result-object v5

    aget v5, v5, v1

    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$700(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$700(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v2, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$702(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    invoke-static {v2, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$602(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    invoke-static {v2, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$402(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;Lcom/sec/android/gallery3d/glcore/GlCanvas;)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$002(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;[I)[I

    move-object v5, v6

    check-cast v5, [[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    invoke-static {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$202(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$302(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;[I)[I

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$102(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;I)I

    return-void
.end method


# virtual methods
.method public getContentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRenderState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    return v0
.end method

.method public isManualRecycle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mManualRecycle:Z

    return v0
.end method

.method public onFreeBitmap()V
    .locals 7

    const/4 v6, -0x1

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mItemIndex:I

    if-ne v1, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, v4, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$200(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    aget-object v3, v4, v5

    const v4, 0xffff

    and-int/2addr v4, v1

    aget-object v2, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$402(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;Lcom/sec/android/gallery3d/glcore/GlCanvas;)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mItemIndex:I

    goto :goto_0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v14, :cond_1

    const-string/jumbo v14, "GlCanvas"

    const-string/jumbo v15, "onGetBitmap: GlRootView view is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, v14, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;

    if-nez v3, :cond_2

    const-string/jumbo v14, "GlCanvas"

    const-string/jumbo v15, "onGetBitmap return null reason canvasSet == null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mHeight:I

    if-lez v13, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    const-string/jumbo v14, "GlCanvas"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onGetBitmap return null reason size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v14

    move-object v4, v3

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v14

    :cond_4
    shl-int/lit8 v14, v5, 0xe

    or-int v9, v13, v14

    const/4 v6, 0x0

    :try_start_2
    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$000(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[I

    move-result-object v10

    if-nez v10, :cond_5

    const-string/jumbo v14, "GlCanvas"

    const-string/jumbo v15, "onGetBitmap return null reason keySet == null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    monitor-exit v3

    goto :goto_0

    :cond_5
    :goto_2
    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$100(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)I

    move-result v14

    if-ge v6, v14, :cond_6

    aget v14, v10, v6

    if-eq v9, v14, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$100(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)I

    move-result v14

    if-ne v6, v14, :cond_e

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$100(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)I

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_d

    const-string/jumbo v14, "GlCanvas"

    const-string/jumbo v15, "Reached max bitmap type count : current = 48 reset the canvasSetInfo"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->destroyUploadBitmapCache(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->createUploadBitmapCache()Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, v14, Lcom/sec/android/gallery3d/glcore/GlRootView;->mUploadBmCache:Ljava/lang/Object;

    check-cast v4, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$000(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[I

    move-result-object v10

    const/4 v6, 0x0

    :goto_3
    aput v9, v10, v6

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$104(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)I

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$200(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    move-result-object v14

    const/16 v15, 0x20

    new-array v15, v15, [Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    aput-object v15, v14, v6

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$300(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[I

    move-result-object v14

    const/4 v15, 0x0

    aput v15, v14, v6

    :goto_4
    const/4 v12, 0x0

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$300(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[I

    move-result-object v14

    aget v11, v14, v6

    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$200(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[[Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    move-result-object v14

    aget-object v8, v14, v6

    :goto_5
    if-ge v12, v11, :cond_7

    aget-object v14, v8, v12

    invoke-static {v14}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$400(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v14

    if-eqz v14, :cond_7

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    if-ne v12, v11, :cond_b

    const/16 v14, 0x20

    if-ne v11, v14, :cond_8

    const-string/jumbo v14, "GlCanvas"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Queue is full!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mASyncRenderState:I

    const/4 v14, 0x0

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    goto/16 :goto_1

    :cond_8
    sget-object v14, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v5, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to alloc bitmap buffer (onGetBitmap) size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_9
    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;->access$300(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasSetInfo;)[I

    move-result-object v14

    aget v15, v14, v6

    add-int/lit8 v15, v15, 0x1

    aput v15, v14, v6

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v1, v2, v0, v14}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/sec/android/gallery3d/glcore/GlCanvas;Lcom/sec/android/gallery3d/glcore/GlCanvas$1;)V

    aput-object v7, v8, v12

    :goto_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mWidth:I

    if-ne v13, v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mHeight:I

    if-eq v5, v14, :cond_c

    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_b
    :try_start_4
    aget-object v7, v8, v12

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$600(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)Landroid/graphics/Canvas;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$402(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;Lcom/sec/android/gallery3d/glcore/GlCanvas;)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mCanvas:Landroid/graphics/Canvas;

    shl-int/lit8 v14, v6, 0x10

    or-int/2addr v14, v12

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mItemIndex:I

    const/4 v14, 0x0

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;->access$700(Lcom/sec/android/gallery3d/glcore/GlCanvas$CanvasItem;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_0

    :cond_d
    move-object v4, v3

    goto/16 :goto_3

    :cond_e
    move-object v4, v3

    goto/16 :goto_4
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mState:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setSize(II)V

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mState:I

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mContentValid:Z

    goto :goto_0
.end method

.method public setListener(Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mListener:Lcom/sec/android/gallery3d/glcore/GlCanvas$GlCanvasListener;

    return-void
.end method

.method public setManualRecycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlCanvas;->mManualRecycle:Z

    return-void
.end method
