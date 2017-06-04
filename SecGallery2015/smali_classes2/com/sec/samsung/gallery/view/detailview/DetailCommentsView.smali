.class Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
.super Ljava/lang/Object;
.source "DetailCommentsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final COMMAND_COMMNETS_LIST:I = 0x0

.field private static final COMMAND_LIKE:I = 0x1

.field private static final COMMAND_LIKE_LIST:I = 0x2

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final TAG:Ljava/lang/String; = "DetailCommentsView"

.field private static final USE_NAVIGATION_BAR:Z


# instance fields
.field private mCommentsLayout:Landroid/widget/LinearLayout;

.field private mCommentsTxtView:Landroid/widget/TextView;

.field private mCommentsView:Landroid/widget/LinearLayout;

.field private final mCommentsViewListener:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;

.field private mContainer:Landroid/view/View;

.field private mFileId:I

.field private mIsLikeOn:Z

.field private mIsOwner:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mLikeCount:I

.field private mLikeCountTxtView:Landroid/widget/TextView;

.field private mLikeIconImgView:Landroid/widget/ImageView;

.field private mLikeLayout:Landroid/widget/LinearLayout;

.field private mOwnerImgView:Landroid/widget/ImageView;

.field private mOwnerNameTxtView:Landroid/widget/TextView;

.field private final mResContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;

.field private mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

.field private mStoryId:I

.field private mThumbPath:Ljava/lang/String;

