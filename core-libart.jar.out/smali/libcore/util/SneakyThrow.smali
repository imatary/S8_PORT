.class public Llibcore/util/SneakyThrow;
.super Ljava/lang/Object;
.source "SneakyThrow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Llibcore/util/SneakyThrow;->sneakyThrow_(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static sneakyThrow_(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    throw p0
.end method
