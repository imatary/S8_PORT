.class public Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;
.super Ljava/lang/Object;
.source "GLCollageWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLItemInfo"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x1


# instance fields
.field public mDLBuffers:[Ljava/nio/FloatBuffer;

.field public mDLMax:[F

.field public mDLSelectedBuffers:Ljava/nio/FloatBuffer;

.field private mItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field public mLoaded:Z

.field public mReferenceBuffer:Ljava/nio/FloatBuffer;

.field public mSelStroke:F

.field public mTextureBuffer:Ljava/nio/FloatBuffer;

.field public mVertexBuffer:Ljava/nio/FloatBuffer;

.field public maxX:F

.field public maxY:F

.field public textureId:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v3, 0x20

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mLoaded:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxY:F

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mReferenceBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mReferenceBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->createBuffer()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->destroy()V

    return-void
.end method

.method private createBuffer()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v8

    add-float v1, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v8

    add-float v2, v5, v8

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v8

    monitor-enter v8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v20

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v6

    monitor-enter v6

    const/16 v5, 0x20

    :try_start_2
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    cmpl-float v5, v3, v4

    if-lez v5, :cond_5

    const/16 v5, 0x8

    new-array v0, v5, [F

    move-object/from16 v16, v0

    const/4 v5, 0x0

    neg-float v6, v3

    div-float/2addr v6, v4

    aput v6, v16, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v16, v5

    const/4 v5, 0x2

    neg-float v6, v3

    div-float/2addr v6, v4

    aput v6, v16, v5

    const/4 v5, 0x3

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v16, v5

    const/4 v5, 0x4

    div-float v6, v3, v4

    aput v6, v16, v5

    const/4 v5, 0x5

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v16, v5

    const/4 v5, 0x6

    div-float v6, v3, v4

    aput v6, v16, v5

    const/4 v5, 0x7

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v16, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v6

    monitor-enter v6

    cmpl-float v5, v3, v4

    if-lez v5, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxY:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_7

    div-float v5, v3, v4

    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->maxX:F

    const/high16 v8, 0x40800000    # 4.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_8

    move v5, v4

    :goto_3
    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    div-float v19, v8, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mRoundStep:F
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)F

    move-result v5

    cmpg-float v5, v19, v5

    if-gez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    move/from16 v0, v19

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mRoundStep:F
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$402(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;F)F

    :cond_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    cmpl-float v5, v3, v4

    if-lez v5, :cond_9

    mul-int/lit8 v5, v17, 0x2

    int-to-float v5, v5

    div-float/2addr v5, v4

    :goto_4
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mSelStroke:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080323

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/high16 v5, 0x41900000    # 18.0f

    mul-float v7, v5, v21

    const/high16 v5, 0x42960000    # 75.0f

    mul-float v18, v5, v21

    move-object/from16 v0, v16

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mReferenceBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mReferenceBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isDLResizing()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getDLId()I

    move-result v15

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasLeft()Z

    move-result v5

    if-eqz v5, :cond_b

    div-int/lit8 v5, v17, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v7, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    add-float/2addr v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v9, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v10, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    move v8, v7

    invoke-static/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStripWithTextures(FFFFII)[F

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    array-length v8, v0

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    const/4 v6, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    div-float/2addr v8, v7

    aput v8, v5, v6

    const/4 v5, -0x1

    if-eq v15, v5, :cond_1

    if-nez v15, :cond_1

    div-int/lit8 v5, v17, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    sub-float v8, v5, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    add-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    sub-float v9, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v12, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v13, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    move/from16 v10, v18

    move/from16 v11, v18

    invoke-static/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStripWithTextures(FFFFII)[F

    move-result-object v20

    move-object/from16 v0, v20

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v15, -0x1

    :cond_1
    :goto_6
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasTop()Z

    move-result v5

    if-eqz v5, :cond_c

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    add-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v7, v6

    sub-float/2addr v5, v6

    div-int/lit8 v6, v17, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v9, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v10, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    move v8, v7

    invoke-static/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStripWithTextures(FFFFII)[F

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x1

    move-object/from16 v0, v20

    array-length v8, v0

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    const/4 v6, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v3, v8

    div-float/2addr v8, v7

    aput v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    const/4 v6, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v6

    const/4 v5, -0x1

    if-eq v15, v5, :cond_2

    const/4 v5, 0x1

    if-ne v15, v5, :cond_2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    add-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    sub-float v8, v5, v6

    div-int/lit8 v5, v17, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    sub-float v9, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v12, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v13, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    move/from16 v10, v18

    move/from16 v11, v18

    invoke-static/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStripWithTextures(FFFFII)[F

    move-result-object v20

    move-object/from16 v0, v20

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v15, -0x1

    :cond_2
    :goto_7
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasRight()Z

    move-result v5

    if-eqz v5, :cond_d

    add-float v5, v1, v3

    div-int/lit8 v6, v17, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v7, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    add-float/2addr v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v9, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v10, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    move v8, v7

    invoke-static/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStripWithTextures(FFFFII)[F

    move-result-object v20

    const-string v5, "PEDIT_GLCollageWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tmp length is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    array-length v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    move-object/from16 v0, v20

    array-length v8, v0

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    const/4 v6, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    const/4 v6, 0x5

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v4, v8

    div-float/2addr v8, v7

    aput v8, v5, v6

    const/4 v5, -0x1

    if-eq v15, v5, :cond_3

    const/4 v5, 0x2

    if-ne v15, v5, :cond_3

    add-float v5, v1, v3

    div-int/lit8 v6, v17, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    sub-float v8, v5, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    add-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    sub-float v9, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v12, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v13, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    move/from16 v10, v18

    move/from16 v11, v18

    invoke-static/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStripWithTextures(FFFFII)[F

    move-result-object v20

    move-object/from16 v0, v20

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v15, -0x1

    :cond_3
    :goto_8
    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasBottom()Z

    move-result v5

    if-eqz v5, :cond_e

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    add-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v7, v6

    sub-float/2addr v5, v6

    add-float v6, v2, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v6, v8

    div-int/lit8 v8, v17, 0x2

    int-to-float v8, v8

    sub-float/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v9, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v10, v8, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    move v8, v7

    invoke-static/range {v5 .. v10}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStripWithTextures(FFFFII)[F

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    move-object/from16 v0, v20

    array-length v8, v0

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    const/4 v6, 0x6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v3, v8

    div-float/2addr v8, v7

    aput v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLMax:[F

    const/4 v6, 0x7

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v6

    const/4 v5, -0x1

    if-eq v15, v5, :cond_4

    const/4 v5, 0x3

    if-ne v15, v5, :cond_4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    add-float/2addr v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    sub-float v8, v5, v6

    add-float v5, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    sub-float/2addr v5, v6

    div-int/lit8 v6, v17, 0x2

    int-to-float v6, v6

    sub-float v9, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v12, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget v13, v5, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mScreenHeight:I

    move/from16 v10, v18

    move/from16 v11, v18

    invoke-static/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinatesForStripWithTextures(FFFFII)[F

    move-result-object v20

    move-object/from16 v0, v20

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLSelectedBuffers:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v15, -0x1

    :cond_4
    :goto_9
    return-void

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    :catchall_2
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    :cond_5
    const/16 v5, 0x8

    new-array v0, v5, [F

    move-object/from16 v16, v0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v16, v5

    const/4 v5, 0x1

    div-float v6, v4, v3

    aput v6, v16, v5

    const/4 v5, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v16, v5

    const/4 v5, 0x3

    neg-float v6, v4

    div-float/2addr v6, v3

    aput v6, v16, v5

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v16, v5

    const/4 v5, 0x5

    div-float v6, v4, v3

    aput v6, v16, v5

    const/4 v5, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v16, v5

    const/4 v5, 0x7

    neg-float v6, v4

    div-float/2addr v6, v3

    aput v6, v16, v5

    goto/16 :goto_0

    :cond_6
    div-float v5, v4, v3

    goto/16 :goto_1

    :cond_7
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_8
    move v5, v3

    goto/16 :goto_3

    :catchall_3
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v5

    :cond_9
    mul-int/lit8 v5, v17, 0x2

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto/16 :goto_4

    :cond_a
    const/4 v15, -0x1

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    const/4 v8, 0x0

    aput-object v8, v5, v6

    goto/16 :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x1

    const/4 v8, 0x0

    aput-object v8, v5, v6

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/4 v8, 0x0

    aput-object v8, v5, v6

    goto/16 :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mDLBuffers:[Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    const/4 v8, 0x0

    aput-object v8, v5, v6

    goto :goto_9
.end method

.method private destroy()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    if-lez v0, :cond_0

    new-array v0, v3, [I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mLoaded:Z

    return-void
.end method


# virtual methods
.method public loadTexture(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 9

    const/16 v8, 0xa

    const v7, 0x47012f00    # 33071.0f

    const v6, 0x46180400    # 9729.0f

    const/4 v5, 0x0

    const/16 v4, 0xde1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    :cond_0
    const-string v1, "PEDIT_GLCollageWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in loadTexture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "PEDIT_GLCollageWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in loadTexture failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->textureId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "#ececec"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_2
    const/16 v1, 0x2801

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v4, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mLoaded:Z

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->destroy()V

    return-void
.end method

.method public updateTextureBuffer(Landroid/graphics/RectF;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    new-array v1, v2, [F

    const/4 v2, 0x0

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, v1, v2

    const/4 v2, 0x1

    iget v4, p1, Landroid/graphics/RectF;->top:F

    aput v4, v1, v2

    const/4 v2, 0x2

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, v1, v2

    const/4 v2, 0x3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    aput v4, v1, v2

    const/4 v2, 0x4

    iget v4, p1, Landroid/graphics/RectF;->right:F

    aput v4, v1, v2

    const/4 v2, 0x5

    iget v4, p1, Landroid/graphics/RectF;->top:F

    aput v4, v1, v2

    const/4 v2, 0x6

    iget v4, p1, Landroid/graphics/RectF;->right:F

    aput v4, v1, v2

    const/4 v2, 0x7

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    aput v4, v1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$GLItemInfo;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
