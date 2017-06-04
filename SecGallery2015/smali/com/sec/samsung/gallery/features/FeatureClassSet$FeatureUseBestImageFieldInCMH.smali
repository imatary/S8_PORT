.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseBestImageFieldInCMH;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseBestImageFieldInCMH"
.end annotation


# static fields
.field private static final CMH_CLOUD_SUPPORTED_VERSION_MOS:I = 0xc28cb00

.field private static final CMH_CLOUD_SUPPORTED_VERSION_NOS:I = 0x11e329a0

.field private static final CMH_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.cmh"

.field private static final IS_NOS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseBestImageFieldInCMH;->IS_NOS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabledOverVer30(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v4, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseBestImageFieldInCMH;->IS_NOS:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "com.samsung.cmh"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0x11e329a0

    if-lt v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "com.samsung.cmh"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0xc28cb00

    if-ge v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0
.end method

.method isEnabledUnderVer30(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
