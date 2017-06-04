.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsAODSupported;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureIsAODSupported"
.end annotation


# static fields
.field private static final ACTION_SET_AS_AOD:Ljava/lang/String; = "com.samsung.android.app.aodservice.intent.action.SET_AS_AOD"

.field private static final AOD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.aodservice"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.app.aodservice.intent.action.SET_AS_AOD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureIsAODSupported;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method
