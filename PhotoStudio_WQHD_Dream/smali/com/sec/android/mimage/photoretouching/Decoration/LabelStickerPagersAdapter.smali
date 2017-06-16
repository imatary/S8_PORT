.class public Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LabelStickerPagersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;,
        Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrentMainCategory:I

.field private mCurrentSubStickerCategory:I

.field private mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

.field private mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mNumColumn:I

.field mStickerSubTabManager:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

.field private mTabManagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;",
            ">;"
        }
    .end annotation
.end field

.field public numbe_of_pages:I

.field private onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

.field private requiredPages:[I

.field scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;[II)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->numbe_of_pages:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mNumColumn:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mTabManagerList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mAct:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->requiredPages:[I

    array-length v0, p3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->numbe_of_pages:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentMainCategory:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentSubStickerCategory:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;Landroid/content/res/Configuration;Landroid/widget/GridView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->setGridViewMargins(Landroid/content/res/Configuration;Landroid/widget/GridView;)V

    return-void
.end method

.method private getGridView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030060

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0e0203

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->requiredPages:[I

    aget v2, v2, p2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->setGridViewProperties(ILandroid/widget/GridView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private getRequiredView(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->requiredPages:[I

    aget v0, v2, p2

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getGridView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getSubStickerTabs(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSubStickerTabs(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v3, 0x7f03005e

    const/4 v8, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v3, v8, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v3, 0x7f0e01fd

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    const v3, 0x7f0e01ff

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isC5Model()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0c004b

    const/4 v15, 0x0

    invoke-virtual {v3, v8, v15}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const v3, 0x7f0e01fb

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v7, 0xa

    packed-switch p2, :pswitch_data_0

    const/4 v3, 0x1

    new-array v6, v3, [I

    :goto_0
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v14, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0e01fe

    invoke-virtual {v14, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setOffscreenPageLimit(I)V

    invoke-virtual {v5, v12}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    rem-int/lit8 v3, v7, 0xa

    invoke-virtual {v5, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setCurrentItem(I)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v3, v0, v5, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubOnPageListener;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;I)V

    invoke-virtual {v5, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    move-object/from16 v3, p0

    move/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;Landroid/view/View;Landroid/support/v4/view/ViewPager;[III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mTabManagerList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v4

    :pswitch_0
    new-instance v12, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    sget-object v15, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->reqWaterMarkSubStickerPages:[I

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-direct {v12, v3, v8, v15, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;[II)V

    const/16 v7, 0xa

    sget-object v6, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->reqWaterMarkSubStickerTabs:[I

    goto :goto_0

    :pswitch_1
    new-instance v12, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    sget-object v15, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->reqElementSubStickerPages:[I

    const/16 v16, 0x14

    move/from16 v0, v16

    invoke-direct {v12, v3, v8, v15, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;[II)V

    const/16 v7, 0x14

    sget-object v6, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->reqElementSubStickerTabs:[I

    goto :goto_0

    :pswitch_2
    new-instance v12, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    sget-object v15, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->reqMineSubStickerPages:[I

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-direct {v12, v3, v8, v15, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;[II)V

    const/16 v7, 0x1e

    sget-object v6, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->reqMineSubStickerTabs:[I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setGridViewMargins(Landroid/content/res/Configuration;Landroid/widget/GridView;)V
    .locals 8

    const/high16 v7, 0x40400000    # 3.0f

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getDensity()F

    move-result v5

    mul-float/2addr v5, v7

    float-to-int v0, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getDensity()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v1, v3, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    return-void

    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getDensity()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getDensity()F

    move-result v5

    mul-float/2addr v5, v7

    float-to-int v4, v5

    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setGridViewProperties(ILandroid/widget/GridView;)V
    .locals 11

    const v10, 0x7f0800dd

    const v9, 0x7f0800dc

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08036f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v2, v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$1;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)V

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    invoke-virtual {p2, v2, v1, v2, v7}, Landroid/widget/GridView;->setPadding(IIII)V

    invoke-virtual {p2, v7}, Landroid/widget/GridView;->setClipToPadding(Z)V

    const/high16 v4, 0x2000000

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->notifyDataSetChanged()V

    invoke-virtual {p2}, Landroid/widget/GridView;->invalidateViews()V

    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v4, v8, :cond_0

    const/4 v4, 0x6

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mNumColumn:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mNumColumn:I

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    invoke-direct {v4, v5, p2, p1, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;-><init>(Landroid/app/Fragment;Landroid/widget/GridView;ILcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mNumColumn:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mNumColumn:I

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mNumColumn:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getDensity()F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v0, v4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getDensity()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    const/4 v1, 0x0

    :cond_1
    :goto_2
    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    invoke-direct {v4, v5, p2, p1, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;-><init>(Landroid/app/Fragment;Landroid/widget/GridView;ILcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getDensity()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getDensity()F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->destroy()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mTabManagerList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mTabManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->destroyAttachViewTabManager()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++++++ destroyItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->numbe_of_pages:I

    return v0
.end method

.method public getDensity()F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->getRequiredView(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mTabManagerList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mTabManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMainTab(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mCurrentMainCategory:I

    return-void
.end method

.method public updateOnExpansionFinish(ZLcom/samsung/android/sdk/rcl/RclExpansionHelper;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->updateGridOnExpansionFinish(ZLcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    :cond_0
    return-void
.end method
