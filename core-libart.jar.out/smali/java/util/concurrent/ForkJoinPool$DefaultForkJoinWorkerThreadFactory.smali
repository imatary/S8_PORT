.class final Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultForkJoinWorkerThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;)V

    return-object v0
.end method
