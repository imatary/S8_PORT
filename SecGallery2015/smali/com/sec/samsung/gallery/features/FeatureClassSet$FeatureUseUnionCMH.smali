.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseUnionCMH;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseUnionCMH"
.end annotation


# static fields
.field private static final CMH_CLOUD_SUPPORTED_VERSION:I = 0xbf1dc80

.field private static final CMH_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.cmh"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabledOverVer30(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "com.samsung.cmh"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0xbf1dc80

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method isEnabledUnderVer30(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
