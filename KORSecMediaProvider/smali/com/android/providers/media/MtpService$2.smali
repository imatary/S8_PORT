.class Lcom/android/providers/media/MtpService$2;
.super Lcom/android/providers/media/IMtpService$Stub;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Lcom/android/providers/media/IMtpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendObjectAdded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->-get0(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->-get1(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->-get1(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectAdded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendObjectRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->-get0(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->-get1(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->-get1(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
