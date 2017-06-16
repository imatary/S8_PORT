.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;
.super Ljava/lang/Object;
.source "GLAdjustmentCrop.java"


# static fields
.field private static final STRAIGHTEN_ANIM_DURATION:I = 0x12c

.field public static final STRAIGHTEN_HIDING:I = 0x2

.field public static final STRAIGHTEN_HIDING_AFTER_ANIM:I = 0x3

.field public static final STRAIGHTEN_IDLE:I = 0x0

.field private static final STRAIGHTEN_LINE_COUNT:I = 0x4

.field public static final STRAIGHTEN_SHOWING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLAdjustmentCrop"

.field private static mBoundryColor:[F = null

.field private static final mBoundryShadowColor:[F

.field private static final mInsideRectColor:[F

.field private static mLineColor:[F = null

.field private static final mShadowAlpha:F = 0.2f

.field private static mShadowColor:[F = null

.field private static mShadowColorStraightening:[F = null

.field private static final mStraightenLineAlpha:F = 0.6f


# instance fields
.field private HANDLE_MARGIN:F

.field private LABEL_HEIGHT:I

.field private LABEL_WIDTH:I

.field private final RATIOS:[F

.field private final lableDefaultHeight:I

.field private final lableDefaultWidth:I

.field private mAnimAlpha:F

.field private mAnimStartTime:J

.field private mAutoRect:Landroid/graphics/RectF;

.field private mAutoRectVertices:[F

.field private mBottom:F

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mHandleTextures:[I

.field private mHandleVertices:[F

.field private mIconBuffer:Ljava/nio/FloatBuffer;

.field private mIconBufferId:I

.field private mIconBufferUpdated:Z

.field private mIconSize:F

.field private mInnerLineAlpha:F

.field private mIsSpecificRatio:Z

.field private mLabelIndex:I

.field private mLabelTextures:[I

.field private mLabelVertexBuffer:Ljava/nio/FloatBuffer;

.field private mLabelVertices:[F

.field private mLeft:F

.field private mLineAlpha:F

.field private mLoaded:Z

.field private mMode:I

.field private mPaint:Landroid/text/TextPaint;

.field private mRight:F

.field private mStraightenBuffer:Ljava/nio/FloatBuffer;

.field private mStraightenBufferUpdated:Z

.field private mStraightenLinesId:I

.field private mStraightenState:I

.field private mStraightenVertices:[F

.field private mTextSize:I

.field private mTop:F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferId:I

.field private mVertexBufferUpdated:Z

.field private mVertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryShadowColor:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mInsideRectColor:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColorStraightening:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f7afafb
        0x3f7afafb
        0x3f7afafb
    .end array-data

    :array_1
    .array-data 4
        0x3f7afafb
        0x3f7afafb
        0x3f7afafb
    .end array-data

    :array_2
    .array-data 4
        0x3f7afafb
        0x3f7afafb
        0x3f7afafb
    .end array-data

    :array_3
    .array-data 4
        0x3e149495
        0x3e149495
        0x3e149495
    .end array-data

    :array_4
    .array-data 4
        0x3f66e6e7
        0x3f28a8a9
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->RATIOS:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAutoRectVertices:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAutoRect:Landroid/graphics/RectF;

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v0, 0x30

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    const/16 v0, 0x40

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleVertices:[F

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLoaded:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenLinesId:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBufferUpdated:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferUpdated:Z

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimStartTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineAlpha:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mInnerLineAlpha:F

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mTextSize:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelIndex:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->lableDefaultHeight:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->lableDefaultWidth:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_WIDTH:I

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIsSpecificRatio:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->updateHandlerSize()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3faaaaab
        0x3f100000    # 0.5625f
        0x3fe38e39
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v3
.end method

.method private getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v1, 0x0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4, v11}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    neg-float v8, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v12, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    add-float/2addr v2, v8

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v10, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_WIDTH:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v2, -0x195800

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_WIDTH:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    int-to-float v4, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    const v2, 0x4c252525    # 4.3291796E7f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_WIDTH:I

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    sub-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v8

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    const v2, -0x50506

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_WIDTH:I

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    sub-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v8

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v9
.end method

.method private load()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0xde1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v4, "PEDIT_GLAdjustmentCrop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " time BEFORE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c0

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    aput v5, v4, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    aget v4, v4, v8

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "#ffe6a800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0x8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c1

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    aput v5, v4, v10

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    aget v4, v4, v10

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "#ffe6a800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0x9

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c2

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    aput v5, v4, v11

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    aget v4, v4, v11

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "#ffe6a800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xa

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c3

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    aput v5, v4, v12

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    aget v4, v4, v12

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "#ffe6a800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xb

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/4 v5, 0x4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "#ffe6a800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xc

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/4 v5, 0x5

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "#ffe6a800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xd

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c6

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/4 v5, 0x6

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "#ffe6a800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xe

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c7

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/4 v5, 0x7

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v4, "#ffe6a800"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->changeColorBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xf

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v3, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const-string v4, "PEDIT_GLAdjustmentCrop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " time AFTER"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "1:1"

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    aput v5, v4, v8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    aget v4, v4, v8

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string v4, "3:4"

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    aput v5, v4, v10

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    aget v4, v4, v10

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string v4, "4:3"

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    aput v5, v4, v11

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    aget v4, v4, v11

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string v4, "9:16"

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v5

    aput v5, v4, v12

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    aget v4, v4, v12

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string v4, "16:9"

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    const/4 v5, 0x4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-static {v9, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v8, v2, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private updateLabelVertices(FFFF)V
    .locals 14

    sub-float v9, p3, p1

    sub-float v0, p4, p2

    iget-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIsSpecificRatio:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v11, 0x0

    const v12, 0x3f66e6e7

    aput v12, v10, v11

    sget-object v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v11, 0x1

    const v12, 0x3f28a8a9

    aput v12, v10, v11

    sget-object v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v9, v10

    add-float/2addr v10, p1

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_WIDTH:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float v6, v10, v11

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v8, p2, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_WIDTH:I

    int-to-float v10, v10

    add-float v7, v6, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    int-to-float v10, v10

    add-float v5, v8, v10

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v6, v8, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v7, v5, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v4

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v2, v1, 0x1

    const/4 v11, 0x0

    aget v11, v3, v11

    aput v11, v10, v1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v1, v2, 0x1

    const/4 v11, 0x1

    aget v11, v4, v11

    aput v11, v10, v2

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v2, v1, 0x1

    const/4 v11, 0x0

    aget v11, v4, v11

    aput v11, v10, v1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v1, v2, 0x1

    const/4 v11, 0x1

    aget v11, v3, v11

    aput v11, v10, v2

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v2, v1, 0x1

    const/4 v11, 0x0

    aget v11, v3, v11

    aput v11, v10, v1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v1, v2, 0x1

    const/4 v11, 0x1

    aget v11, v3, v11

    aput v11, v10, v2

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v2, v1, 0x1

    const/4 v11, 0x0

    aget v11, v3, v11

    aput v11, v10, v1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v1, v2, 0x1

    const/4 v11, 0x1

    aget v11, v4, v11

    aput v11, v10, v2

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v2, v1, 0x1

    const/4 v11, 0x0

    aget v11, v4, v11

    aput v11, v10, v1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v1, v2, 0x1

    const/4 v11, 0x1

    aget v11, v4, v11

    aput v11, v10, v2

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v2, v1, 0x1

    const/4 v11, 0x0

    aget v11, v4, v11

    aput v11, v10, v1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    add-int/lit8 v1, v2, 0x1

    const/4 v11, 0x1

    aget v11, v3, v11

    aput v11, v10, v2

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertices:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void

    :cond_0
    sget-object v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    sget-object v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v11, 0x1

    sget-object v12, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    sget-object v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v11, 0x2

    sget-object v12, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    goto :goto_0
.end method

.method private updateVertexBuffer()V
    .locals 14

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLeft:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mTop:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v12

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mRight:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBottom:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v13

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x1

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v12, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x1

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v12, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x1

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x1

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x1

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x1

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x1

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x1

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v12, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v12, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x0

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x0

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aget v3, v13, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    aget v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v11

    const/4 v1, 0x0

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLeft:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mTop:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleVertices:[F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    sub-float v2, v8, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    sub-float v3, v9, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip([FIFFFFII)V

    add-int/lit8 v1, v1, 0x10

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mRight:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mTop:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleVertices:[F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    sub-float v2, v8, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    sub-float v3, v9, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip([FIFFFFII)V

    add-int/lit8 v1, v1, 0x10

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mRight:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBottom:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleVertices:[F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    sub-float v2, v8, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    sub-float v3, v9, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip([FIFFFFII)V

    add-int/lit8 v1, v1, 0x10

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLeft:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBottom:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleVertices:[F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    sub-float v2, v8, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    sub-float v3, v9, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip([FIFFFFII)V

    add-int/lit8 v1, v1, 0x10

    const/4 v1, 0x0

    const/4 v10, 0x0

    move v11, v1

    :goto_0
    const/4 v0, 0x4

    if-ge v10, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v1, v11, 0x1

    rsub-int/lit8 v2, v10, 0x4

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v3, v12, v3

    mul-float/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    int-to-float v3, v3

    const/4 v4, 0x0

    aget v4, v13, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v1, v11, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v3, v1, -0x3

    aget v2, v2, v3

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v11, v1, 0x1

    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x0

    aget v2, v12, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v11, v1, 0x1

    rsub-int/lit8 v2, v10, 0x4

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v12, v3

    mul-float/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v1, v11, 0x1

    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v0, v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v11, v1, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    add-int/lit8 v3, v11, -0x3

    aget v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleVertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBufferUpdated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferUpdated:Z

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLeft:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mTop:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mRight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBottom:F

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->updateLabelVertices(FFFF)V

    return-void
.end method


# virtual methods
.method public doAlphaHideAnim()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimStartTime:J

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public draw()V
    .locals 28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_1f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    const/16 v7, 0xb

    if-eq v6, v7, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLoaded:Z

    if-nez v6, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->load()V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLoaded:Z

    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v25, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-static {v6, v0, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v6, 0x0

    aget v6, v25, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VBO Created, id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_1
    const v6, 0x8892

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    if-eqz v6, :cond_2

    const-string v6, "passing vertex data down..."

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    const v6, 0x8892

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v9, 0x88e4

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    :cond_2
    const v6, 0x8892

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080511

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget v6, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v6, "u_Matrix"

    invoke-virtual {v13, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v21

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v8

    const/4 v9, 0x0

    move/from16 v0, v21

    invoke-static {v0, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v6, "a_Position"

    invoke-virtual {v13, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const-string v6, "u_Color"

    invoke-virtual {v13, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v14

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineAlpha:F

    invoke-static {v14, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimStartTime:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_1a

    :cond_6
    const v6, 0x8892

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    const/16 v7, 0xa

    if-eq v6, v7, :cond_7

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x40

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v6, v6, v20

    invoke-static {v6}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    const/4 v8, 0x1

    aget v8, v6, v8

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    const/4 v9, 0x2

    aget v9, v6, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v10

    if-gez v6, :cond_d

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    sub-float/2addr v6, v10

    :goto_1
    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v10

    :goto_2
    invoke-static {v14, v7, v8, v9, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v8, 0x1

    aget v8, v6, v8

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v9, 0x2

    aget v9, v6, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v10

    if-gez v6, :cond_f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    sub-float/2addr v6, v10

    :goto_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineAlpha:F

    mul-float/2addr v6, v10

    :goto_4
    invoke-static {v14, v7, v8, v9, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_7
    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v6, v6, v20

    invoke-static {v6}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryShadowColor:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryShadowColor:[F

    const/4 v8, 0x1

    aget v8, v6, v8

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryShadowColor:[F

    const/4 v9, 0x2

    aget v9, v6, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v10

    if-gez v6, :cond_11

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    sub-float/2addr v6, v10

    :goto_5
    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v10

    :goto_6
    invoke-static {v14, v7, v8, v9, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v8, 0x1

    aget v8, v6, v8

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    const/4 v9, 0x2

    aget v9, v6, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v10

    if-gez v6, :cond_13

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    sub-float/2addr v6, v10

    :goto_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineAlpha:F

    mul-float/2addr v6, v10

    :goto_8
    invoke-static {v14, v7, v8, v9, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const v6, 0x8892

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v25, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-static {v6, v0, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v6, 0x0

    aget v6, v25, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferId:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferUpdated:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VBO Created, mIconBufferId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_8
    const v6, 0x8892

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferId:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferUpdated:Z

    if-eqz v6, :cond_9

    const-string v6, "passing icon vertex data down..."

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    const v6, 0x8892

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleVertices:[F

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBuffer:Ljava/nio/FloatBuffer;

    const v9, 0x88e4

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferUpdated:Z

    :cond_9
    const-string v6, "a_Position"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v6, "u_Matrix"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v21

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v8

    const/4 v9, 0x0

    move/from16 v0, v21

    invoke-static {v0, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v6, "a_TextureCoordinate"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v6, 0x8892

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v6, "u_Sampler"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v23

    const/4 v6, 0x0

    move/from16 v0, v23

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v7, "alpha"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_15

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    :goto_9
    invoke-static {v12, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_a
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v8

    const/4 v9, 0x0

    move/from16 v0, v21

    invoke-static {v0, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIsSpecificRatio:Z

    if-eqz v6, :cond_17

    const/16 v22, 0x8

    :goto_b
    const/4 v15, 0x0

    :goto_c
    const/4 v6, 0x4

    if-ge v15, v6, :cond_18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    add-int/lit8 v7, v15, 0x0

    if-eq v6, v7, :cond_a

    const/16 v6, 0xde1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    mul-int/lit8 v8, v15, 0x2

    add-int v8, v8, v22

    aget v7, v7, v8

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v6, 0x5

    mul-int/lit8 v7, v15, 0x4

    const/4 v8, 0x4

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_e
    const v6, 0x3e4ccccd    # 0.2f

    goto/16 :goto_2

    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mInnerLineAlpha:F

    goto/16 :goto_4

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_12
    const v6, 0x3e4ccccd    # 0.2f

    goto/16 :goto_6

    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineAlpha:F

    goto/16 :goto_8

    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_16
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v12, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/16 :goto_a

    :cond_17
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    if-ltz v6, :cond_19

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    const/4 v7, 0x3

    if-gt v6, v7, :cond_19

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    add-int v16, v6, v22

    const/4 v6, -0x1

    move/from16 v0, v16

    if-le v0, v6, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    array-length v6, v6

    move/from16 v0, v16

    if-ge v0, v6, :cond_19

    const/16 v6, 0xde1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mHandleTextures:[I

    aget v7, v7, v16

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    add-int/lit8 v7, v7, 0x0

    mul-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_19
    const v6, 0x8892

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIsSpecificRatio:Z

    if-eqz v6, :cond_1a

    const v6, 0x8892

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v6, "u_Matrix"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v8

    const/4 v9, 0x0

    move/from16 v0, v18

    invoke-static {v0, v6, v7, v8, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v6, "a_Position"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v6, "a_TextureCoordinate"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v6, "u_Sampler"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v19

    const/4 v6, 0x0

    move/from16 v0, v19

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v7, "alpha"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v17

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1a

    const/16 v6, 0xde1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelTextures:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelIndex:I

    aget v7, v7, v8

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const v6, 0x8892

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_1f

    :cond_1b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_1c

    iget v6, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v6, "u_Color"

    invoke-virtual {v13, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v14

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v8, 0x1

    aget v8, v6, v8

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v9, 0x2

    aget v9, v6, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v10

    if-lez v6, :cond_20

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    mul-float/2addr v6, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v6, v10

    :goto_d
    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v10

    invoke-static {v14, v7, v8, v9, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    :cond_1c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenLinesId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1d

    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v25, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-static {v6, v0, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v6, 0x0

    aget v6, v25, v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenLinesId:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBufferUpdated:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VBO Created, id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenLinesId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_1d
    const v6, 0x8892

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenLinesId:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBufferUpdated:Z

    if-eqz v6, :cond_1e

    const-string v6, "passing vertex data down..."

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    const v6, 0x8892

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenVertices:[F

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBuffer:Ljava/nio/FloatBuffer;

    const v9, 0x88e4

    invoke-static {v6, v7, v8, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBufferUpdated:Z

    :cond_1e
    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, v2

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v6, 0x8892

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1f

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v6, v6, v20

    invoke-static {v6}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColorStraightening:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColorStraightening:[F

    const/4 v8, 0x1

    aget v8, v6, v8

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColorStraightening:[F

    const/4 v9, 0x2

    aget v9, v6, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v10

    if-lez v6, :cond_21

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    mul-float/2addr v6, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v6, v10

    :goto_e
    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v10

    :goto_f
    invoke-static {v14, v7, v8, v9, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v8, 0x1

    aget v8, v6, v8

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    const/4 v9, 0x2

    aget v9, v6, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v10

    if-lez v6, :cond_23

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    mul-float/2addr v6, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v6, v10

    :goto_10
    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v10

    :goto_11
    invoke-static {v14, v7, v8, v9, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_1f
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adjustment Crop draw: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    return-void

    :cond_20
    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_21
    const/4 v6, 0x0

    goto :goto_e

    :cond_22
    const v6, 0x3e4ccccd    # 0.2f

    goto :goto_f

    :cond_23
    const/4 v6, 0x0

    goto :goto_10

    :cond_24
    const v6, 0x3f19999a    # 0.6f

    goto :goto_11
.end method

.method public drawPerspectiveLines()V
    .locals 15

    const/16 v14, 0x18

    const v13, 0x8892

    const/4 v1, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    new-array v10, v12, [I

    invoke-static {v12, v10, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v2, v10, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    iput-boolean v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    :cond_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertices:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v13, v2, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    :cond_1
    iget v2, v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "u_Matrix"

    invoke-virtual {v6, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v2

    invoke-static {v9, v12, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v2, "a_Position"

    invoke-virtual {v6, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v2, "u_Color"

    invoke-virtual {v6, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080511

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v8

    invoke-static {v2}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    aget v2, v2, v3

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    aget v4, v4, v12

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    aget v5, v5, v1

    const v11, 0x3e4ccccd    # 0.2f

    invoke-static {v7, v2, v4, v5, v11}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    invoke-static {v12, v3, v14}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glLineWidth(F)V

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    aget v2, v2, v3

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    aget v4, v4, v12

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    aget v1, v5, v1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mInnerLineAlpha:F

    invoke-static {v7, v2, v4, v1, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    invoke-static {v12, v3, v14}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public getStraightenAlpha()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStraightenState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    return v0
.end method

.method public onOrientationChange()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLoaded:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->updateHandlerSize()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLoaded:Z

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenLinesId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferId:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenBufferUpdated:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mVertexBufferUpdated:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconBufferUpdated:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDimensions(FFFFZI)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLeft:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mTop:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mRight:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBottom:F

    iput-boolean p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIsSpecificRatio:Z

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLabelIndex:I

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->updateVertexBuffer()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLineColor(IIII)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    int-to-float v1, p1

    div-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    int-to-float v1, p2

    div-float/2addr v1, v2

    aput v1, v0, v4

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineColor:[F

    int-to-float v1, p3

    div-float/2addr v1, v2

    aput v1, v0, v5

    int-to-float v0, p4

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mInnerLineAlpha:F

    int-to-float v0, p4

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mLineAlpha:F

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    int-to-float v1, p1

    div-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    int-to-float v1, p2

    div-float/2addr v1, v2

    aput v1, v0, v4

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mBoundryColor:[F

    int-to-float v1, p3

    div-float/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method public setMode(I)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    if-ne v0, v5, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eq v0, v3, :cond_2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimStartTime:J

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimAlpha:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mMode:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mStraightenState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mAnimStartTime:J

    goto :goto_0
.end method

.method public setShadowColor(III)V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColor:[F

    const/4 v1, 0x2

    int-to-float v2, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setShadowColorStraightening(III)V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColorStraightening:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColorStraightening:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mShadowColorStraightening:[F

    const/4 v1, 0x2

    int-to-float v2, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public updateHandlerSize()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mIconSize:F

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->HANDLE_MARGIN:F

    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mTextSize:I

    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    const-string v2, "sans-serif-regular"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_WIDTH:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->LABEL_HEIGHT:I

    return-void
.end method
