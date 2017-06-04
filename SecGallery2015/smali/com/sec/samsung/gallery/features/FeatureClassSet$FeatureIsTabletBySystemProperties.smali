.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsTabletBySystemProperties;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsTabletBySystemProperties"
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

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mDeviceType:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$800()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/features/FeatureClassSet;->mDeviceType:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/features/FeatureClassSet;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
