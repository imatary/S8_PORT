.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
.super Landroid/view/View;
.source "SpenColorPickerLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static SPUIT_LAYOUT_HEIGHT:I = 0x0

.field private static SPUIT_LAYOUT_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenColorPickerLayout"

.field private static final mBodyBgPath:Ljava/lang/String; = "spen_color_spuit_42"

.field private static final mCloseBtPath:Ljava/lang/String; = "snote_toolbar_icon_close"

.field private static final mHandlerPath:Ljava/lang/String; = "snote_toolbar_handle"

.field private static final mSpuitPath:Ljava/lang/String; = "snote_toolbar_icon_spuit"


# instance fields
.field private exitButton:Landroid/widget/ImageButton;

.field private final handlerRotate:Landroid/os/Handler;

.field private final mCloseButtonClickListener:Landroid/view/View$OnClickListener;

.field mColorPickerColorImage:Landroid/view/View;

.field mColorPickerCurrentColor:Landroid/widget/ImageView;

.field mColorPickerHandle:Landroid/view/View;

.field mColorPickerdExitBtn:Landroid/view/View;

.field private mCurrentColor:I

.field private final mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

.field private mIsRotated:Z

.field mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mNeedRotateWhenSetPosition:Z

.field private final mOldParentRect:Landroid/graphics/Rect;

.field private final mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

.field private final mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentRelativeLayout:Landroid/widget/RelativeLayout;

.field private final mSdkVersion:I

.field mSpoidSettingListener:Landroid/view/View$OnTouchListener;

.field mSpuitSettings:Landroid/view/View;

.field private mTotalLayout:Landroid/widget/RelativeLayout;

.field private mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field private final mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

.field private final mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

.field private mXDelta:I

.field private mYDelta:I

.field private final runnableRotate:Ljava/lang/Runnable;

.field private xPos:I

