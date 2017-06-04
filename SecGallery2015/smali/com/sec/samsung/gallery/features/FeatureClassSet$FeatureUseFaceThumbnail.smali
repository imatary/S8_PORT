.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseFaceThumbnail;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseFaceThumbnail"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceProvider:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsMassModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_2

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "a3x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "a5x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "a7x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
