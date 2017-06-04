.class public final Lcom/sec/samsung/gallery/view/utils/VZCloudUtils;
.super Ljava/lang/Object;
.source "VZCloudUtils.java"


# static fields
.field private static final IS_TABLET:Z

.field private static final TAG:Ljava/lang/String; = "VZCloudUtils"

.field private static final VZW_CLOUD_GALLERY:Ljava/lang/String; = "com.vcast.mediamanager.ACTION_PICTURES"

.field private static final VZW_ClOUD_PKGNAME:Ljava/lang/String; = "com.vcast.mediamanager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/utils/VZCloudUtils;->IS_TABLET:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isVZCloudEnabled(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsVZW:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableVzCloudMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.vcast.mediamanager"

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchVZCloud(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vcast.mediamanager.ACTION_PICTURES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VZCloudUtils"

    const-string/jumbo v3, "launchVZCloud| intent not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static prepareOptionsMenu(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 2

    sget-boolean v1, Lcom/sec/samsung/gallery/view/utils/VZCloudUtils;->IS_TABLET:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/utils/VZCloudUtils;->isVZCloudEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v1, 0x7f12028a

    invoke-static {p1, v1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
