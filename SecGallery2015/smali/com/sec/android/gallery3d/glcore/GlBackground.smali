.class public Lcom/sec/android/gallery3d/glcore/GlBackground;
.super Ljava/lang/Object;
.source "GlBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;
    }
.end annotation


# static fields
.field private static final BLUE_MASK:I = 0xff

.field private static final DEF_DELTA:F = 0.01f

.field private static final GREEN_MASK:I = 0xff00

.field private static final GREEN_MASK_SHIFT:I = 0x8

.field private static final KERNEL_NORM:[I

.field private static final KERNEL_SIZE:I = 0x9

.field private static final MAX_COLOR_VALUE:I = 0xff

.field private static final NUM_COLORS:I = 0x100

.field private static final RADIUS:I = 0x4

.field private static final RED_MASK:I = 0xff0000

.field private static final RED_MASK_SHIFT:I = 0x10

.field private static final START_FADE_X:I = 0x60

.field private static final TAG:Ljava/lang/String; = "GlBackground"

.field private static final THUMBNAIL_MAX_X:I = 0x80


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mConvRatio:F

.field private mCurrent:I

.field private mDelta:F

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mHeight:I

.field private mNeedTransition:Z

.field private mRsrcID:I

.field private final mTextureActive:[I

.field private final mTextureID:[I

.field private final mTransitor:Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;

.field private mUseClearColor:Z

.field private mUseTransitioner:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x900

    new-array v1, v1, [I

    sput-object v1, Lcom/sec/android/gallery3d/glcore/GlBackground;->KERNEL_NORM:[I

    const/16 v0, 0x8ff

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/glcore/GlBackground;->KERNEL_NORM:[I

    div-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mCurrent:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureID:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureActive:[I

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mNeedTransition:Z

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mRsrcID:I

    iput-object v5, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mUseClearColor:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mUseTransitioner:Z

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mConvRatio:F

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mDelta:F

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iput-object p3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureID:[I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGLUtilInstance()Lcom/sec/android/gallery3d/glcore/TUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/TUtils;->getBase(I)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureID:[I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGLUtilInstance()Lcom/sec/android/gallery3d/glcore/TUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/TUtils;->getBase(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureID:[I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGLUtilInstance()Lcom/sec/android/gallery3d/glcore/TUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->getBase(I)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureActive:[I

    const v1, 0x84c0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureActive:[I

    const v1, 0x84c1

    aput v1, v0, v3

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;-><init>(Lcom/sec/android/gallery3d/glcore/GlBackground;Lcom/sec/android/gallery3d/glcore/GlBackground$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTransitor:Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlBackground;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mNeedTransition:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/glcore/GlBackground;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mNeedTransition:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlBackground;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mRsrcID:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/glcore/GlBackground;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mRsrcID:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glcore/GlBackground;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/glcore/GlBackground;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/glcore/GlBackground;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mCurrent:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/glcore/GlBackground;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mCurrent:I

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/glcore/GlBackground;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mDelta:F

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/glcore/GlBackground;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->setResourceImage(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/glcore/GlBackground;Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlBackground;->setBitmapTexture(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/glcore/GlBackground;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method private bindMixed(F)V
    .locals 11

    const v10, 0x47057600    # 34166.0f

    const v9, 0x47057500    # 34165.0f

    const v8, 0x44408000    # 770.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x2300

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x84c1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v3, 0xde1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v3, 0xde1

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureID:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/16 v2, 0x2200

    const v3, 0x47057000    # 34160.0f

    invoke-interface {v1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v2, 0x8571

    invoke-interface {v1, v6, v2, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v2, 0x8572

    invoke-interface {v1, v6, v2, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/4 v2, 0x4

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput v7, v0, v2

    const/4 v2, 0x1

    aput v7, v0, v2

    const/4 v2, 0x2

    aput v7, v0, v2

    const/4 v2, 0x3

    aput p1, v0, v2

    const/16 v2, 0x2201

    const/4 v3, 0x0

    invoke-interface {v1, v6, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    const v2, 0x8582

    invoke-interface {v1, v6, v2, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v2, 0x8592

    invoke-interface {v1, v6, v2, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v2, 0x858a

    invoke-interface {v1, v6, v2, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v2, 0x859a

    invoke-interface {v1, v6, v2, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    return-void
.end method

.method private static boxBlurFilter([I[IIII)V
    .locals 19

    const/4 v7, 0x0

    add-int/lit8 v8, p2, -0x1

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x4

    :goto_1
    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v6, v0, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0, v8}, Lcom/sec/android/gallery3d/glcore/GlBackground;->clamp(III)I

    move-result v17

    add-int v17, v17, v7

    aget v3, p0, v17

    const/high16 v17, 0xff0000

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x10

    add-int v14, v14, v17

    const v17, 0xff00

    and-int v17, v17, v3

    shr-int/lit8 v17, v17, 0x8

    add-int v5, v5, v17

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    add-int v4, v4, v17

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    const/16 v2, 0xff

    :goto_2
    move/from16 v11, v16

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, p2

    if-eq v15, v0, :cond_2

    shl-int/lit8 v17, v2, 0x18

    sget-object v18, Lcom/sec/android/gallery3d/glcore/GlBackground;->KERNEL_NORM:[I

    aget v18, v18, v14

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    sget-object v18, Lcom/sec/android/gallery3d/glcore/GlBackground;->KERNEL_NORM:[I

    aget v18, v18, v5

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    sget-object v18, Lcom/sec/android/gallery3d/glcore/GlBackground;->KERNEL_NORM:[I

    aget v18, v18, v4

    or-int v17, v17, v18

    aput v17, p1, v11

    add-int/lit8 v17, v15, -0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/sec/android/gallery3d/glcore/GlBackground;->clamp(III)I

    move-result v13

    add-int/lit8 v17, v15, 0x4

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/sec/android/gallery3d/glcore/GlBackground;->clamp(III)I

    move-result v10

    add-int v17, v7, v13

    aget v12, p0, v17

    add-int v17, v7, v10

    aget v9, p0, v17

    const/high16 v17, 0xff0000

    and-int v17, v17, v9

    const/high16 v18, 0xff0000

    and-int v18, v18, v12

    sub-int v17, v17, v18

    shr-int/lit8 v17, v17, 0x10

    add-int v14, v14, v17

    const v17, 0xff00

    and-int v17, v17, v9

    const v18, 0xff00

    and-int v18, v18, v12

    sub-int v17, v17, v18

    shr-int/lit8 v17, v17, 0x8

    add-int v5, v5, v17

    and-int/lit16 v0, v9, 0xff

    move/from16 v17, v0

    and-int/lit16 v0, v12, 0xff

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int v4, v4, v17

    add-int v11, v11, p3

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_1
    sub-int v17, p3, v16

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    sub-int v18, p3, p4

    div-int v2, v17, v18

    goto :goto_2

    :cond_2
    add-int v7, v7, p2

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private drawInter()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v6, 0xde1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x84c0

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mDelta:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mConvRatio:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mConvRatio:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureID:[I

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mCurrent:I

    aget v3, v3, v4

    invoke-interface {v2, v6, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v3, 0x1700

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2, v7, v7, v5}, Ljavax/microedition/khronos/opengles/GL11;->glScalef(FFF)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v3, 0x1701

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x6

    const/4 v4, 0x4

    invoke-interface {v2, v3, v8, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x84c0

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureID:[I

    aget v3, v3, v8

    invoke-interface {v2, v6, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mConvRatio:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mDelta:F

    add-float v1, v2, v3

    cmpl-float v2, v1, v5

    if-lez v2, :cond_3

    iput v5, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mConvRatio:F

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mDelta:F

    :goto_1
    iget v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mConvRatio:F

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->bindMixed(F)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mConvRatio:F

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mDelta:F

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mConvRatio:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestLayout()V

    goto :goto_1
.end method

.method private load(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    const/16 v1, 0x80

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mHeight:I

    move/from16 v0, v16

    int-to-float v1, v0

    int-to-float v3, v10

    div-float v12, v1, v3

    int-to-float v1, v15

    int-to-float v3, v9

    div-float v13, v1, v3

    cmpg-float v1, v12, v13

    if-gez v1, :cond_0

    move/from16 v4, v16

    int-to-float v1, v9

    mul-float/2addr v1, v12

    float-to-int v8, v1

    const/4 v5, 0x0

    sub-int v1, v15, v8

    div-int/lit8 v6, v1, 0x2

    :goto_0
    mul-int v14, v4, v8

    new-array v2, v14, [I

    new-array v0, v14, [I

    move-object/from16 v17, v0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, v17

    invoke-static {v2, v0, v4, v8, v4}, Lcom/sec/android/gallery3d/glcore/GlBackground;->boxBlurFilter([I[IIII)V

    const/16 v1, 0x60

    move-object/from16 v0, v17

    invoke-static {v0, v2, v8, v4, v1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->boxBlurFilter([I[IIII)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v8, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_0
    int-to-float v1, v9

    mul-float/2addr v1, v13

    float-to-int v4, v1

    move v8, v15

    sub-int v1, v16, v4

    div-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move v4, p1

    move v0, p1

    const/4 v1, 0x0

    if-le v3, v2, :cond_2

    if-le v3, p1, :cond_0

    const/4 v1, 0x1

    mul-int v5, p1, v2

    div-int v0, v5, v3

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const/4 v5, 0x1

    invoke-static {p0, v4, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    if-le v2, p1, :cond_0

    const/4 v1, 0x1

    mul-int v5, p1, v3

    div-int v4, v5, v2

    goto :goto_0
.end method

.method private setBitmapTexture(Landroid/graphics/Bitmap;II)V
    .locals 8

    const/4 v7, 0x0

    const v5, 0x47012f00    # 33071.0f

    const/16 v6, 0xde1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureID:[I

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mCurrent:I

    aget v2, v3, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTextureActive:[I

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mCurrent:I

    aget v1, v3, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mWidth:I

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mHeight:I

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mUseTransitioner:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlBackground;->load(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v3, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    if-eqz v0, :cond_0

    invoke-static {v6, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2802

    invoke-interface {v3, v6, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2803

    invoke-interface {v3, v6, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2801

    const/high16 v5, 0x46180000    # 9728.0f

    invoke-interface {v3, v6, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2800

    const v5, 0x46180400    # 9729.0f

    invoke-interface {v3, v6, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mCurrent:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v4, 0x84c0

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    :cond_1
    return-void

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private setResourceImage(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x100

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlBackground;->setBitmapTexture(Landroid/graphics/Bitmap;II)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mRsrcID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTransitor:Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;->destroy()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mTransitor:Lcom/sec/android/gallery3d/glcore/GlBackground$Transitioner;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeOnGLIdleListener(Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    return-void
.end method

.method public draw()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mUseClearColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorRed:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorGreen:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorBlue:F

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlRootView;->mBgColorAlpha:F

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlBackground;->drawInter()V

    goto :goto_0
.end method

.method public enableBlending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mUseTransitioner:Z

    return-void
.end method

.method public setClearByColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlBackground;->mUseClearColor:Z

    return-void
.end method
