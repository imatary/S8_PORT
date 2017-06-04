.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
.source "GlComposeGoToUrlTipCard.java"


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->NONE:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;)V

    return-void
.end method


# virtual methods
.method protected initConstantValues()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseInternetNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a01e9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mSubTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a03c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mDoneBtnText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f1000d6

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mBgColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f100214

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mTitleColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f1000d8

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mSubTitleColor:I

    return-void

    :cond_0
    const v0, 0x7f0a01e8

    goto :goto_0
.end method

.method protected isNeedToShow()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowGoToUrlTipCard()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected processCancelClick()Z
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowGoToUrlTipCard(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "is_go_to_url_tip_card_checked_pref"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->fadeOutNoti(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->getTipCardHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startTransferUpDown(F)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1053"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected processDoneClick()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowGoToUrlTipCard(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "is_go_to_url_tip_card_checked_pref"

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "isMultiWindow"

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToUrlTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method public bridge synthetic resetLayout()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLayout()V

    return-void
.end method

.method public bridge synthetic setVisibleRange()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->setVisibleRange()V

    return-void
.end method
