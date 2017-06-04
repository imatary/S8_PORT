.class abstract Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeTipCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION_TRANS:I = 0xc8

.field static final BUTTON_CANCEL:I = 0x2

.field static final BUTTON_DONE:I = 0x3

.field static final BUTTON_LATER:I = 0x4

.field static final BUTTON_NONE:I = 0x0

.field private static final BUTTON_TIP_CARD:I = 0x1

.field private static final RES_ID_BG:I = 0x1

.field private static final RES_ID_BORDER_CARD:I = 0x8

.field private static final RES_ID_CANCEL_BUTTON:I = 0x6

.field private static final RES_ID_CARD:I = 0x2

.field private static final RES_ID_DONE_BUTTON:I = 0x7

.field private static final RES_ID_ICON:I = 0x4

.field private static final RES_ID_LATER_BUTTON:I = 0x9

.field private static final RES_ID_SUB_TITLE:I = 0x5

.field private static final RES_ID_TITLE:I = 0x3


# instance fields
.field private mBgBottomPadding:I

.field mBgColor:I

.field private mBgSidePadding:I

.field private mBgTopPadding:I

.field private mButtonShapeSidePadding:I

.field private mButtonShapeTopBottomPadding:I

.field private mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mCancelBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mCancelButtonImageSize:I

.field private mCancelButtonSize:I

.field private mCardBottomPadding:I

.field private mCardInterPadding:I

.field private mCardSidePadding:I

.field private mCardTopPadding:I

.field final mContext:Landroid/content/Context;

.field private mDoneBtnHeight:I

.field private mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mDoneBtnPadding:I

.field mDoneBtnText:Ljava/lang/String;

.field private final mDoneBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mDoneTextBtnSize:I

.field mFocusedBtnType:I

.field private mHeightViewRatio:F

.field private mHoverPopUpView:Landroid/view/View;

.field mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconRightMargin:I

.field private mIconSize:I

.field private mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field mLaterBtnText:Ljava/lang/String;

.field private final mLaterBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private final mListenerTipCardCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mListenerTipCardDoneClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private final mListenerTipCardLaterBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mScreenGLWidth:F

.field private mScreenGlHeight:F

.field private mScreenPixelHeight:I

.field private mScreenPixelWidth:I

.field private mSoftKeyEndMargin:I

.field private mSoftKeyHeightPixel:I

.field mSubTitleColor:I

.field private mSubTitleHeight:I

.field mSubTitleText:Ljava/lang/String;

.field private mSubTitleTextSize:I

.field private final mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

.field mTitleColor:I

.field private mTitleHeight:I

.field mTitleText:Ljava/lang/String;

.field private mTitleTextSize:I

.field private mTotalHeight:I

.field private final mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

