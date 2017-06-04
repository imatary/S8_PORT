.class public Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;
.super Landroid/widget/LinearLayout;
.source "VisionIntelligenceHelpPopup.java"


# static fields
.field private static final DEFAULT_FAST_OPTION_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VisionIntelligenceHelpPopup"


# instance fields
.field private mClose:Landroid/widget/ImageButton;

.field private mCloseButtonClicked:Z

.field private final mContext:Landroid/content/Context;

.field private mFastOptionCount:I

.field private mHelpText:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:Landroid/widget/LinearLayout;

.field private final mRes:Landroid/content/res/Resources;

.field private mTitleName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mFastOptionCount:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040115

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f120267

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mTitleName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mTitleName:Landroid/widget/TextView;

    const v1, 0x7f0a04da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f120269

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mHelpText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mHelpText:Landroid/widget/TextView;

    const v1, 0x7f0a04d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f120268

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mClose:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput p4, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mFastOptionCount:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->setHelpPopUpLayoutParams()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mCloseButtonClicked:Z

    return p1
.end method

.method private getNaviHeight()I
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private setHelpPopUpLayoutParams()V
    .locals 8

    const v7, 0x7f0b02ac

    const v6, 0x7f0b02ab

    const/4 v5, 0x5

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b05af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b04a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b04b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mFastOptionCount:I

    if-ge v2, v5, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b04a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->getNaviHeight()I

    move-result v3

    add-int v0, v2, v3

    :goto_0
    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v2, :cond_3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->setTitleLayoutParams()V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->getNaviHeight()I

    move-result v3

    add-int v0, v2, v3

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mFastOptionCount:I

    if-ge v2, v5, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b04a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private setTitleLayoutParams()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b04b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->setHelpPopUpLayoutParams()V

    return-void
.end method

.method public show(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->mCloseButtonClicked:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method
