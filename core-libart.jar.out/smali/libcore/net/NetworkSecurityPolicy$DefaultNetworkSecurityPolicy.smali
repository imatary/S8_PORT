.class public final Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;
.source "NetworkSecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/NetworkSecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultNetworkSecurityPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public isCleartextTrafficPermitted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method
