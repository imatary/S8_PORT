.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseVideoActivityDefault;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseVideoActivityDefault"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabledOverVer30(Landroid/content/Context;)Z
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;-><init>()V

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;

    const-string/jumbo v2, "VIDEO"

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_GALLERY_CONFIG_DEF_APP_FOR_VIDEO_VIEW"

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method isEnabledUnderVer30(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hero"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SC-02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SGH-N611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SCV33"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KSU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j1x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUSAModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j1xltecan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "poseidon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gts210ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gts28ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gtaxl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
