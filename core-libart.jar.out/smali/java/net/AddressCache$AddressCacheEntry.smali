.class Ljava/net/AddressCache$AddressCacheEntry;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/AddressCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddressCacheEntry"
.end annotation


# instance fields
.field final expiryNanos:J

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x77359400

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    return-void
.end method
