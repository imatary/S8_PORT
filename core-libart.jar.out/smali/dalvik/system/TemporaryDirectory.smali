.class public Ldalvik/system/TemporaryDirectory;
.super Ljava/lang/Object;
.source "TemporaryDirectory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized setUpDirectory(Ljava/io/File;)V
    .locals 1

    const-class v0, Ldalvik/system/TemporaryDirectory;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static setUpDirectory(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
