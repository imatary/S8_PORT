.class public Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowSetAsActivityCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final ACTIVITY_NAME_DESKTOP_HOME_AND_LOCK:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser.WallpaperPreviewBothActivity"

.field private static final ACTIVITY_NAME_HOME_AND_LOCK:Ljava/lang/String; = "com.sec.android.wallpapercropper2.BothCropActivity"

.field private static final ACTIVITY_NAME_HOME_CROP:Ljava/lang/String; = "com.sec.android.wallpapercropper2.HomeCropActivity"

.field private static final ACTIVITY_NAME_HOME_DESKTOP_CROP:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser.WallpaperPreviewHomeActivity"

.field private static final ACTIVITY_NAME_LOCK_CROP:Ljava/lang/String; = "com.sec.android.wallpapercropper2.KeyguardCropActivity"

.field private static final ACTIVITY_NAME_LOCK_DESKTOP_CROP:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser.WallpaperPreviewLockActivity"

.field private static final ACTIVITY_NAME_SET_WALLPAPER_DCM:Ljava/lang/String; = "com.sec.android.wallpapercropper2.SetWallpaperActivity"

.field private static final ACTIVITY_NAME_SVIEW_COVER:Ljava/lang/String; = "com.sec.android.wallpapercropper2.SViewCoverCropActivity"

.field private static final PACKAGE_NAME_DESKTOP_WALLPAPER:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final PACKAGE_NAME_GALLERY3D:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final PACKAGE_NAME_WALLPAPERCROPPER2:Ljava/lang/String; = "com.sec.android.wallpapercropper2"

.field private static final SET_AS_INTENT:Ljava/lang/String; = "android.intent.action.MAIN"

.field private static final SET_AS_TYPE:Ljava/lang/String; = "type"

.field private static final SUPPORT_KNOX_DESKTOP:Z

.field private static final TAG:Ljava/lang/String; = "ShowSetAsActivityCmd"

.field private static final TYPE_HEALTH_COVER:I = 0x4

.field private static final TYPE_NAME:Ljava/lang/String; = "gallery_image"

.field private static final TYPE_NONE:I = 0x2

