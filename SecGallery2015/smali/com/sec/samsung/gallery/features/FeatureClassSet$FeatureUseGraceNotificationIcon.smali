.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseGraceNotificationIcon;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseGraceNotificationIcon"
.end annotation


# static fields
.field private static final SCAFE_2016A_VERSION:Ljava/lang/String; = "2016A"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabledOverVer30(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "2016A"

    const-string/jumbo v1, "ro.build.scafe.version"

    invoke-static {v1}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEnabledUnderVer30(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
