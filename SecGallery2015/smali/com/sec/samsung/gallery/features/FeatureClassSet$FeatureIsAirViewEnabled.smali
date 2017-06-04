.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsAirViewEnabled;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsAirViewEnabled"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsAirViewEnabled;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/PackageManagerFactory;->FEATURE_HOVERING_UI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
