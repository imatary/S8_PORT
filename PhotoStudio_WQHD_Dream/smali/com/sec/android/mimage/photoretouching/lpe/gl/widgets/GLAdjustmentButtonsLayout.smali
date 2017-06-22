.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;
.source "GLAdjustmentButtonsLayout.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;,
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;
    }
.end annotation


# static fields
.field private static final CROP_BUTTONS:[I

.field private static final ROTATE_BUTTONS:[I


# instance fields
.field private mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

.field private mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;

.field private mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

.field private mRotateLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;

.field private mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->ROTATE_BUTTONS:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I

    return-void

    :array_0
    .array-data 4
        0x20001
        0x20002
        0x20003
        0x2000b
    .end array-data

    :array_1
    .array-data 4
        0x20004
        0x20006
        0x20005
        0x2000c
        0x20007
        0x20008
        0x2000d
        0x20009
        0x2000a
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;I)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->initChildren()V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    return-object p1
.end method

.method static synthetic access$300()[I
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->CROP_BUTTONS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    return-object p1
.end method

.method static synthetic access$600()[I
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->ROTATE_BUTTONS:[I

    return-object v0
.end method


# virtual methods
.method public initChildren()V
    .locals 3

    const/4 v2, -0x1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setType(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    const v1, 0x7f0702e6

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$AdjustmentLayoutListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setListener(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget$ProgressChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->initSizes()V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->addView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->initChildren()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->initChildren()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->resetSeek()V

    return-void
.end method

.method public initSizes()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getOrientation()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v20

    const/4 v12, 0x0

    const/4 v3, 0x2

    if-ne v15, v3, :cond_1

    const/4 v13, 0x0

    sub-int v16, v21, v12

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    float-to-int v6, v3

    add-int v3, v18, v17

    add-int v7, v3, v10

    sget-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v3, :cond_0

    add-int/lit8 v3, v16, 0x0

    sub-int/2addr v3, v6

    div-int/lit8 v4, v3, 0x2

    sub-int v3, v20, v9

    sub-int v5, v3, v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->setSize(IIIIZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;

    sub-int v4, v6, v19

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->getHeight()F

    move-result v5

    move/from16 v0, v18

    int-to-float v8, v0

    sub-float/2addr v5, v8

    float-to-int v5, v5

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLRotateLayout;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    sub-int v4, v6, v11

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->getHeight()F

    move-result v5

    move/from16 v0, v18

    int-to-float v8, v0

    sub-float/2addr v5, v8

    move/from16 v0, v17

    int-to-float v8, v0

    sub-float/2addr v5, v8

    int-to-float v8, v10

    sub-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5, v11, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->setSize(IIII)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sget-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->getLeft()F

    move-result v4

    sub-int v5, v6, v11

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    sub-int v5, v20, v9

    sub-int/2addr v5, v7

    div-int/lit8 v8, v10, 0x2

    add-int/2addr v5, v8

    div-int/lit8 v8, v14, 0x2

    sub-int/2addr v5, v8

    int-to-float v5, v5

    int-to-float v8, v11

    invoke-virtual {v3, v4, v5, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setDimensions(FFF)V

    :goto_1
    return-void

    :cond_1
    const/4 v13, 0x0

    move/from16 v16, v21

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    sub-int v4, v21, v23

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-int v5, v20, v22

    sub-int/2addr v5, v14

    int-to-float v5, v5

    move/from16 v0, v23

    int-to-float v8, v0

    invoke-virtual {v3, v4, v5, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setDimensions(FFF)V

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->initSizes()V

    return-void
.end method

.method public onStateChange(II)V
    .locals 13

    const v10, 0x2000a

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    const/4 v9, 0x0

    const/4 v8, 0x1

    and-int/lit16 v1, p2, -0x100

    const/high16 v4, 0x20000

    if-ne v1, v4, :cond_3

    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mRotateButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    const/4 v4, 0x3

    aget-object v4, v1, v4

    const v1, 0x20004

    if-lt p2, v1, :cond_4

    if-gt p2, v10, :cond_4

    move v1, v8

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setSelected(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v1

    if-eqz v1, :cond_5

    const v12, 0x2000d

    :goto_1
    const v1, 0x20004

    if-lt p2, v1, :cond_c

    if-gt p2, v12, :cond_c

    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->getLeft()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->getWidth()F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    add-float v6, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->getHeight()F

    move-result v5

    add-float v7, v4, v5

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->setDuration(I)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->startAnimation()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->setVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->setSelection(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    const v1, 0x20008

    if-eq p2, v1, :cond_6

    const v1, 0x20007

    if-eq p2, v1, :cond_6

    move v1, v8

    :goto_2
    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    const/4 v2, 0x4

    aget-object v2, v1, v2

    const v1, 0x20007

    if-ne p2, v1, :cond_7

    move v1, v8

    :goto_3
    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    const/4 v2, 0x5

    aget-object v2, v1, v2

    const v1, 0x20008

    if-ne p2, v1, :cond_8

    move v1, v8

    :goto_4
    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    const/4 v2, 0x6

    aget-object v2, v1, v2

    if-eq p2, v10, :cond_9

    const v1, 0x20009

    if-eq p2, v1, :cond_9

    move v1, v8

    :goto_5
    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    const/4 v2, 0x7

    aget-object v2, v1, v2

    const v1, 0x20009

    if-ne p2, v1, :cond_a

    move v1, v8

    :goto_6
    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    if-ne p2, v10, :cond_b

    :goto_7
    invoke-virtual {v1, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->setVisible(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    invoke-virtual {v1, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setVisible(Z)V

    :cond_3
    :goto_8
    return-void

    :cond_4
    move v1, v9

    goto/16 :goto_0

    :cond_5
    const v12, 0x2000e

    goto/16 :goto_1

    :cond_6
    move v1, v9

    goto :goto_2

    :cond_7
    move v1, v9

    goto :goto_3

    :cond_8
    move v1, v9

    goto :goto_4

    :cond_9
    move v1, v9

    goto :goto_5

    :cond_a
    move v1, v9

    goto :goto_6

    :cond_b
    move v8, v9

    goto :goto_7

    :cond_c
    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v1, :cond_d

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->getLeft()F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->getWidth()F

    move-result v4

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v4, v6

    add-float v10, v1, v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->getTop()F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->getHeight()F

    move-result v4

    add-float v11, v1, v4

    move-object v4, v0

    move v6, v3

    move v7, v2

    move v8, v3

    move v9, v2

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;-><init>(Landroid/content/Context;FFFFFF)V

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->setDuration(I)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->startAnimation()V

    goto :goto_8

    :cond_d
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    invoke-virtual {v1, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->setVisible(Z)V

    goto :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->isMoving()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_GL_BOTTOM_BUTTONS:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropButtons:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->onPressed(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout$GLCropLayout;->onReleased()V

    goto :goto_0
.end method

.method public resetSeek()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mSeekWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;

    const/high16 v1, 0x42480000    # 50.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSeekWidget;->updateProgress(FZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentButtonsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
