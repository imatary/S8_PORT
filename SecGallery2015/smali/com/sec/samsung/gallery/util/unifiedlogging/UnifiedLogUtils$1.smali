.class Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$1;
.super Ljava/lang/Thread;
.source "UnifiedLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$1;->this$0:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$1;->this$0:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->access$000(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$1;->this$0:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->access$000(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$1;->this$0:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->access$200(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->access$102(Z)Z

    goto :goto_0
.end method
