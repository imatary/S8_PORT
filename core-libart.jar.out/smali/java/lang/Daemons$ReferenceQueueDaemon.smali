.class Ljava/lang/Daemons$ReferenceQueueDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceQueueDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$ReferenceQueueDaemon;
    .locals 1

    sget-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Daemons$ReferenceQueueDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "ReferenceQueueDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    const-class v4, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v3, :cond_0

    const-class v3, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/Class;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4

    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    sget-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    const/4 v3, 0x0

    sput-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    invoke-static {v2}, Ljava/lang/ref/ReferenceQueue;->enqueuePending(Ljava/lang/ref/Reference;)V

    goto :goto_0

    :cond_1
    return-void

    :catch_1
    move-exception v1

    goto :goto_0
.end method
