.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseGoToURL;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseGoToURL"
.end annotation


# static fields
.field private static final CMH_GOTOURL_SUPPORTED_VERSION_NOS:I = 0x11ec5160

.field private static final CMH_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.cmh"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabled(Landroid/content/Context;)Z
    .locals 8

    const/4 v5, 0x0

    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;-><init>()V

    invoke-interface {v3, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_GALLERY_SUPPORT_GO_TO_URL"

    invoke-interface {v1, v6}, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    :try_start_0
    const-string/jumbo v6, "com.samsung.cmh"

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v2, :cond_0

    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v7, 0x11ec5160

    if-lt v6, v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
