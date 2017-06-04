.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSecretBox;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseSecretBox"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/Feature$FeatureType;->USE_PREFERENCE:Lcom/sec/samsung/gallery/features/Feature$FeatureType;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/features/Feature;-><init>(Lcom/sec/samsung/gallery/features/Feature$FeatureType;)V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsMassModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    :try_start_0
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/PackageManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/PackageManagerFactory;-><init>()V

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/PackageManagerInterface;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSecretBox;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.sec.feature.secretmode_service"

    invoke-interface {v2, v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/PackageManagerInterface;->getSystemFeatureLevel(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v5, v3, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
