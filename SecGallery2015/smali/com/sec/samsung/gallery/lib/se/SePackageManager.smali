.class public Lcom/sec/samsung/gallery/lib/se/SePackageManager;
.super Ljava/lang/Object;
.source "SePackageManager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/PackageManagerInterface;


# static fields
.field public static final FEATURE_WFD_SUPPORT:Ljava/lang/String; = "com.sec.feature.wfd_support"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemFeatureLevel(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "com.sec.feature.secretmode_service"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