.field private mUgci:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->USE_NAVIGATION_BAR:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 6

    const/4 v2, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mOwnerImgView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mOwnerNameTxtView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeIconImgView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCountTxtView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsTxtView:Landroid/widget/TextView;

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsLikeOn:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    iput v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCount:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mFileId:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mStoryId:I

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsOwner:Z

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsViewListener:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040054

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v2, 0x7f1200c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v2, 0x7f1200c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->initClickListener()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->setNavigationBarPadding()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->updateLikeInfo(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsViewListener:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;

    return-object v0
.end method

.method private checkRequiredPermissions([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCountString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilmStripViewHeight()I
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFilmStripWithFastOptionView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private getLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v1, 0x7f1200c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mOwnerImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mOwnerNameTxtView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v1, 0x7f1200ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v1, 0x7f1200cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeIconImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v1, 0x7f1200cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCountTxtView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v1, 0x7f1200cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const v1, 0x7f1200ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsTxtView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCountTxtView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->setButtonBackground(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->setButtonBackground(Landroid/view/View;)V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getOwnerIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 13

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x1

    :goto_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSocialStoryDetailDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    move-result-object v2

    iget v5, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f02007e

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v10, 0x1

    invoke-static {v1, v5, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v4, v10, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_2
    return-object v4

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    invoke-static {v0, v5, v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v0, v11}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v4, v10, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method private getOwnerName(Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0256

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    const v4, 0x7f0a0496

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private initClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeIconImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeIconImgView:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCountTxtView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCountTxtView:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 12

    const v11, 0x7f0a0405

    const v10, 0x7f0a0243

    const v9, 0x7f0a00ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->hideCommentsView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getOwnerInfo()Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;->getOwnerNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getLikeByMe()I

    move-result v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getLikeCount()I

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCount:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getCommentCount()I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mOwnerImgView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getOwnerIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mOwnerNameTxtView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getOwnerName(Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCountTxtView:Landroid/widget/TextView;

    iget v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCount:I

    invoke-direct {p0, v7, v10}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getCountString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeCountTxtView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-ne v1, v4, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsLikeOn:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->setLikeIconColor()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsTxtView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getCountString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsLayout:Landroid/widget/LinearLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->isCommentsViewShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->showCommentsView()V

    goto/16 :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method private likeItem()V
    .locals 15

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mStoryId:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mStoryId:I

    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectChannelID()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long v4, v6, v10

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getArticleId()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mFileId:I

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mUgci:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static/range {v0 .. v11}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->likeChannelItem(Landroid/content/Context;IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)I

    move-result v12

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mFileId:I

    invoke-static {v2, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelItemFilePathFromFileId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, -0x1

    if-eq v12, v2, :cond_2

    const/4 v2, 0x7

    new-array v14, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v14, v2

    const/4 v2, 0x1

    sget-object v6, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->ADD_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v6, v14, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v2

    const/4 v2, 0x3

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mFileId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v2

    const/4 v2, 0x4

    aput-object v3, v14, v2

    const/4 v2, 0x5

    aput-object v13, v14, v2

    const/4 v2, 0x6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v14, v2

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v6, "UPDATE_SOCIAL_INFO"

    invoke-virtual {v2, v6, v14}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0241

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private setButtonBackground(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020088

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f02008a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setLikeIconColor()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsLikeOn:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0201af

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsLikeOn:Z

    if-eqz v2, :cond_3

    const v2, 0x7f100112

    :goto_1
    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeIconImgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    const v5, 0x7f0a0243

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLikeIconImgView:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsLikeOn:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0a0417

    :goto_2
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const v2, 0x7f0201ae

    goto :goto_0

    :cond_3
    const v2, 0x7f1000bd

    goto :goto_1

    :cond_4
    const v2, 0x7f0a0416

    goto :goto_2
.end method

.method private setNavigationBarPadding()V
    .locals 9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0552

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-boolean v5, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->USE_NAVIGATION_BAR:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isMultiWindow()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getNavigationBarHeight()I

    move-result v3

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    const/4 v6, 0x0

    add-int v7, v0, v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getFilmStripViewHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v2, v6, v3, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getNavigationBarHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->getNavigationBarHeight()I

    move-result v1

    goto :goto_0
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private toggleLikeIcon()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsLikeOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsLikeOn:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unlikeItem()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mStoryId:I

    if-eq v5, v6, :cond_0

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mStoryId:I

    :goto_0
    if-ne v4, v6, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectChannelID()I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getArticleId()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->LIKE_BY_ME:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;->ordinal()I

    move-result v5

    invoke-static {v4, v0, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->createWhereForLikeWithArticleId(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryCommentInterface;->updateHostLikeCommitStatus(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x6

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    sget-object v5, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->REMOVE_LIKE:Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    aput-object v5, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    const/4 v5, 0x3

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mFileId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    aput-object v0, v3, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "UPDATE_SOCIAL_INFO"

    invoke-virtual {v5, v6, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateLikeInfo(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v3, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mFileId:I

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSocialInfo(I)Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getLikeByMe()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getCommitStatus()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const-string/jumbo v3, "DetailCommentsView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "still uploading. ignore action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->likeItem()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "3031"

    const-string/jumbo v5, "1"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "Like"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a084a

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->toggleLikeIcon()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->unlikeItem()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "3031"

    const-string/jumbo v5, "0"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "Unlike"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a084c

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method


# virtual methods
.method clickLike()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsViewListener:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;->onItemSelected(I)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public hideCommentsView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isCommentsViewShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLikeOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsLikeOn:Z

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->setNavigationBarPadding()V

    return-void
.end method

.method public setStoryId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mStoryId:I

    return-void
.end method

.method public showCommentsView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mCommentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public startChannelCommentsActivity(ZZ)V
    .locals 9

    const/4 v7, -0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mStoryId:I

    if-eq v6, v7, :cond_1

    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mStoryId:I

    :goto_0
    if-eq v5, v7, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    if-nez v6, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectChannelID()I

    move-result v5

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->getArticleId()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-direct {v2, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "story_id"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "file_id"

    iget v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mFileId:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "article_id"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "show_keyboard"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "show_like_view"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "is_host"

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsOwner:Z

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "show_status_bar"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "shared_item_unique_path"

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v2, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v6, "StoryComments"

    invoke-direct {v3, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "SharedStory"

    const-string/jumbo v7, "Match"

    const-string/jumbo v8, "yes"

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "StoryComments"

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_1

    :cond_4
    sget-object v4, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_LOCAL_COMMENT_VIEW:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0x76

    invoke-direct {p0, v4, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->showPermissionRequestDialog([Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public updateItemInfo(Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mSocialInfo:Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mFileId:I

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mIsOwner:Z

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mUgci:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->mThumbPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->initView()V

    return-void
.end method
