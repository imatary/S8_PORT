.class Lcom/sec/android/app/ve/export/ExportInterface$BackEndHandler;
.super Landroid/os/Handler;
.source "ExportInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/export/ExportInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackEndHandler"
.end annotation


# instance fields
.field private final exportRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/sec/android/app/ve/export/ExportInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/export/ExportInterface;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface$BackEndHandler;->exportRef:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface$BackEndHandler;->exportRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/export/ExportInterface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    # getter for: Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I
    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->access$000(Lcom/sec/android/app/ve/export/ExportInterface;)I

    move-result v1

    if-ne v1, v2, :cond_2

    # invokes: Lcom/sec/android/app/ve/export/ExportInterface;->handleExportPlayEventCompletion()V
    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->access$100(Lcom/sec/android/app/ve/export/ExportInterface;)V

    goto :goto_0

    :cond_2
    # getter for: Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I
    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->access$000(Lcom/sec/android/app/ve/export/ExportInterface;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    # invokes: Lcom/sec/android/app/ve/export/ExportInterface;->handleExportResumeEventCompletion()V
    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->access$200(Lcom/sec/android/app/ve/export/ExportInterface;)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/ve/export/ExportInterface;->handleExportStopEventCompletion(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/export/ExportInterface;->access$300(Lcom/sec/android/app/ve/export/ExportInterface;Z)V

    goto :goto_0

    :pswitch_2
    # setter for: Lcom/sec/android/app/ve/export/ExportInterface;->isCompleted:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/ve/export/ExportInterface;->access$402(Lcom/sec/android/app/ve/export/ExportInterface;Z)Z

    # invokes: Lcom/sec/android/app/ve/export/ExportInterface;->handleExportCompletedEvent()V
    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->access$500(Lcom/sec/android/app/ve/export/ExportInterface;)V

    goto :goto_0

    :pswitch_3
    # invokes: Lcom/sec/android/app/ve/export/ExportInterface;->handleExportError()V
    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->access$600(Lcom/sec/android/app/ve/export/ExportInterface;)V

    goto :goto_0

    :pswitch_4
    # invokes: Lcom/sec/android/app/ve/export/ExportInterface;->handleExportPauseEventCompletion()V
    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->access$700(Lcom/sec/android/app/ve/export/ExportInterface;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