.field private yPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mCurrentColor:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mIsRotated:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSdkVersion:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->xPos:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->yPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mNeedRotateWhenSetPosition:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->handlerRotate:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$1;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->runnableRotate:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$2;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpoidSettingListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$4;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$5;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$6;-><init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;-><init>(Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->spuit_layout_width_v42:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_WIDTH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->spuit_layout_height_v42:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_HEIGHT:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->initSpuitSetting(II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mNeedRotateWhenSetPosition:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mNeedRotateWhenSetPosition:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mIsRotated:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->yPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mIsRotated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->checkPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mXDelta:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mXDelta:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mYDelta:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mYDelta:I

    return p1
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_WIDTH:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_HEIGHT:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->xPos:I

    return p1
.end method

.method private bodyLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->spuitdHandle()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerHandle:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->spuitExitBtn()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerdExitBtn:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->spuitColorImage()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerColorImage:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->spuitCurrentColor()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerCurrentColor:Landroid/widget/ImageView;

    return-void
.end method

.method private checkPosition()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x2

    new-array v1, v7, [I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_WIDTH:I

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_HEIGHT:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerHandle:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    aget v7, v1, v9

    iget v8, v4, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_0

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_0
    aget v7, v1, v10

    iget v8, v4, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_1

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_1
    iget v7, v4, Landroid/graphics/Rect;->right:I

    aget v8, v1, v9

    sub-int/2addr v7, v8

    if-ge v7, v3, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v3

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v7, :cond_2

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_2
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    aget v8, v1, v10

    sub-int/2addr v7, v8

    if-ge v7, v2, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v7, :cond_3

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_3
    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne v0, v7, :cond_4

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-ne v6, v7, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private getMovableRect()Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    aget v2, v0, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v2, v0, v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private initSpuitSetting(II)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->totalLayout()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpoidSettingListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_WIDTH:I

    sget v3, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->movePosition(II)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCanvasSize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private spuitColorImage()Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->spen_setting_spuit_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v2, "snote_toolbar_icon_spuit"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_color_picker_tts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private spuitCurrentColor()Landroid/widget/ImageView;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->spen_setting_spuit_color:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v2, "note_spuit_color_circle_shape"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mCurrentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_color_tap_to_apply:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private spuitExitBtn()Landroid/view/View;
    .locals 15

    const/4 v14, -0x1

    const/4 v13, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v8, Lcom/samsung/android/spen/R$id;->spen_setting_spuit_close:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v7, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const-string v9, "snote_toolbar_icon_close"

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSdkVersion:I

    const/16 v8, 0x13

    if-le v7, v8, :cond_0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    new-instance v8, Landroid/graphics/drawable/RippleDrawable;

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    const/16 v10, 0x2d

    invoke-static {v10, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/samsung/android/spen/R$string;->pen_string_close:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilText:Lcom/samsung/android/sdk/pen/util/SPenUtilText;

    const-string v8, "pen_string_close"

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/util/SPenUtilText;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v5

    :cond_0
    const/4 v7, 0x4

    new-array v6, v7, [[I

    new-array v7, v12, [I

    const v8, 0x10100a7

    aput v8, v7, v11

    aput-object v7, v6, v11

    new-array v7, v12, [I

    const v8, 0x101009c

    aput v8, v7, v11

    aput-object v7, v6, v12

    new-array v7, v12, [I

    const v8, -0x10100a7

    aput v8, v7, v11

    aput-object v7, v6, v10

    new-array v7, v12, [I

    const v8, -0x101009c

    aput v8, v7, v11

    aput-object v7, v6, v13

    const/16 v7, 0x2d

    invoke-static {v7, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v7, 0x4

    new-array v0, v7, [I

    aput v3, v0, v11

    const/high16 v7, 0x29000000

    aput v7, v0, v12

    aput v11, v0, v10

    aput v11, v0, v13

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    aget-object v7, v6, v11

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    aget v9, v0, v11

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    aget-object v7, v6, v12

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    aget v9, v0, v12

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    aget-object v7, v6, v10

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    aget v9, v0, v10

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    aget-object v7, v6, v13

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    aget v9, v0, v13

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private spuitdHandle()Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/spen/R$id;->spen_setting_spuit_handle:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    const-string v2, "snote_toolbar_handle"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->addViewSetBackgroundImageLoad(Landroid/view/View;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-object v0
.end method

.method private totalLayout()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilLayout:Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;

    const-string v1, "setting_spuit_layout_v42"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilLayout;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    const-string v2, "spen_color_spuit_42"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->addViewSetBackgroundImageLoad(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOnConsumedHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOnConsumedTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->bodyLayout()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerHandle:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerdExitBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerdExitBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerColorImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerColorImage:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerCurrentColor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerCurrentColor:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    return-void
.end method

.method public getColorPickerCurrentColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mCurrentColor:I

    return v0
.end method

.method public getColorPickerSettingVisible()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method movePosition(II)V
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->xPos:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->yPos:I

    iput-boolean v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mNeedRotateWhenSetPosition:Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->runnableRotate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->handlerRotate:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->runnableRotate:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v3, :cond_1

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_1
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v3, :cond_2

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_2
    sget v2, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_WIDTH:I

    sget v1, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_HEIGHT:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_3
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected rotatePosition()V
    .locals 15

    const/4 v14, 0x0

    const-wide v12, 0x3fefae147ae147aeL    # 0.99

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerHandle:Landroid/view/View;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mIsRotated:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v3

    const-string v9, "SpenColorPickerLayout"

    const-string v10, "==== colorPicker ===="

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SpenColorPickerLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "old  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SpenColorPickerLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iput v9, v4, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iput v9, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sget v10, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_WIDTH:I

    add-int/2addr v9, v10

    iput v9, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sget v10, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_HEIGHT:I

    add-int/2addr v9, v10

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    const-string v9, "SpenColorPickerLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "view = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v2, v9

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    int-to-float v5, v9

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v7, v9

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v0, v9

    add-float v9, v2, v5

    div-float v1, v2, v9

    add-float v9, v7, v0

    div-float v8, v7, v9

    const-string v9, "SpenColorPickerLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "left :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", right :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SpenColorPickerLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "top :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bottom :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SpenColorPickerLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hRatio = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", vRatio = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v10, v1

    cmpl-double v9, v10, v12

    if-lez v9, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    :goto_1
    float-to-double v10, v8

    cmpl-double v9, v10, v12

    if-lez v9, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_3
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const-string v9, "SpenColorPickerLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lMargin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", tMargin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->xPos:I

    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->yPos:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    cmpg-float v9, v1, v14

    if-gez v9, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    cmpg-float v9, v8, v14

    if-gez v9, :cond_3

    const/4 v8, 0x0

    goto :goto_2
.end method

.method public setColorPickerColor(I)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mCurrentColor:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerCurrentColor:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mCurrentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mColorPickerCurrentColor:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected setRotation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mOldParentRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getMovableRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mIsRotated:Z

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mImageLoader:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->loadImage()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->setCanvasSize()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->exitButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->xPos:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->yPos:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->movePosition(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
