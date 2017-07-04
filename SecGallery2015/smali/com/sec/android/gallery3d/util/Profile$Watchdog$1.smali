.class Lcom/sec/android/gallery3d/util/Profile$Watchdog$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/Profile$Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/Profile$Watchdog;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/Profile$Watchdog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog$1;->this$0:Lcom/sec/android/gallery3d/util/Profile$Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog$1;->this$0:Lcom/sec/android/gallery3d/util/Profile$Watchdog;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog$1;->this$0:Lcom/sec/android/gallery3d/util/Profile$Watchdog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->access$000(Lcom/sec/android/gallery3d/util/Profile$Watchdog;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
