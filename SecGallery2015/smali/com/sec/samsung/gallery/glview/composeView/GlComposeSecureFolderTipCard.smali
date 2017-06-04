.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
.source "GlComposeSecureFolderTipCard.java"


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->ICON_ONLY:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;)V

    return-void
.end method


# virtual methods
.method protected initConstantValues()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a03a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mSubTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a03a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mDoneBtnText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f1000d6

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mBgColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f100214

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mTitleColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f1000d8

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mSubTitleColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected isNeedToShow()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowSecureFolderTipCard()Z

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowSecureFolderTipCard(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "is_secure_folder_tipcard_checked_pref"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->fadeOutNoti(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->getTipCardHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startTransferUpDown(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SFTC"

    const-string/jumbo v3, "Secure Folder Tip Card Close"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1053"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected processDoneClick()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowSecureFolderTipCard(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "is_secure_folder_tipcard_checked_pref"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_KNOX_SET_UP"

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSecureFolderTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SFTC"

    const-string/jumbo v3, "Secure Folder Tip Card Learn More"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1055"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