.field private static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field private static final TYPE_SVIEW_COVER:I = 0x1


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mSetAsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->SUPPORT_KNOX_DESKTOP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->startSetAsAction(Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    return-void
.end method

.method private checkCoverAttached()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsGuestMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->getTypeOfCover()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->isSupportedSViewCover()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private createHomeAndLockScreenIntentForDex(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    const-string/jumbo v3, "com.sec.android.app.wallpaperchooser.WallpaperPreviewBothActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "gallery_image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private createHomeScreenIntentForDex(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    const-string/jumbo v3, "com.sec.android.app.wallpaperchooser.WallpaperPreviewHomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "gallery_image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private createLockScreenIntentForDex(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    const-string/jumbo v3, "com.sec.android.app.wallpaperchooser.WallpaperPreviewLockActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "gallery_image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getContactList(Landroid/net/Uri;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "com.android.contacts.activities.AttachPhotoActivity"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ATTACH_DATA"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v5, "image/*"

    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getSetAsHomeScreenIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.wallpapercropper2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.wallpapercropper2"

    const-string/jumbo v2, "com.sec.android.wallpapercropper2.HomeCropActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "gallery_image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getSetAsWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.wallpapercropper2"

    const-string/jumbo v8, "com.sec.android.wallpapercropper2.HomeCropActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.wallpapercropper2"

    const-string/jumbo v8, "com.sec.android.wallpapercropper2.KeyguardCropActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.wallpapercropper2"

    const-string/jumbo v8, "com.sec.android.wallpapercropper2.BothCropActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.wallpapercropper2"

    const-string/jumbo v8, "com.sec.android.wallpapercropper2.SViewCoverCropActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "gallery_image"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "gallery_image"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "gallery_image"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "gallery_image"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "image/*"

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "image/*"

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "image/*"

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "image/*"

    invoke-virtual {v4, p1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v6, Landroid/content/pm/LabeledIntent;

    const-string/jumbo v7, "com.sec.android.gallery3d"

    invoke-direct {v6, v2, v7, v9, v9}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/pm/LabeledIntent;

    const-string/jumbo v7, "com.sec.android.gallery3d"

    invoke-direct {v6, v3, v7, v9, v9}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Landroid/content/pm/LabeledIntent;

    const-string/jumbo v7, "com.sec.android.gallery3d"

    invoke-direct {v6, v1, v7, v9, v9}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->checkCoverAttached()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/content/pm/LabeledIntent;

    const-string/jumbo v7, "com.sec.android.gallery3d"

    invoke-direct {v6, v4, v7, v9, v9}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a03be

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v7, "android.intent.extra.INITIAL_INTENTS"

    new-array v6, v9, [Landroid/os/Parcelable;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private getSetAsWallpaperIntentForDex(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/pm/LabeledIntent;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->createHomeScreenIntentForDex(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/pm/LabeledIntent;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->createLockScreenIntentForDex(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/pm/LabeledIntent;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->createHomeAndLockScreenIntentForDex(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.gallery3d"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a03bd

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "android.intent.extra.INITIAL_INTENTS"

    new-array v2, v5, [Landroid/os/Parcelable;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private getSetAsWallpaperIntentForDocomo(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "com.sec.android.wallpapercropper2"

    const-string/jumbo v6, "com.sec.android.wallpapercropper2.SetWallpaperActivity"

    invoke-static {v4, v5, v6}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkComponentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.wallpapercropper2"

    const-string/jumbo v6, "com.sec.android.wallpapercropper2.SetWallpaperActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.wallpapercropper2"

    const-string/jumbo v6, "com.sec.android.wallpapercropper2.SViewCoverCropActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "gallery_image"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "gallery_image"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "image/*"

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/content/pm/LabeledIntent;

    const-string/jumbo v5, "com.sec.android.gallery3d"

    invoke-direct {v4, v1, v5, v7, v7}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/content/pm/LabeledIntent;

    const-string/jumbo v5, "com.sec.android.gallery3d"

    invoke-direct {v4, v2, v5, v7, v7}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a03be

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.INITIAL_INTENTS"

    new-array v4, v7, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.wallpapercropper2"

    const-string/jumbo v6, "com.sec.android.wallpapercropper2.HomeCropActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getTypeOfCover()I
    .locals 7

    const/4 v3, 0x2

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v0

    const-string/jumbo v4, "ShowSetAsActivityCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sCoverType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " && sCoverAttachState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v3, 0x2

    :cond_1
    return v3
.end method

.method private handleNlgResponse(Z)V
    .locals 6

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSetAsWallpaperState;

    invoke-direct {v2, p1}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSetAsWallpaperState;-><init>(Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v3, "WallpaperCropper"

    :goto_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_1
    invoke-interface {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "WallpaperCropper"

    invoke-static {v4, v5, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    const-string/jumbo v3, "DetailView"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_1
.end method

.method private isNeedToShowPrivateDialog(Lcom/sec/android/gallery3d/data/MediaItem;Z)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "private_move_do_not_show"

    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a03a2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0326

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a02f4

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSupportedSViewCover()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private startSetAsAction(Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->startSetAsChooserActivity(Landroid/net/Uri;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->startSetAsContactActivity(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private startSetAsChooserActivity(Landroid/net/Uri;)V
    .locals 8

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->getSetAsHomeScreenIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromThemeStore()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v3, v4

    if-lez v3, :cond_5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v6, v4, v2

    check-cast v6, Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isDocomoUx(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->checkCoverAttached()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->getSetAsHomeScreenIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->getSetAsWallpaperIntentForDocomo(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_0

    :cond_2
    sget-boolean v6, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->SUPPORT_KNOX_DESKTOP:Z

    if-eqz v6, :cond_3

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->getSetAsWallpaperIntentForDex(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->getSetAsWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_0

    :cond_4
    const/high16 v6, 0x10000000

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v7, 0x905

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v6, "ShowSetAsActivityCmd"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private startSetAsContactActivity(Landroid/net/Uri;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ATTACH_DATA"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "image/*"

    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v5, 0x10000

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->getContactList(Landroid/net/Uri;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-static {v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setNestingCallerAppName(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a03bb

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v6, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Parcelable;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0052

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private startSetAsForDC(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string/jumbo v5, "gallery_image"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v5, "image/*"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mSetAsName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.wallpapercropper2"

    const-string/jumbo v5, "com.sec.android.wallpapercropper2.HomeCropActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->handleNlgResponse(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :sswitch_0
    const-string/jumbo v4, "lock"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "home_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_0

    :pswitch_0
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.wallpapercropper2"

    const-string/jumbo v5, "com.sec.android.wallpapercropper2.KeyguardCropActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_1
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.wallpapercropper2"

    const-string/jumbo v5, "com.sec.android.wallpapercropper2.BothCropActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShowSetAsActivityCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->handleNlgResponse(Z)V

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x32c52b -> :sswitch_0
        0x7e3dbc8b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    const/4 v4, 0x3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x1

    aget-object v1, v2, v3

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->isNeedToShowPrivateDialog(Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v3

    if-nez v3, :cond_0

    array-length v3, v2

    if-le v3, v4, :cond_2

    if-eqz v0, :cond_2

    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mSetAsName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->mSetAsName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->startSetAsForDC(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->startSetAsAction(Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/controller/ShowSetAsActivityCmd;->startSetAsAction(Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    goto :goto_0
.end method
