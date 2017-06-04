.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseAlbumLoadOptimize;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseAlbumLoadOptimize"
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

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "o7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "o5ltezc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on7x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j7x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mProductName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j5x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
