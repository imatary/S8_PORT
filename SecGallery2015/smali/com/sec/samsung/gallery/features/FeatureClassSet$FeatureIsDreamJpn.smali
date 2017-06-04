.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsDreamJpn;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsDreamJpn"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 2

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mCountryCode:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MUW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SGH-N171"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SGH-N206"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NVX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SCV36"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SCV35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SC-02J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SC-03J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
