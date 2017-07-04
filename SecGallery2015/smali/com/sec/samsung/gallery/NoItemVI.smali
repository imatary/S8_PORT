.class public Lcom/sec/samsung/gallery/NoItemVI;
.super Ljava/lang/Object;
.source "NoItemVI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/NoItemVI$SineInOut33;,
        Lcom/sec/samsung/gallery/NoItemVI$SineInOut90;,
        Lcom/sec/samsung/gallery/NoItemVI$SineInOut70;,
        Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;
    }
.end annotation


# static fields
.field private static final ALBUM_STORY_DELAY:[I

.field private static final ALBUM_STORY_DIRECTION:[I

.field private static final ALBUM_STORY_DURATION:[I

.field private static final ALBUM_STORY_INTERPOLATOR:[Landroid/animation/TimeInterpolator;

.field private static final PATH_LINE_ANIMATION_DELAY:I = 0x12c

.field private static PATH_LINE_COLOR:I = 0x0

.field private static final PATH_LINE_WIDTH_IN_DP:I = 0x2

.field private static final TEXT_ALPHA_ANIMATION_DURATION:I = 0x14d

.field private static final TEXT_FINAL_ALPHA:F = 1.0f

.field private static final TEXT_FINAL_TRANS_Y_IN_DP:I = 0x0

.field private static final TEXT_INITIAL_ALPHA:F = 0.0f

.field private static final TEXT_INITIAL_TRANS_Y_IN_DP:I = 0x19

.field private static final TEXT_TRANS_Y_ANIMATION_DURATION:I = 0x1f4

.field private static final TIMELINE_DELAY:[I

.field private static final TIMELINE_DURATION:[I

.field private static final TIMELINE_INTERPOLATOR:[Landroid/animation/TimeInterpolator;

.field private static final TIME_DIRECTION:[I

.field private static USE_DESCRIPTION:Z


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mDescription:Landroid/widget/TextView;

.field private mLabel:Landroid/widget/TextView;

.field private mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field private final mPathListener:Lcom/altamirasoft/path_animation/PathListener;

.field private final mPathTouchListener:Landroid/view/View$OnTouchListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x3

    new-array v0, v3, [Landroid/animation/TimeInterpolator;

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;-><init>()V

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/samsung/gallery/NoItemVI;->TIMELINE_INTERPOLATOR:[Landroid/animation/TimeInterpolator;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/NoItemVI;->TIMELINE_DURATION:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/samsung/gallery/NoItemVI;->TIMELINE_DELAY:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/samsung/gallery/NoItemVI;->TIME_DIRECTION:[I

    new-array v0, v2, [Landroid/animation/TimeInterpolator;

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut60;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$SineInOut70;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut70;-><init>()V

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_INTERPOLATOR:[Landroid/animation/TimeInterpolator;

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DURATION:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DELAY:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DIRECTION:[I

    return-void

    :array_0
    .array-data 4
        0x1f4
        0x190
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x64
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1f4
        0x190
        0x12c
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x64
        0x12c
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/NoItemVI$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/NoItemVI$1;-><init>(Lcom/sec/samsung/gallery/NoItemVI;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathListener:Lcom/altamirasoft/path_animation/PathListener;

    new-instance v0, Lcom/sec/samsung/gallery/NoItemVI$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/NoItemVI$2;-><init>(Lcom/sec/samsung/gallery/NoItemVI;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f100180

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/NoItemVI;->PATH_LINE_COLOR:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/NoItemVI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/NoItemVI;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/NoItemVI;->PATH_LINE_COLOR:I

    return v0
.end method

.method static synthetic access$1000()[I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DURATION:[I

    return-object v0
.end method

.method static synthetic access$1100()[I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DELAY:[I

    return-object v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_DIRECTION:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/NoItemVI;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->showInitAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/NoItemVI;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/NoItemVI;)Lcom/altamirasoft/path_animation/PathLineAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    return-object v0
.end method

.method static synthetic access$500()[Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/NoItemVI;->TIMELINE_INTERPOLATOR:[Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/NoItemVI;->TIMELINE_DURATION:[I

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/NoItemVI;->TIMELINE_DELAY:[I

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/NoItemVI;->TIME_DIRECTION:[I

    return-object v0
.end method

.method static synthetic access$900()[Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/NoItemVI;->ALBUM_STORY_INTERPOLATOR:[Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private defineViews()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200c6

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d4

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    const v1, 0x7f1201a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    const v1, 0x7f1201f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    const v1, 0x7f1200e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/NoItemVI;->USE_DESCRIPTION:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private dpToPx(I)I
    .locals 2

    int-to-float v0, p1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDensity()F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private initializeViews(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 8

    const v7, 0x7f0a015b

    const v6, 0x7f090002

    const v5, 0x7f090001

    const v4, 0x7f0a015e

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTabletBySystemProperties:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsChannelPhotoView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v2, v6}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0094

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->setOnPathAnimatorListenerForStory()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsRecycleBinView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v2, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->setOnPathAnimatorListenerForPictures()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/NoItemVI$8;->$SwitchMap$com$sec$samsung$gallery$core$TabTagType:[I

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/TabTagType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v2, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->setOnPathAnimatorListenerForPictures()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0160

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a015c

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0153

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->setOnPathAnimatorListenerForAlbum()V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0152

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v2, v6}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a015d

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    instance-of v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoMediaItem:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->setOnPathAnimatorListenerForStory()V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0159

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0158

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v2, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0203

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->setOnPathAnimatorListenerForPictures()V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0202

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isHighText()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isNeedPaddingTop()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setOnPathAnimatorListenerForAlbum()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/NoItemVI$6;-><init>(Lcom/sec/samsung/gallery/NoItemVI;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    return-void
.end method

.method private setOnPathAnimatorListenerForPictures()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/NoItemVI$5;-><init>(Lcom/sec/samsung/gallery/NoItemVI;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    return-void
.end method

.method private setOnPathAnimatorListenerForStory()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/NoItemVI$7;-><init>(Lcom/sec/samsung/gallery/NoItemVI;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    return-void
.end method

.method private setRootViewLayoutParams(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 7

    const v6, 0x7f0b0716

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsChannelPhotoView:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->isNeedPaddingTop()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b039e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getTabViewHeightPixel()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getTabViewHeightPixel()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method private showInitAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->bringToFront()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->startLabelAnimation()V

    sget-boolean v0, Lcom/sec/samsung/gallery/NoItemVI;->USE_DESCRIPTION:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->startDescriptionAnimation()V

    :cond_1
    return-void
.end method

.method private startDescriptionAnimation()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    const-string/jumbo v4, "translationY"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/sec/samsung/gallery/NoItemVI$SineInOut90;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x14d

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/sec/samsung/gallery/NoItemVI$SineInOut33;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut33;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v2, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private startLabelAnimation()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    const-string/jumbo v4, "translationY"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/sec/samsung/gallery/NoItemVI$SineInOut90;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x14d

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/sec/samsung/gallery/NoItemVI$SineInOut33;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/NoItemVI$SineInOut33;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v2, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getNoItemView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public hideNoItemVI()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/NoItemVI$3;-><init>(Lcom/sec/samsung/gallery/NoItemVI;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initialize(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 7

    const/16 v6, 0x19

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/sec/samsung/gallery/NoItemVI;->USE_DESCRIPTION:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->defineViews()V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/NoItemVI;->setRootViewLayoutParams(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathListener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-virtual {v1, v3}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/NoItemVI;->initializeViews(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/NoItemVI;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/NoItemVI;->isHighText()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f900000    # 1.125f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/NoItemVI;->dpToPx(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/NoItemVI$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/NoItemVI$4;-><init>(Lcom/sec/samsung/gallery/NoItemVI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1
.end method

.method public setVisibilityIconAndDescription(Z)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI;->mPathLineAnimationView:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v1, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
