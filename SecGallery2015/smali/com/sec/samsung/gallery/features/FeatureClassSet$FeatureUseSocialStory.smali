.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSocialStory;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseSocialStory"
.end annotation


# static fields
.field private static final CMH_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.cmh"

.field private static final CMH_SOCIAL_STORY_SUPPORTED_VERSION_NOS:I = 0x1204bb60


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabledOverVer30(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "dream"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDreamJpn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "cruiser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    # invokes: Lcom/sec/samsung/gallery/features/FeatureClassSet;->dreamUXIn3thCategoryWithPhoneFactor()Z
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    const-string/jumbo v5, "com.samsung.cmh"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v1, :cond_2

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v6, 0x1204bb60

    if-lt v5, v6, :cond_2

    :goto_1
    return v3

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v3, v4

    goto :goto_1
.end method

.method isEnabledUnderVer30(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
