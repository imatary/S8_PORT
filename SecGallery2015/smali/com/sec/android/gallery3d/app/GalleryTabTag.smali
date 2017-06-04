.class public Lcom/sec/android/gallery3d/app/GalleryTabTag;
.super Ljava/lang/Object;
.source "GalleryTabTag.java"


# static fields
.field private static final FeatureDefaultAlbumViewEnabled:Z

.field private static final TAG:Ljava/lang/String; = "GalleryTabTag"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDefaultAlbumView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->FeatureDefaultAlbumViewEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-void
.end method

.method private isActionView()Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFromBixbyActivity()Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "com.samsung.android.gallery.action.VIEW_BIXBY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isUpButtonVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryTabTag;->isActionView()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryTabTag;->isFromBixbyActivity()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v3, :cond_0

    :try_start_0
    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryTabTag;->FeatureDefaultAlbumViewEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "lastViewType"

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    invoke-static {v1}, Lcom/sec/samsung/gallery/core/TabTagType;->from(I)Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "lastViewType"

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/sec/android/gallery3d/app/GalleryTabTag;->FeatureDefaultAlbumViewEnabled:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_1
.end method

.method public getCurrentTabTagType(Z)Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "lastViewType"

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/TabTagType;->from(I)Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0
.end method

.method public setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isUpButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryTabTag;->isActionView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryTabTag;->isFromBixbyActivity()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GalleryTabTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentTabTagType saveState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "lastViewType"

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryTabTag;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    return-void
.end method
