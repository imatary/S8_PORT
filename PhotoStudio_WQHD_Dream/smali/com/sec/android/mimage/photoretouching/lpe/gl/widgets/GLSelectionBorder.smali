.class public final Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;
.super Ljava/lang/Object;
.source "GLSelectionBorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;
    }
.end annotation


# static fields
.field static BGVAL:I = 0x0

.field static FGVAL:I = 0x0

.field private static final LINE_DELAY:I = 0x32

.field public static final LINE_LENGTH:I = 0xa

.field private static final LINE_STEP:I = 0x3

.field private static final MIN_WIDTH:I = 0x2e

.field private static final MSG_UPDATE_LINES:I = 0x0

.field public static final RECT_LINE_LENGTH:I = 0x17

.field static VISITED:B


# instance fields
.field hThread:Landroid/os/HandlerThread;

.field private mBreakPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mHandler:Landroid/os/Handler;

.field private mInverse:Z

.field private mLassoBreakPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mLineAnim:Z

.field private mLineBuffer:Ljava/nio/FloatBuffer;

.field private mLineOffset:I

.field private mMaskBuffer:[B

.field private mMaskOutline:[F

.field private mMaskOutlineBreaks:[I

.field private mMaskOutlineBreaksLength:I

.field private mMaskROI:Landroid/graphics/Rect;

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mSelectionInProgress:Z

.field private mSelectionMode:I

.field private mSelectionRect:Landroid/graphics/RectF;

.field private mSelectionRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->FGVAL:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->BGVAL:I

    const/16 v0, 0x21

    sput-byte v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->VISITED:B

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineAnim:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRects:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mInverse:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLassoBreakPoints:Ljava/util/ArrayList;

    const/high16 v0, 0x40000

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    const/16 v0, 0x6000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->initHandler()V

    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineAnim:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->updateLines()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object v0
.end method

.method public static contourTrace([BII[I[FLandroid/graphics/Rect;)I
    .locals 42

    const/16 v22, 0x0

    add-int/lit8 v7, p1, 0x2

    add-int/lit8 v8, p2, 0x2

    mul-int v36, v7, v8

    move/from16 v0, v36

    new-array v4, v0, [B

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v36, v0

    mul-int v37, p1, p2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    mul-int v36, v19, p1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v26

    add-int/lit8 v36, v19, 0x1

    mul-int v36, v36, v7

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    move/from16 v1, p1

    invoke-static {v4, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    add-int/lit8 v6, v36, 0x1

    :goto_2
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    if-ge v6, v0, :cond_4

    mul-int v35, v6, v7

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    add-int/lit8 v5, v36, 0x1

    :goto_3
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    if-ge v5, v0, :cond_3

    add-int v36, v35, v5

    array-length v0, v4

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_2

    add-int v36, v35, v5

    aget-byte v36, v4, v36

    sget v37, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->FGVAL:I

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    add-int/lit8 v36, v5, -0x1

    add-int v36, v36, v35

    aget-byte v36, v4, v36

    sget v37, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->BGVAL:I

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    const/4 v9, 0x2

    move/from16 v30, v5

    move/from16 v34, v6

    add-int/lit8 v23, v22, 0x1

    aput v20, p3, v22

    add-int/lit8 v21, v20, 0x1

    add-int/lit8 v36, v5, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, p4, v20

    add-int/lit8 v20, v21, 0x1

    add-int/lit8 v36, v6, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, p4, v21

    :goto_4
    mul-int v36, v6, v7

    add-int v36, v36, v5

    sget-byte v37, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->VISITED:B

    aput-byte v37, v4, v36

    invoke-static/range {v4 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->getNextCntr([BIIIII)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;

    move-result-object v16

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;->x:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;->y:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;->idirn:I

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v20, 0x1

    add-int/lit8 v36, v5, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, p4, v20

    add-int/lit8 v20, v21, 0x1

    add-int/lit8 v36, v6, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, p4, v21

    add-int/lit8 v36, v23, -0x1

    aget v36, p3, v36

    sub-int v36, v20, v36

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_6

    add-int/lit8 v36, v20, -0x6

    aget v27, p4, v36

    add-int/lit8 v36, v20, -0x5

    aget v31, p4, v36

    add-int/lit8 v36, v20, -0x4

    aget v28, p4, v36

    add-int/lit8 v36, v20, -0x3

    aget v32, p4, v36

    add-int/lit8 v36, v20, -0x2

    aget v29, p4, v36

    add-int/lit8 v36, v20, -0x1

    aget v33, p4, v36

    sub-float v36, v32, v31

    sub-float v37, v32, v31

    mul-float v36, v36, v37

    sub-float v37, v28, v27

    sub-float v38, v28, v27

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move/from16 v0, v36

    float-to-double v10, v0

    sub-float v36, v33, v31

    sub-float v37, v33, v31

    mul-float v36, v36, v37

    sub-float v37, v29, v27

    sub-float v38, v29, v27

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move/from16 v0, v36

    float-to-double v12, v0

    sub-float v36, v32, v33

    sub-float v37, v32, v33

    mul-float v36, v36, v37

    sub-float v37, v28, v29

    sub-float v38, v28, v29

    mul-float v37, v37, v38

    add-float v36, v36, v37

    move/from16 v0, v36

    float-to-double v14, v0

    add-double v36, v10, v14

    sub-double v36, v36, v12

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v40, v10, v14

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v40

    mul-double v38, v38, v40

    div-double v24, v36, v38

    mul-double v36, v10, v14

    const-wide/16 v38, 0x0

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v36

    const-wide v38, 0x3ffe28c731eb6950L    # 1.8849555921538759

    cmpg-double v36, v36, v38

    if-gez v36, :cond_6

    add-int/lit8 v22, v23, 0x1

    add-int/lit8 v36, v20, -0x4

    aput v36, p3, v23

    :goto_5
    move/from16 v0, v30

    if-ne v5, v0, :cond_5

    move/from16 v0, v34

    if-ne v6, v0, :cond_5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v23, v22, 0x1

    aput v20, p3, v22

    move/from16 v22, v23

    goto/16 :goto_0

    :cond_5
    move/from16 v23, v22

    goto/16 :goto_4

    :cond_6
    move/from16 v22, v23

    goto :goto_5
.end method

.method private static getNextCntr([BIIIII)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;
    .locals 10

    const/4 v6, 0x0

    const/16 v9, 0x8

    const/4 v0, 0x0

    const/16 v5, 0x10

    new-array v4, v5, [B

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v5, p2, -0x1

    if-ltz v5, :cond_0

    add-int/lit8 v5, p2, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    aput-byte v5, v4, v9

    aput-byte v5, v4, v6

    :cond_0
    add-int/lit8 v5, p2, -0x1

    if-ltz v5, :cond_1

    add-int/lit8 v5, p1, 0x1

    if-ge v5, p3, :cond_1

    const/4 v5, 0x1

    const/16 v6, 0x9

    add-int/lit8 v7, p2, -0x1

    mul-int/2addr v7, p3

    add-int/lit8 v8, p1, 0x1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    aput-byte v7, v4, v5

    :cond_1
    add-int/lit8 v5, p1, 0x1

    if-ge v5, p3, :cond_2

    const/4 v5, 0x2

    const/16 v6, 0xa

    mul-int v7, p2, p3

    add-int/lit8 v8, p1, 0x1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    aput-byte v7, v4, v5

    :cond_2
    add-int/lit8 v5, p2, 0x1

    if-ge v5, p4, :cond_3

    add-int/lit8 v5, p1, 0x1

    if-ge v5, p3, :cond_3

    const/4 v5, 0x3

    const/16 v6, 0xb

    add-int/lit8 v7, p2, 0x1

    mul-int/2addr v7, p3

    add-int/lit8 v8, p1, 0x1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    aput-byte v7, v4, v5

    :cond_3
    add-int/lit8 v5, p2, 0x1

    if-ge v5, p4, :cond_4

    const/4 v5, 0x4

    const/16 v6, 0xc

    add-int/lit8 v7, p2, 0x1

    mul-int/2addr v7, p3

    add-int/2addr v7, p1

    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    aput-byte v7, v4, v5

    :cond_4
    add-int/lit8 v5, p2, 0x1

    if-ge v5, p4, :cond_5

    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_5

    const/4 v5, 0x5

    const/16 v6, 0xd

    add-int/lit8 v7, p2, 0x1

    mul-int/2addr v7, p3

    add-int/lit8 v8, p1, -0x1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    aput-byte v7, v4, v5

    :cond_5
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_6

    const/4 v5, 0x6

    const/16 v6, 0xe

    mul-int v7, p2, p3

    add-int/lit8 v8, p1, -0x1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    aput-byte v7, v4, v5

    :cond_6
    add-int/lit8 v5, p2, -0x1

    if-ltz v5, :cond_7

    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_7

    const/4 v5, 0x7

    const/16 v6, 0xf

    add-int/lit8 v7, p2, -0x1

    mul-int/2addr v7, p3

    add-int/lit8 v8, p1, -0x1

    add-int/2addr v7, v8

    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    aput-byte v7, v4, v5

    :cond_7
    add-int/lit8 v5, p5, 0x4

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v2, v5, 0x8

    if-nez v2, :cond_8

    const/16 v2, 0x8

    :cond_8
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_9

    aget-byte v5, v4, v2

    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->BGVAL:I

    if-eq v5, v6, :cond_a

    add-int/lit8 v5, v2, -0x1

    aget-byte v5, v4, v5

    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->BGVAL:I

    if-ne v5, v6, :cond_a

    :cond_9
    if-ne v3, v9, :cond_b

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;-><init>()V

    rem-int/lit8 v5, v2, 0x8

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;->idirn:I

    packed-switch v2, :pswitch_data_0

    :goto_2
    iput p1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;->x:I

    iput p2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$Cntr;->y:I

    move-object v1, v0

    goto :goto_1

    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :pswitch_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :pswitch_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :pswitch_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :pswitch_4
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :pswitch_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :pswitch_6
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :pswitch_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "selection"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private updateLines()V
    .locals 50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    move/from16 v43, v0

    const v44, 0x10004

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mInverse:Z

    move/from16 v43, v0

    if-nez v43, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v43, v0

    const/16 v44, 0x2e

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x2e

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->clear()V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    move/from16 v43, v0

    const v44, 0x10004

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mInverse:Z

    move/from16 v43, v0

    if-nez v43, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRects:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_1
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_d

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/graphics/RectF;

    new-instance v39, Landroid/graphics/RectF;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v45, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v46

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, v39

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v45, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v46

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, v39

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v45, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v46

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, v39

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v45, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v46

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, v39

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v44, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v20

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v44, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v33

    const/high16 v44, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v15, v44, v45

    const/high16 v44, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v40, v44, v45

    const/16 v44, 0x0

    aget v41, v20, v44

    const/16 v44, 0x1

    aget v42, v20, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z

    move/from16 v44, v0

    if-eqz v44, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRect:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_3

    const/16 v26, 0x0

    :goto_2
    rem-int/lit8 v44, v26, 0x17

    if-lez v44, :cond_1

    rem-int/lit8 v44, v26, 0x17

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    mul-float v44, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v44, v44, v45

    add-float v41, v41, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    :cond_1
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->width()F

    move-result v44

    rem-int/lit8 v45, v26, 0x17

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v44, v44, v45

    const/high16 v45, 0x41b80000    # 23.0f

    div-float v44, v44, v45

    move/from16 v0, v44

    float-to-int v10, v0

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    add-float v41, v41, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v43, v0

    const/16 v44, 0x14

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x14

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v26, v0

    goto/16 :goto_2

    :cond_4
    const/high16 v44, 0x41b80000    # 23.0f

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->width()F

    move-result v45

    rem-int/lit8 v46, v26, 0x17

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v45, v45, v46

    const/high16 v46, 0x41b80000    # 23.0f

    rem-float v45, v45, v46

    sub-float v38, v44, v45

    const/high16 v44, 0x41b80000    # 23.0f

    rem-float v44, v38, v44

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-lez v44, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v45, v33, v45

    invoke-virtual/range {v44 .. v45}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v45, v33, v45

    invoke-virtual/range {v44 .. v45}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x2

    :cond_5
    const/16 v44, 0x0

    aget v41, v33, v44

    const/16 v44, 0x1

    aget v42, v20, v44

    const/high16 v44, 0x41b80000    # 23.0f

    rem-float v44, v38, v44

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-lez v44, :cond_6

    const/high16 v44, 0x41b80000    # 23.0f

    rem-float v44, v38, v44

    const/high16 v45, 0x40000000    # 2.0f

    mul-float v44, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v44, v44, v45

    sub-float v42, v42, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    :cond_6
    :goto_4
    sub-float v44, v42, v40

    const/16 v45, 0x1

    aget v45, v33, v45

    cmpl-float v44, v44, v45

    if-ltz v44, :cond_7

    sub-float v42, v42, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget v45, v33, v45

    invoke-virtual/range {v44 .. v45}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v44, 0x0

    aget v41, v20, v44

    const/16 v44, 0x1

    aget v42, v20, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    rem-int/lit8 v44, v26, 0x17

    if-lez v44, :cond_8

    rem-int/lit8 v44, v26, 0x17

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    mul-float v44, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v44, v44, v45

    sub-float v42, v42, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    :cond_8
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->height()F

    move-result v44

    rem-int/lit8 v45, v26, 0x17

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v44, v44, v45

    const/high16 v45, 0x41b80000    # 23.0f

    div-float v44, v44, v45

    move/from16 v0, v44

    float-to-int v10, v0

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v0, v10, :cond_9

    sub-float v42, v42, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    :cond_9
    const/high16 v44, 0x41b80000    # 23.0f

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->height()F

    move-result v45

    rem-int/lit8 v46, v26, 0x17

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v45, v45, v46

    const/high16 v46, 0x41b80000    # 23.0f

    rem-float v45, v45, v46

    sub-float v38, v44, v45

    const/high16 v44, 0x41b80000    # 23.0f

    rem-float v44, v38, v44

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-lez v44, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget v45, v33, v45

    invoke-virtual/range {v44 .. v45}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget v45, v33, v45

    invoke-virtual/range {v44 .. v45}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x2

    :cond_a
    const/16 v44, 0x0

    aget v41, v20, v44

    const/16 v44, 0x1

    aget v42, v33, v44

    const/high16 v44, 0x41b80000    # 23.0f

    rem-float v44, v38, v44

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-lez v44, :cond_b

    const/high16 v44, 0x41b80000    # 23.0f

    rem-float v44, v38, v44

    const/high16 v45, 0x40000000    # 2.0f

    mul-float v44, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v44, v44, v45

    add-float v41, v41, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    :cond_b
    :goto_6
    add-float v44, v41, v15

    const/16 v45, 0x0

    aget v45, v33, v45

    cmpg-float v44, v44, v45

    if-gtz v44, :cond_c

    add-float v41, v41, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v45, v33, v45

    invoke-virtual/range {v44 .. v45}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_e
    :goto_7
    new-instance v43, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$2;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)V

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$2;->start()V

    return-void

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    move/from16 v43, v0

    const v44, 0x10003

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mInverse:Z

    move/from16 v43, v0

    if-nez v43, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRects:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_8
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_18

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/graphics/RectF;

    new-instance v39, Landroid/graphics/RectF;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v45, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v46

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, v39

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v45, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v46

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, v39

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v45, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v46

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, v39

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v45, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v46

    mul-float v45, v45, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v45, v45, v46

    add-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, v39

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v44, 0x40c00000    # 6.0f

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->width()F

    move-result v45

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->height()F

    move-result v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    move-result v45

    div-float v26, v44, v45

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->width()F

    move-result v44

    const/high16 v45, 0x40000000    # 2.0f

    div-float v4, v44, v45

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->height()F

    move-result v44

    const/high16 v45, 0x40000000    # 2.0f

    div-float v5, v44, v45

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual/range {v39 .. v39}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    const-wide v36, 0x4021475cc9eedf00L    # 8.63937979737193

    const-wide v12, 0x4015fdbbe9bba775L    # 5.497787143782138

    float-to-double v0, v4

    move-wide/from16 v44, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v28, v44, v46

    float-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    mul-double v30, v44, v46

    move-wide/from16 v22, v28

    move-wide/from16 v24, v30

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v9, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-wide/from16 v6, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v44, v0

    rem-int/lit8 v44, v44, 0xa

    if-lez v44, :cond_11

    const/4 v14, 0x0

    :goto_9
    cmpl-double v44, v6, v12

    if-ltz v44, :cond_11

    if-nez v14, :cond_11

    float-to-double v0, v4

    move-wide/from16 v44, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v22, v44, v46

    float-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    mul-double v24, v44, v46

    sub-double v44, v24, v30

    sub-double v46, v24, v30

    mul-double v44, v44, v46

    sub-double v46, v22, v28

    sub-double v48, v22, v28

    mul-double v46, v46, v48

    add-double v44, v44, v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v46, v0

    rem-int/lit8 v46, v46, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v47, v0

    rem-int/lit8 v47, v47, 0xa

    mul-int v46, v46, v47

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    cmpl-double v44, v44, v46

    if-lez v44, :cond_10

    const/4 v14, 0x1

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v9, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-wide/from16 v28, v22

    move-wide/from16 v30, v24

    :cond_10
    const/high16 v44, 0x40800000    # 4.0f

    div-float v44, v26, v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    sub-double v6, v6, v44

    goto/16 :goto_9

    :cond_11
    :goto_a
    cmpl-double v44, v6, v12

    if-ltz v44, :cond_13

    float-to-double v0, v4

    move-wide/from16 v44, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v22, v44, v46

    float-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    mul-double v24, v44, v46

    sub-double v44, v24, v30

    sub-double v46, v24, v30

    mul-double v44, v44, v46

    sub-double v46, v22, v28

    sub-double v48, v22, v28

    mul-double v46, v46, v48

    add-double v44, v44, v46

    const-wide/high16 v46, 0x4059000000000000L    # 100.0

    cmpl-double v44, v44, v46

    if-lez v44, :cond_12

    move-wide/from16 v28, v22

    move-wide/from16 v30, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v9, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    :cond_12
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v44, v0

    sub-double v6, v6, v44

    goto :goto_a

    :cond_13
    float-to-double v0, v4

    move-wide/from16 v44, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v22, v44, v46

    float-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    mul-double v24, v44, v46

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v9, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v36, 0x4002d97c7f3321d2L    # 2.356194490192345

    const-wide v12, 0x4015fdbbe9bba775L    # 5.497787143782138

    float-to-double v0, v4

    move-wide/from16 v44, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v28, v44, v46

    float-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    mul-double v30, v44, v46

    move-wide/from16 v22, v28

    move-wide/from16 v24, v30

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v9, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-wide/from16 v6, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v44, v0

    rem-int/lit8 v44, v44, 0xa

    if-lez v44, :cond_15

    const/4 v14, 0x0

    :goto_b
    cmpg-double v44, v6, v12

    if-gtz v44, :cond_15

    if-nez v14, :cond_15

    float-to-double v0, v4

    move-wide/from16 v44, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v22, v44, v46

    float-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    mul-double v24, v44, v46

    sub-double v44, v24, v30

    sub-double v46, v24, v30

    mul-double v44, v44, v46

    sub-double v46, v22, v28

    sub-double v48, v22, v28

    mul-double v46, v46, v48

    add-double v44, v44, v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v46, v0

    rem-int/lit8 v46, v46, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v47, v0

    rem-int/lit8 v47, v47, 0xa

    mul-int v46, v46, v47

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    cmpl-double v44, v44, v46

    if-lez v44, :cond_14

    const/4 v14, 0x1

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v9, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-wide/from16 v28, v22

    move-wide/from16 v30, v24

    :cond_14
    const/high16 v44, 0x40800000    # 4.0f

    div-float v44, v26, v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    add-double v6, v6, v44

    goto/16 :goto_b

    :cond_15
    :goto_c
    cmpg-double v44, v6, v12

    if-gtz v44, :cond_17

    float-to-double v0, v4

    move-wide/from16 v44, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v22, v44, v46

    float-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    mul-double v24, v44, v46

    sub-double v44, v24, v30

    sub-double v46, v24, v30

    mul-double v44, v44, v46

    sub-double v46, v22, v28

    sub-double v48, v22, v28

    mul-double v46, v46, v48

    add-double v44, v44, v46

    const-wide/high16 v46, 0x4059000000000000L    # 100.0

    cmpl-double v44, v44, v46

    if-lez v44, :cond_16

    move-wide/from16 v28, v22

    move-wide/from16 v30, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v9, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    :cond_16
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v44, v0

    add-double v6, v6, v44

    goto :goto_c

    :cond_17
    float-to-double v0, v4

    move-wide/from16 v44, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v46

    mul-double v22, v44, v46

    float-to-double v0, v5

    move-wide/from16 v44, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    mul-double v24, v44, v46

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v44, v0

    add-float v44, v44, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v45, v0

    sub-float v45, v9, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    invoke-static/range {v44 .. v47}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    move/from16 v43, v0

    const v44, 0x10005

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    move/from16 v43, v0

    const v44, 0x10008

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    move/from16 v43, v0

    const v44, 0x10001

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    move/from16 v43, v0

    const v44, 0x10002

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mInverse:Z

    move/from16 v43, v0

    if-eqz v43, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    aget v43, v43, v44

    if-lez v43, :cond_e

    :cond_1c
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move/from16 v0, v18

    move/from16 v1, v43

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    move-object/from16 v43, v0

    aget v35, v43, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    move-object/from16 v43, v0

    add-int/lit8 v44, v18, 0x1

    aget v11, v43, v44

    move/from16 v16, v35

    sub-int v34, v11, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v43, v0

    aget v28, v43, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v43, v0

    add-int/lit8 v44, v16, 0x1

    aget v30, v43, v44

    move/from16 v22, v28

    move/from16 v24, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v43, v0

    rem-int/lit8 v43, v43, 0xa

    if-lez v43, :cond_21

    const/4 v14, 0x0

    add-int/lit8 v16, v35, 0x2

    move/from16 v17, v16

    :cond_1d
    :goto_e
    move/from16 v0, v17

    if-ge v0, v11, :cond_1e

    if-nez v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v43, v0

    add-int/lit8 v16, v17, 0x1

    aget v22, v43, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v43, v0

    add-int/lit8 v17, v16, 0x1

    aget v24, v43, v16

    sub-float v43, v24, v30

    sub-float v44, v24, v30

    mul-float v43, v43, v44

    sub-float v44, v22, v28

    sub-float v45, v22, v28

    mul-float v44, v44, v45

    add-float v43, v43, v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v44, v0

    rem-int/lit8 v44, v44, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v45, v0

    rem-int/lit8 v45, v45, 0xa

    mul-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    cmpl-float v43, v43, v44

    if-lez v43, :cond_1d

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v43, v0

    rem-int/lit8 v43, v43, 0xa

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v44, v0

    sub-float v43, v24, v30

    sub-float v46, v24, v30

    mul-float v43, v43, v46

    sub-float v46, v22, v28

    sub-float v47, v22, v28

    mul-float v46, v46, v47

    add-float v43, v43, v46

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    div-double v44, v44, v46

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v19, v0

    sub-float v43, v22, v28

    mul-float v43, v43, v19

    add-float v22, v28, v43

    sub-float v43, v24, v30

    mul-float v43, v43, v19

    add-float v24, v30, v43

    move/from16 v28, v22

    move/from16 v30, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e

    :cond_1e
    :goto_f
    move/from16 v0, v17

    if-ge v0, v11, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v43, v0

    add-int/lit8 v16, v17, 0x1

    aget v22, v43, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v43, v0

    add-int/lit8 v17, v16, 0x1

    aget v24, v43, v16

    sub-float v43, v24, v30

    sub-float v44, v24, v30

    mul-float v43, v43, v44

    sub-float v44, v22, v28

    sub-float v45, v22, v28

    mul-float v44, v44, v45

    add-float v43, v43, v44

    const/high16 v44, 0x42c80000    # 100.0f

    cmpl-float v43, v43, v44

    if-lez v43, :cond_1e

    const-wide/high16 v44, 0x4024000000000000L    # 10.0

    sub-float v43, v24, v30

    sub-float v46, v24, v30

    mul-float v43, v43, v46

    sub-float v46, v22, v28

    sub-float v47, v22, v28

    mul-float v46, v46, v47

    add-float v43, v43, v46

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    div-double v44, v44, v46

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v19, v0

    sub-float v43, v22, v28

    mul-float v43, v43, v19

    add-float v22, v28, v43

    sub-float v43, v24, v30

    mul-float v43, v43, v19

    add-float v24, v30, v43

    move/from16 v28, v22

    move/from16 v30, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_f

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v43, v0

    add-int/lit8 v44, v11, -0x2

    aget v43, v43, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v44, v0

    add-int/lit8 v45, v11, -0x1

    aget v44, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    invoke-static/range {v43 .. v46}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_d

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    monitor-exit p0

    goto/16 :goto_7

    :catchall_0
    move-exception v43

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v43

    :cond_21
    move/from16 v17, v16

    goto/16 :goto_f
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mInverse:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLassoBreakPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineAnim:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw()V
    .locals 14

    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v11

    iget v2, v11, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const-string v2, "a_Position"

    invoke-virtual {v11, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v2, "u_Color"

    invoke-virtual {v11, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v7

    const-string v2, "u_Matrix"

    invoke-virtual {v11, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v13

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v13, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v7, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v12, 0x0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    const v4, 0x10004

    if-ne v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mInverse:Z

    if-nez v2, :cond_0

    const/16 v2, 0x17

    :goto_0
    if-gt v3, v2, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v10, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v6, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    :goto_3
    add-int/lit8 v1, v9, -0x1

    if-ge v12, v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v12, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v12, v12, 0x2

    goto :goto_3

    :cond_0
    const/16 v2, 0xa

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v12, v1, 0x1

    if-nez v6, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    :goto_5
    add-int/lit8 v1, v9, -0x1

    if-ge v12, v1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v12, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v12, v12, 0x2

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public getSelectionRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSelectionRects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasSelection()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskROI:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskBuffer:[B

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskROI:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;Z)V

    :cond_0
    return-void
.end method

.method public onSelectionEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z

    return-void
.end method

.method public onSelectionExit()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineAnim:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onSelectionStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z

    return-void
.end method

.method public setData(Ljava/util/ArrayList;Landroid/graphics/RectF;IIIZ)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/RectF;",
            "IIIZ)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    div-int/lit8 v10, v18, 0x2

    if-nez p5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLassoBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    mul-int/lit8 v18, v10, 0x2

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v21

    mul-float v18, v18, v21

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v18, v18, v21

    add-float v20, v20, v18

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v22

    mul-float v18, v18, v22

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v18, v18, v22

    add-float v18, v18, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLassoBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_6

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    move-object/from16 v18, v0

    aget v16, v18, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x1

    aget v4, v18, v19

    move/from16 v6, v16

    sub-int v15, v4, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v18, v0

    aget v13, v18, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v6, 0x1

    aget v14, v18, v19

    move v11, v13

    move v12, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v12, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0xa

    if-lez v18, :cond_7

    const/4 v5, 0x0

    add-int/lit8 v6, v16, 0x2

    move v7, v6

    :cond_3
    :goto_3
    if-ge v7, v4, :cond_4

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v18, v0

    add-int/lit8 v6, v7, 0x1

    aget v11, v18, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v18, v0

    add-int/lit8 v7, v6, 0x1

    aget v12, v18, v6

    sub-float v18, v12, v14

    sub-float v19, v12, v14

    mul-float v18, v18, v19

    sub-float v19, v11, v13

    sub-float v20, v11, v13

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v19, v0

    rem-int/lit8 v19, v19, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0xa

    mul-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0xa

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-float v20, v12, v14

    sub-float v21, v12, v14

    mul-float v20, v20, v21

    sub-float v21, v11, v13

    sub-float v22, v11, v13

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v9, v0

    sub-float v18, v11, v13

    mul-float v18, v18, v9

    add-float v11, v13, v18

    sub-float v18, v12, v14

    mul-float v18, v18, v9

    add-float v12, v14, v18

    move v13, v11

    move v14, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v12, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_4
    :goto_4
    if-ge v7, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v18, v0

    add-int/lit8 v6, v7, 0x1

    aget v11, v18, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v18, v0

    add-int/lit8 v7, v6, 0x1

    aget v12, v18, v6

    sub-float v18, v12, v14

    sub-float v19, v12, v14

    mul-float v18, v18, v19

    sub-float v19, v11, v13

    sub-float v20, v11, v13

    mul-float v19, v19, v20

    add-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_4

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    sub-float v20, v12, v14

    sub-float v21, v12, v14

    mul-float v20, v20, v21

    sub-float v21, v11, v13

    sub-float v22, v11, v13

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v9, v0

    sub-float v18, v11, v13

    mul-float v18, v18, v9

    add-float v11, v13, v18

    sub-float v18, v12, v14

    mul-float v18, v18, v9

    add-float v12, v14, v18

    move v13, v11

    move v14, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v12, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    move-object/from16 v19, v0

    add-int/lit8 v20, v4, -0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_7
    move v7, v6

    goto/16 :goto_4
.end method

.method public setInverse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mInverse:Z

    return-void
.end method

.method public setLineAnim(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineAnim:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setMask([BLandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;Z)V

    return-void
.end method

.method public setMask([BLandroid/graphics/Rect;Z)V
    .locals 12

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskBuffer:[B

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskROI:Landroid/graphics/Rect;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskBuffer:[B

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskROI:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->contourTrace([BII[I[FLandroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaks:[I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutlineBreaksLength:I

    add-int/lit8 v1, v1, -0x1

    aget v10, v0, v1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    aget v2, v2, v9

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    iget v1, v11, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mMaskOutline:[F

    aget v2, v2, v9

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    const v0, 0x10008

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    const/4 v8, 0x0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget-byte v6, p1, v0

    if-nez v6, :cond_3

    const/4 v8, 0x1

    :cond_1
    if-eqz v8, :cond_4

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->updateLines()V

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mBreakPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectionMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->clear()V

    return-void
.end method

.method public setSelectionRect(FFFFZ)V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2e

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v5, v3, v1

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    int-to-float v5, v2

    add-float v3, v1, v5

    :cond_0
    sub-float v5, v0, v4

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    int-to-float v5, v2

    add-float v0, v4, v5

    :cond_1
    monitor-enter p0

    if-eqz p5, :cond_2

    :try_start_0
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRects:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public updateMaskFromImageData()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;Z)V

    return-void
.end method
