.class public Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "DetailActionBarSkeleton.java"


# static fields
.field public static final AOD_FROM_GALLERY:Ljava/lang/String; = "Gallery"

.field public static final CALLER_APP:Ljava/lang/String; = "callerApp"

.field static final FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

.field private static final FEATURE_USE_VISUAL_MORE_INFO:Z

.field public static final FILE_PATH:Ljava/lang/String; = "filePath"

.field static final IS_NOS:Z

.field private static final PAILITAO_CLASSNAME:Ljava/lang/String; = "com.samsung.android.productsearch.ProductSearchActivity"

.field private static final PAILITAO_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.productsearch"

.field private static final ROTATE_SETTING_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DetailActionBarSkeleton"


# instance fields
.field private bIsNeedToCheckRelatedSearch:Z

.field final mCacheActionViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

.field mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mFavoriteOn:Z

.field private mIsEnableButtonBackgrounds:Z

.field mIsFlippedStatus:Z

.field mIsForceRotated:Z

.field mIsKnox:Z

.field mMenu:Landroid/view/Menu;

.field mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

.field mRelatedResult:Z

.field mStoryType:I

.field final mUseActionbarSearchMenu:Z

.field final mUseHierarchicalUpButton:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHeroFastOptionView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->FEATURE_USE_VISUAL_MORE_INFO:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsKnox:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsForceRotated:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsFlippedStatus:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mStoryType:I

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsEnableButtonBackgrounds:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mRelatedResult:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mMenu:Landroid/view/Menu;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mFavoriteOn:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->bIsNeedToCheckRelatedSearch:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCacheActionViews:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHierarchicalUpButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mUseHierarchicalUpButton:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseActionbarSearchMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mUseActionbarSearchMenu:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->initActionBarBg()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->saveFlippedPhotoAsNew()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateStateOnFavorite(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getButtonScaleAnimator(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v7, "scaleX"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string/jumbo v7, "scaleY"

    new-array v8, v10, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v7, v11

    aput-object v5, v7, v12

    invoke-static {p1, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v7, 0x64

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v7, "scaleX"

    new-array v8, v10, [F

    fill-array-data v8, :array_2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string/jumbo v7, "scaleY"

    new-array v8, v10, [F

    fill-array-data v8, :array_3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v7, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v7, v11

    aput-object v6, v7, v12

    invoke-static {p1, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/16 v7, 0x68

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_2
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getButtonScaleAnimatorForHeart(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;
    .locals 18

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v15, "scaleX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string/jumbo v15, "scaleY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    aput-object v11, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v15, 0x69

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v16, 0x85

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v15, "scaleX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const-string/jumbo v15, "scaleY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_3

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/16 v15, 0x64

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v16, 0x85

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v15, "scaleX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_4

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const-string/jumbo v15, "scaleY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_5

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/16 v15, 0x64

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v16, 0x85

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v15, "scaleX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_6

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const-string/jumbo v15, "scaleY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_7

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/16 v15, 0x66

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v3

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_2
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f733333    # 0.95f
    .end array-data

    :array_3
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f733333    # 0.95f
    .end array-data

    :array_4
    .array-data 4
        0x3f733333    # 0.95f
        0x3f866666    # 1.05f
    .end array-data

    :array_5
    .array-data 4
        0x3f733333    # 0.95f
        0x3f866666    # 1.05f
    .end array-data

    :array_6
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initActionBarBg()V
    .locals 4

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->IS_NOS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0200a5

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f02010f

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private isSetAsContactSupported(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 12

    const-wide/16 v10, 0x20

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "set-as-wallpaper"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isGolf()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    instance-of v3, p2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v3, :cond_4

    instance-of v3, p2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v3, :cond_8

    :cond_4
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-nez v3, :cond_8

    invoke-static {p2}, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->isCloudImage(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_0

    :cond_5
    move v2, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    and-long/2addr v4, v10

    cmp-long v3, v4, v8

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    instance-of v3, p2, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v3, :cond_5

    invoke-static {p2}, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->isCloudImage(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    and-long/2addr v4, v10

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0
.end method

.method private saveFlippedPhotoAsNew()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->saveFlippedPhotoAsNew(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onFlipPhotoSaved(Lcom/sec/android/gallery3d/data/Path;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a048e

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private updateFavoriteMenuItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 13

    const v6, 0x7f020188

    const/4 v12, 0x4

    const/4 v11, 0x2

    const v10, 0x7f0a01a2

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mMenu:Landroid/view/Menu;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mFavoriteOn:Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mMenu:Landroid/view/Menu;

    const v8, 0x7f1202a2

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v7, 0x7f1200c4

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mFavoriteOn:Z

    if-eqz v7, :cond_4

    move v5, v6

    :goto_1
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseActionBarSubTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->getButtonScaleAnimatorForHeart(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v7

    sget v8, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELAY_HIDE_BARS:I

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->notifyObservers(Ljava/lang/Object;)V

    new-instance v7, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$7;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$7;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-ne v5, v6, :cond_7

    const v6, 0x7f1000ba

    invoke-direct {p0, v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateIconColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    if-ne v6, v11, :cond_6

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a01fe

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0420

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v2, :cond_a

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->invalidate()V

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mFavoriteOn:Z

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    const v5, 0x7f020186

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->getButtonScaleAnimator(Landroid/widget/ImageView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    if-ne v6, v12, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a04be

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    const v6, 0x7f1000e8

    invoke-direct {p0, v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateIconColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    if-ne v6, v11, :cond_9

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0207

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    :cond_8
    :goto_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a041f

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    if-ne v6, v12, :cond_8

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a04c6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5
.end method

.method private updateIconColor(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->IS_NOS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-object v1
.end method

.method private updateStateOnFavorite(Landroid/view/MotionEvent;)V
    .locals 8

    const v4, 0x7f020186

    const v3, 0x7f020188

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f1200c3

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v5, 0x7f1200c4

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mFavoriteOn:Z

    if-eqz v5, :cond_1

    move v1, v3

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    if-ne v1, v3, :cond_2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mFavoriteOn:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "4003"

    const-wide/16 v6, 0x1

    invoke-static {v3, v4, v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_2
    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "4003"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2
.end method


# virtual methods
.method createAndSetVisibilityOfFlipPhotoMenu(Landroid/view/Menu;Z)V
    .locals 3

    const v1, 0x7f12029f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$5;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$5;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method createAndSetVisibilityOfForceRotateMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x1

    const v1, 0x7f1202a0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$6;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$6;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->isRotateSettingOff()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected createAndSetVisibilityOfSetAsMenu(Landroid/view/Menu;Z)V
    .locals 10

    const/4 v2, 0x0

    const v3, 0x7f1202ac

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    new-instance v6, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$3;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v3, 0x7f1202ab

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    new-instance v6, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$4;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "smartmanager"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromMMS()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;

    if-eqz v3, :cond_3

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-eqz v3, :cond_7

    :cond_6
    const-wide/16 v6, -0x21

    and-long/2addr v4, v6

    :cond_7
    const-wide/16 v6, 0x20

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    const-string/jumbo v3, "DetailActionBarSkeleton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createAndSetVisibilityOfSetAsMenu : supportSetAs ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createCustomMenuItem(Landroid/view/MenuItem;Z)Z
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a01a2

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a014e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a037e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a04e2

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0116

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0386

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCacheActionViews:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCacheActionViews:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsEnableButtonBackgrounds:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x7f040052

    const/16 v25, 0x0

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCacheActionViews:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_2
    if-eqz p1, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f1200b5

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0a0405

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x17

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;)F

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v25, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v25, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v12}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f1200c4

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v25

    if-eqz v25, :cond_a

    const v16, 0x7f020188

    const v25, 0x7f1000ba

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateIconColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0a0420

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v11, :cond_b

    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v25

    if-nez v25, :cond_4

    new-instance v15, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v15}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v13, v1}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->setHoverPopupType(Landroid/view/View;I)V

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsEnableButtonBackgrounds:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    const v25, 0x7f0200ab

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    invoke-virtual {v13}, Landroid/widget/ImageView;->invalidate()V

    :cond_5
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    sget-boolean v25, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->FEATURE_USE_VISUAL_MORE_INFO:Z

    if-nez v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b01ba

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v14, v0, v1, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v14}, Landroid/widget/TextView;->invalidate()V

    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    sget-boolean v25, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->FEATURE_USE_VISUAL_MORE_INFO:Z

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsEnableButtonBackgrounds:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f0200a8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b06f1

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v17

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v14}, Landroid/widget/TextView;->invalidate()V

    :cond_8
    const/4 v5, 0x1

    :cond_9
    return v5

    :cond_a
    const v16, 0x7f020186

    const v25, 0x7f1000e8

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateIconColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0a041f

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_c
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const v25, 0x7f0201b9

    const v26, 0x7f1000e8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateIconColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f1200c4

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsEnableButtonBackgrounds:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    const v25, 0x7f0200ab

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_5
    invoke-virtual {v13}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_3

    :cond_e
    const v25, 0x7f0201b9

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_f
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    :cond_10
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    const v25, 0x7f0201ce

    const v26, 0x7f1000e8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateIconColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f1200c4

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v18, :cond_11

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v13}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_3

    :cond_11
    const v25, 0x7f0201ce

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_12
    sget-boolean v25, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->FEATURE_USE_VISUAL_MORE_INFO:Z

    if-eqz v25, :cond_15

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    const v25, 0x7f02018f

    const v26, 0x7f1000e8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateIconColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f1200c4

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v7, :cond_13

    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsEnableButtonBackgrounds:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    const v25, 0x7f0200ab

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_8
    invoke-virtual {v13}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_3

    :cond_13
    const v25, 0x7f02018f

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_14
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8

    :cond_15
    if-nez p2, :cond_16

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsEnableButtonBackgrounds:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f0200a7

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_9
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v25, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->IS_NOS:Z

    if-nez v25, :cond_5

    new-instance v15, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v15}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    const v27, 0x7f1000ee

    invoke-static/range {v26 .. v27}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v26

    const v27, 0x3e99999a    # 0.3f

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v14, v1, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->addStrokeTextEffect(Landroid/widget/TextView;FIF)V

    invoke-virtual {v14}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_3

    :cond_17
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v25

    const v26, 0x7f0200a6

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9
.end method

.method protected getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->isRunningConversionAsyncTask()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsForceRotated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsForceRotated:Z

    return v0
.end method

.method handleForceRotate()V
    .locals 0

    return-void
.end method

.method handleItemFavorite(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->setFavorite(Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;IZ)V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setIsFavorite(Z)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateFavoriteMenuItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method initDisplayOptions()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->setDisplayOptions(ZZ)V

    return-void
.end method

.method public isNeedToCheckRelatedSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->bIsNeedToCheckRelatedSearch:Z

    return v0
.end method

.method isRotateSettingOff()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DetailActionBarSkeleton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Settings.SettingNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsEnableButtonBackgrounds:Z

    return-void
.end method

.method saveGalleryNotificationImage()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mStoryType:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->saveGalleryNotificationImage(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a048e

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method setAsAlwaysOnDisplay()V
    .locals 7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0364

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.app.aodservice.intent.action.SET_AS_AOD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.app.aodservice.settings.opreditor.ImageOprEditActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.app.aodservice.intent.action.SET_AS_AOD"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "filePath"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "callerApp"

    const-string/jumbo v5, "Gallery"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "DetailActionBarSkeleton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " FlashAnnotateActivity ActivityNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method

.method public setCurrentPhoto(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->bIsNeedToCheckRelatedSearch:Z

    :cond_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method setIsFlippedStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsFlippedStatus:Z

    return-void
.end method

.method public setModel(Lcom/sec/samsung/gallery/view/detailview/Model;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

    return-void
.end method

.method public setNeedToCheckRelatedSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->bIsNeedToCheckRelatedSearch:Z

    return-void
.end method

.method setSecretMenuVisibility(Landroid/view/Menu;J)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const v6, 0x7f120281

    const v5, 0x7f120280

    const/4 v4, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isReadyPrivateMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    invoke-static {p1, v5, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {p1, v5, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1

    :cond_5
    invoke-static {p1, v5, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1
.end method

.method setSetAsMenuVisibility(Landroid/view/Menu;)V
    .locals 5

    const v4, 0x7f1202ac

    const v3, 0x7f1202ab

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->isSetAsContactSupported(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mIsKnox:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isSetAsWallpaperEnabledInKnoxMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, v4, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSetAsProfile:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEDMSettingsChangeAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-static {p1, v4, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method setStoryType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mStoryType:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method startActionMoreInfo()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseChnUsageAlertPopup:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "LocationNetworkAlertDialogOff"

    invoke-static {v1, v2, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_USAGE_ALERT_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsWifiOnlyModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a00ae

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "MOREINFO_EVENT"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "MOREINFO_EVENT"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method startActionMoveToPrivate()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToSecretBox(ZZZ)V

    :cond_0
    return-void
.end method

.method startActionRemoveFromPrivate()V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method startActionSetAs()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isTooSmallForCrop(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a020d

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->showSetAsActivity(Lcom/sec/android/gallery3d/data/MediaItem;ZLcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "DVMR"

    const-string/jumbo v2, "Set as wallpaper"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method startActionSetAsContact()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->isSetAsContactSupported(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isTooSmallForCrop(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a020d

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->showSetAsActivity(Lcom/sec/android/gallery3d/data/MediaItem;ZLcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a049e

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method startActionTaobao()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.productsearch"

    const-string/jumbo v4, "com.samsung.android.productsearch.ProductSearchActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "imageFilePath"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DetailActionBarSkeleton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Not find product search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startDownloadRemoteContents()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "DOWNLOAD_CLOUDBY"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "DOWNLOAD_NEARBY"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "DetailActionBarSkeleton"

    const-string/jumbo v3, "not download requestable, please implement."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startEditor()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mStoryType:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->startEditor(I)V

    :cond_0
    return-void
.end method

.method public updateRelatedSearchMenu(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mRelatedResult:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mRelatedResult:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$8;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
