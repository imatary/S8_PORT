.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureEnableHelpMenu;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureEnableHelpMenu"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "com.samsung.helphub"

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPreloadPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
