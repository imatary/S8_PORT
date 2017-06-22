.class public Lsec/android/gallery3d/rcl/provider/selibrary/SemSystemPropertiesWrapper;
.super Ljava/lang/Object;
.source "SemSystemPropertiesWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSalesCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
