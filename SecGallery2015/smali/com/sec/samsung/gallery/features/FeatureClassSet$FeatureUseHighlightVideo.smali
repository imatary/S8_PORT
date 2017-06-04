.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseHighlightVideo;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseHighlightVideo"
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

    const-string/jumbo v2, "com.samsung.app.highlightvideo"

    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPreloadPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "com.samsung.app.highlightplayer"

    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPreloadPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
