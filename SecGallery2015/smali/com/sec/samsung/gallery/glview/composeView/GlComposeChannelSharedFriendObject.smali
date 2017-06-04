.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelSharedFriendObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;
    }
.end annotation


# static fields
.field private static final MAX_FRIEND_ICON_COUNT:I = 0x4

.field private static final RES_ID_BORDER:I = 0x4

.field private static final RES_ID_FRIEND_NUMBER_TEXT_VIEW:I = 0x3e8

.field private static final RES_ID_SHARE_FRIEND:I = 0x2

.field private static final RES_ID_SHARE_FRIEND_BG:I = 0x1


# instance fields
.field private mActionbarHeight:F

.field private mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

.field private mAddedFriendObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonStartMargin:F

.field private final mContext:Landroid/content/Context;

.field private mCoverHeight:F

.field private mCoverWidth:F

.field private final mExpanded:Z

.field private mExtraHeight:F

.field private mFriendButtonGap:F

.field private mFriendButtonMargin:F

.field private final mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

.field private mHeightViewRatio:F

.field private final mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mWidthViewRatio:F


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mExpanded:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mExpanded:Z

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setVisibility(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mFriendButtonMargin:F

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mFriendButtonGap:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mButtonStartMargin:F

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mWidthViewRatio:F

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mHeightViewRatio:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    return-object v0
.end method

.method private drawShareFriendBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;
    .locals 7

    const/4 v6, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    const v5, 0x7f020075

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private getActionbarHeight(FZ)F
    .locals 2

    if-eqz p2, :cond_0

    const v0, 0x7f0b0039

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    return v1

    :cond_0
    const v0, 0x7f0b0038

    goto :goto_0
.end method

.method private getCoverViewScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mExtraHeight:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mExpanded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mExtraHeight:F

    add-float/2addr v1, v2

    sub-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mActionbarHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mExtraHeight:F

    add-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0
.end method

.method private resetAttributes(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mWidthViewRatio:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mHeightViewRatio:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mHeightViewRatio:F

    invoke-direct {p0, v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getActionbarHeight(FZ)F

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mActionbarHeight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverWidth:F

    int-to-float v2, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mExtraHeight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mFriendButtonMargin:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mFriendButtonGap:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mButtonStartMargin:F

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addFriendObj(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;)V
    .locals 10

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v8, :cond_1

    iget-object v1, p1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mSharedContact:Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    move-result-object v2

    iget-object v7, v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    if-eqz v7, :cond_2

    if-eqz v9, :cond_0

    if-eqz v9, :cond_2

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ZLcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->mIndex:I

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->addMoreBtn()V

    goto :goto_0
.end method

.method public addMoreBtn()V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->remove()V

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;ZLcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mGlComposeChannelPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mListenerMoreFriendBtnClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mMoreGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    :cond_1
    return-void
.end method

.method public clearAddButtonBorder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->getFocusBorderVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)V

    goto :goto_0
.end method

.method public createSharedFriendBG()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->resetAttributes(Z)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverWidth:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mWidthViewRatio:F

    div-float/2addr v5, v8

    float-to-int v2, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mHeightViewRatio:F

    div-float/2addr v5, v8

    float-to-int v1, v5

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v5, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->drawShareFriendBG(Lcom/sec/android/gallery3d/glcore/GlImageView;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v5, v5

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mHeightViewRatio:F

    mul-float/2addr v5, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    sub-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mExtraHeight:F

    sub-float v4, v5, v8

    invoke-virtual {p0, v9, v4, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setPos(FFF)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverWidth:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    invoke-virtual {p0, v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setSize(FF)V

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setUseTouchEvent(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setVisibility(Z)V

    return-void

    :cond_0
    move v5, v7

    goto :goto_0
.end method

.method public drawAddButtonBorder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)V

    goto :goto_0
.end method

.method public getAddContactObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    return-object v0
.end method

.method public getAddedFriendObj()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeAllFriendObj()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resetLayout(FZ)V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isNoItemView()Z

    move-result v2

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->resetAttributes(Z)V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverWidth:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mCoverHeight:F

    invoke-virtual {p0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddedFriendObj:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->resetLayout()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mAddContactBtn:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->resetLayout()V
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject$CoverShareFried;)V

    :cond_1
    if-eqz v2, :cond_2

    const/4 p1, 0x0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setVisibleRange(F)V

    return-void
.end method

.method public setVisibleRange(F)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->getCoverViewScroll(F)F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v1, v2, v0

    invoke-virtual {p0, v4, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSharedFriendObject;->setPos(FFF)V

    return-void
.end method
