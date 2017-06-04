.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
.source "GlComposePictureFrameTipCard.java"


# static fields
.field private static final MARKET_SAMSUNG_URL:Ljava/lang/String; = "samsungapps://ProductDetail/"

.field private static final PICTURE_FRAME_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.widget.pictureframe"

.field private static final WEB_SAMSUNG_URL:Ljava/lang/String; = "http://www.samsungapps.com/appquery/appDetail.as?appId="


# instance fields
.field private mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;->LATER_BUTTON_ONLY:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$Type;)V

    return-void
.end method

.method private launchSamsungAppStore()V
    .locals 5

    const/high16 v4, 0x10000000

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "samsungapps://ProductDetail/com.samsung.android.widget.pictureframe"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "http://www.samsungapps.com/appquery/appDetail.as?appId=com.samsung.android.widget.pictureframe"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected initConstantValues()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0331

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a032f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mSubTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mDoneBtnText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0330

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mLaterBtnText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f1000d6

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mBgColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f100214

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mTitleColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    const v1, 0x7f1000d8

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mSubTitleColor:I

    return-void
.end method

.method protected isNeedToShow()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowPictureFrameTipCard()Z

    move-result v0

    return v0
.end method

.method protected processCancelClick()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowPictureFrameTipCard(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "is_picture_frame_tipcard_checked_pref"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->fadeOutNoti(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->getTipCardHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startTransferUpDown(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1053"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method protected processDoneClick()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowPictureFrameTipCard(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->launchSamsungAppStore()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1060"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected processLaterBtnClick()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowPictureFrameTipCard(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->fadeOutNoti(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->getTipCardHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startTransferUpDown(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePictureFrameTipCard;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1059"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
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
