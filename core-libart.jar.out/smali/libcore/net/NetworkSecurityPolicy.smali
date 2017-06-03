.class public abstract Llibcore/net/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;
    }
.end annotation


# static fields
.field private static volatile instance:Llibcore/net/NetworkSecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;

    invoke-direct {v0}, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;-><init>()V

    sput-object v0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Llibcore/net/NetworkSecurityPolicy;
    .locals 1

    sget-object v0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    return-object v0
.end method

.method public static setInstance(Llibcore/net/NetworkSecurityPolicy;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "policy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    return-void
.end method


# virtual methods
.method public abstract isCleartextTrafficPermitted()Z
.end method

.method public abstract isCleartextTrafficPermitted(Ljava/lang/String;)Z
.end method