.field private mWidthViewRatio:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$5;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mListenerTipCardCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$6;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mListenerTipCardDoneClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$7;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mListenerTipCardLaterBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->addHintPopUp(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->removeHintPopup()V

    return-void
.end method

.method private addHintPopUp(Ljava/lang/String;II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f040043

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    const v3, 0x7f1200b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWindowManager:Landroid/view/WindowManager;

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getHoverLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calcTipCardTitlesHeight(I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTitleView(Z)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v1

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setTitleMargin(Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;ZI)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleHeight:I

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTitleView(Z)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v0

    invoke-direct {p0, v0, v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setTitleMargin(Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;ZI)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleHeight:I

    return-void
.end method

.method private getHoverLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method private getMaxLength(Z)I
    .locals 3

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sub-int v0, v1, v2

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconRightMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method private getNavigationBarMargin()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyEndMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyEndMargin:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    neg-int v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyEndMargin:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    neg-int v0, v1

    goto :goto_0
.end method

.method private getTitleView(Z)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getMaxLength(Z)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleColor:I

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    :goto_0
    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v7

    :goto_1
    invoke-virtual {v7, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setAlign(II)V

    return-object v7

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleText:Ljava/lang/String;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleTextSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleColor:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v7

    goto :goto_1
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->initConstantValues()V

    return-void
.end method

.method private removeHintPopup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWindowManager:Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHoverPopUpView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private resetAttribute()V
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenGLWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWidthViewRatio:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenGlHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardTopPadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardBottomPadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardInterPadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleTextSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonImageSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonImageSize:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->ICON_ONLY:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->ICON_AND_LATER_BUTTON:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconRightMargin:I

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleTextSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnHeight:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneTextBtnSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnPadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeSidePadding:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeTopBottomPadding:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->calcTipCardTitlesHeight(I)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardTopPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardInterPadding:I

    add-int/2addr v2, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleHeight:I

    if-le v1, v3, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    :goto_0
    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardInterPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardBottomPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    return-void

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleHeight:I

    goto :goto_0
.end method

.method private resetCancelButton()V
    .locals 7

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportRtl(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mListenerTipCardCancelClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEventForTipCard(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWidthViewRatio:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonSize:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonSize:I

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->updateCancelButtonView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonImageSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyEndMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWidthViewRatio:F

    mul-float v0, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardTopPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonImageSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    mul-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method private resetDoneButton()V
    .locals 9

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mListenerTipCardDoneClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeSidePadding:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeTopBottomPadding:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeSidePadding:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeTopBottomPadding:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportButtonShape(ZIIII)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->updateDoneButtonView()I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    int-to-float v1, v8

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWidthViewRatio:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnHeight:I

    invoke-direct {v1, v2, v8, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v8, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyEndMargin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWidthViewRatio:F

    mul-float v6, v0, v1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardBottomPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    mul-float v7, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v7, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method private resetLaterButton()V
    .locals 10

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mListenerTipCardLaterBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeSidePadding:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeTopBottomPadding:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeSidePadding:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mButtonShapeTopBottomPadding:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportButtonShape(ZIIII)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->updateDoneButtonView()I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->updateLaterButtonView()I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int v9, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    int-to-float v1, v9

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWidthViewRatio:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnHeight:I

    invoke-direct {v1, v2, v9, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v9, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyEndMargin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWidthViewRatio:F

    mul-float v7, v0, v1

    int-to-float v0, v6

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    sub-float/2addr v7, v0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardBottomPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    mul-float v8, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v8, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method private resetTipCard()V
    .locals 4

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenGLWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setSize(FF)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->updateTipCardView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method private setBorderVisibility(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setCancelBtnFocusVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTalkBackEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawCancelFocusBorder(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRippleFocusVisible(Z)V

    :cond_1
    return-void
.end method

.method private setDoneBtnFocusVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTalkBackEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawDoneFocusBorder(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRippleFocusVisible(Z)V

    :cond_1
    return-void
.end method

.method private setFocusedBtnType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    return-void
.end method

.method private setLaterBtnFocusVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTalkBackEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawLaterBtnFocusBorder(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRippleFocusVisible(Z)V

    :cond_1
    return-void
.end method

.method private setTitleMargin(Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;ZI)V
    .locals 4

    const/4 v0, 0x0

    if-lez p3, :cond_0

    :goto_0
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconRightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardTopPadding:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v1, v2, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    :goto_1
    return-void

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconRightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardTopPadding:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardInterPadding:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v1, v2, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setMargin(IIII)V

    goto :goto_1
.end method

.method private updateCancelButtonView()Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const v3, 0x7f020317

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonImageSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonImageSize:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v2, v0, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v2

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonImageSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelButtonImageSize:I

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_0
.end method

.method private updateDoneButtonView()I
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnText:Ljava/lang/String;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneTextBtnSize:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const v4, 0x7f100112

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    invoke-static {v2, v3, v4, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v1

    :goto_1
    return v1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v1

    goto :goto_1
.end method

.method private updateLaterButtonView()I
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlTextView;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnText:Ljava/lang/String;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneTextBtnSize:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const v4, 0x7f100112

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    invoke-static {v2, v3, v4, v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v0, v7}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v1

    :goto_1
    return v1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v1

    goto :goto_1
.end method

.method private updateTipCardView()Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 19

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getNavigationBarMargin()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v13, :cond_2

    new-instance v13, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-direct {v13, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    const/4 v6, 0x2

    invoke-virtual {v13, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgColor:I

    invoke-direct {v12, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v13, v12}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    invoke-virtual {v13, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0, v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x1

    invoke-virtual {v3, v13, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v14, :cond_3

    new-instance v14, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-direct {v14, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const v6, 0x7f0202ed

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x2

    const/4 v6, 0x2

    invoke-virtual {v14, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    sub-int/2addr v6, v7

    invoke-virtual {v14, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    move/from16 v0, v18

    invoke-virtual {v14, v0, v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x2

    invoke-virtual {v3, v14, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/glcore/GlImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getFocusBorderVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v15, :cond_4

    new-instance v15, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-direct {v15, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const v6, 0x7f020060

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    move-object/from16 v3, v16

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x2

    const/4 v6, 0x2

    invoke-virtual {v15, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    sub-int/2addr v6, v7

    invoke-virtual {v15, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    move/from16 v0, v18

    invoke-virtual {v15, v0, v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v6, 0x8

    invoke-virtual {v3, v15, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v17, :cond_7

    new-instance v17, Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    add-int/2addr v6, v3

    if-lez v18, :cond_6

    move/from16 v3, v18

    :goto_3
    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardTopPadding:I

    add-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    if-nez v2, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTitleView(Z)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x3

    invoke-virtual {v3, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setTitleMargin(Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;ZI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    if-nez v5, :cond_b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTitleView(Z)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v5, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setTitleMargin(Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;ZI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v3

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    invoke-virtual {v13, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0, v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    sub-int/2addr v6, v7

    invoke-virtual {v14, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    move/from16 v0, v18

    invoke-virtual {v14, v0, v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSoftKeyHeightPixel:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    sub-int/2addr v6, v7

    invoke-virtual {v15, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgBottomPadding:I

    move/from16 v0, v18

    invoke-virtual {v15, v0, v3, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_2

    :cond_5
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTipCardView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v3, v15}, Lcom/sec/android/gallery3d/glcore/GlView;->removeChild(Lcom/sec/android/gallery3d/glcore/GlView;)Z

    goto/16 :goto_2

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mIconSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgSidePadding:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardSidePadding:I

    add-int/2addr v6, v3

    if-lez v18, :cond_8

    move/from16 v3, v18

    :goto_7
    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mBgTopPadding:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCardTopPadding:I

    add-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    goto/16 :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_7

    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getMaxLength(Z)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleTextSize:I

    int-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleColor:I

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v7

    :goto_8
    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setText(Ljava/lang/String;IFILandroid/graphics/Typeface;Z)V

    goto/16 :goto_5

    :cond_a
    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v7

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getMaxLength(Z)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleTextSize:I

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mSubTitleColor:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v10

    const/4 v11, 0x0

    move v7, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setText(Ljava/lang/String;IFILandroid/graphics/Typeface;Z)V

    goto/16 :goto_6
.end method


# virtual methods
.method drawCancelFocusBorder(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0405

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    :goto_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setBorderVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderWidth(F)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const v3, 0x7f100111

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    goto :goto_1
.end method

.method drawDoneFocusBorder(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    :goto_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setBorderVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderWidth(F)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const v3, 0x7f100111

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    goto :goto_1
.end method

.method drawLaterBtnFocusBorder(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocusBorderVisible(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    :goto_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setBorderVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderWidth(F)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    const v3, 0x7f100111

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    goto :goto_1
.end method

.method drawTotalFocusBorder(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getFocusBorderVisible()Z

    move-result v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusBorderVisible(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetTipCard()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setBorderVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTitleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getCancelObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mCancelBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method getCurrentYPosition()F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float v3, v2, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    sub-float v2, v3, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTipCardHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float v0, v2, v3

    add-float v2, v0, v1

    return v2
.end method

.method getDoneObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mDoneBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method getFocusedBtnType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    return v0
.end method

.method getLaterObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLaterBtnObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method getTargetYPosition()F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float v3, v2, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargTop:F

    sub-float v2, v3, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTipCardHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float v0, v2, v3

    add-float v2, v0, v1

    return v2
.end method

.method getTipCardHeight()F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mTotalHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected abstract initConstantValues()V
.end method

.method isNeedToShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method moveTo(ZI)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v2, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v2, v4, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v2, v6, :cond_3

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->NONE:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->ICON_ONLY:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-nez v2, :cond_7

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v2, v0, :cond_8

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->NONE:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->ICON_ONLY:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    if-ne v2, v3, :cond_a

    :cond_9
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mFocusedBtnType:I

    if-ne v2, v6, :cond_c

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setFocusedBtnType(I)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setCancelBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setLaterBtnFocusVisible(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setDoneBtnFocusVisible(Z)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method processCancelClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method processDoneClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method processLaterBtnClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method removeTTSFocus()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setBorderVisibility(I)V

    return-void
.end method

.method public resetLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelHeight:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenPixelHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenGLWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mScreenGlHeight:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->moveToLast()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetAttribute()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetTipCard()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetCancelButton()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetDoneButton()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->LATER_BUTTON_ONLY:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mType:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->ICON_AND_LATER_BUTTON:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLaterButton()V

    :cond_2
    return-void
.end method

.method public setVisibleRange()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getCurrentYPosition()F

    move-result v1

    invoke-virtual {p0, v3, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setPos(FFF)V

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getTipCardHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setVisibility(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setVisibility(Z)V

    goto :goto_0
.end method
