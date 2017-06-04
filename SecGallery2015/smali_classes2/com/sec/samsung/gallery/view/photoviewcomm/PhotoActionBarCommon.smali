.class public Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;
.super Ljava/lang/Object;
.source "PhotoActionBarCommon.java"


# static fields
.field public static final FROM_ALBUM_VIEW:I = 0x0

.field public static final FROM_CATEGORIES_VIEW:I = 0x2

.field public static final FROM_EVENT_VIEW:I = 0x1

.field public static final FROM_MTP_VIEW:I = 0x5

.field public static final FROM_QUICK_VIEW:I = 0x4

.field public static final FROM_RECYCLEBIN_SCLOUD:I = 0x6

.field public static final FROM_SCLOUD_VIEW:I = 0x8

.field public static final FROM_SIGHT_VIEW:I = 0x7

.field public static final FROM_SOCIAL_CLOUD_VIEW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoActionBarCommon"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field public final mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field public mViewMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->checkViewMode()V

    return-void
.end method

.method private checkViewMode()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v7, v8, :cond_0

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    :goto_0
    const-string/jumbo v5, "PhotoActionBarCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkViewMode() : mViewMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v7, v8, :cond_2

    :cond_1
    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v7, v8, :cond_4

    const/4 v5, 0x5

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    goto :goto_0

    :cond_4
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v7, v8, :cond_5

    const/4 v5, 0x6

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    goto :goto_0

    :cond_5
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v7, v8, :cond_6

    const/16 v5, 0x8

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_a

    const-string/jumbo v7, "is_from_camera"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    move v1, v5

    :goto_1
    if-eqz v0, :cond_b

    const-string/jumbo v7, "KEY_IS_FROM_SHORTCUT"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    move v2, v5

    :goto_2
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v0, :cond_c

    const-string/jumbo v7, "KEY_IS_SIGHT_MODE"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c

    move v3, v5

    :goto_3
    if-eqz v1, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    if-eqz v2, :cond_d

    :cond_9
    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    goto/16 :goto_0

    :cond_a
    move v1, v6

    goto :goto_1

    :cond_b
    move v2, v6

    goto :goto_2

    :cond_c
    move v3, v6

    goto :goto_3

    :cond_d
    if-eqz v3, :cond_e

    const/4 v5, 0x7

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    goto/16 :goto_0

    :cond_e
    iput v6, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    goto/16 :goto_0
.end method


# virtual methods
.method public createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V
    .locals 7

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1200b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, p3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0405

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f10018f

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    int-to-float v6, v3

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLargeTextSize(Landroid/content/Context;F)F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p5, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
