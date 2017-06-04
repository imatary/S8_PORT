.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseCloudNameForUSA;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseCloudNameForUSA"
.end annotation


# static fields
.field private static final value:Ljava/lang/String; = "NA_NOBRAND"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabledOverVer30(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "NA_NOBRAND"

    # invokes: Lcom/sec/samsung/gallery/features/FeatureClassSet;->checkCloudBrandName(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$700(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isEnabledUnderVer30(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
