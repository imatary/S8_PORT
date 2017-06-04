.class public Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CheckToShowSecureFolderTipCard.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field mContext:Landroid/content/Context;

.field private mSecureTipCard:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private changeSecureFolderTipCardState()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mSecureTipCard:I

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecureFolder:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExistLocalContents(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isMoveToSecureFolderOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->myUserId()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowSecureFolderTipCard(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "is_secure_folder_tipcard_checked_pref"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isMoveToSecureFolderOn()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecureFolder:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowSecureFolderTipCard(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "is_secure_folder_tipcard_checked_pref"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mSecureTipCard:I

    if-ne v2, v4, :cond_0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowSecureFolderTipCard(Z)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->mSecureTipCard:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CheckToShowSecureFolderTipCard;->changeSecureFolderTipCardState()V

    return-void
.end method
