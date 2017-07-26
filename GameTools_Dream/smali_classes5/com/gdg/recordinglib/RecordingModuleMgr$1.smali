.class Lcom/gdg/recordinglib/RecordingModuleMgr$1;
.super Ljava/lang/Object;
.source "RecordingModuleMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gdg/recordinglib/RecordingModuleMgr;->startRecord(Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/gdg/recordinglib/RecordingModuleMgr;

.field final synthetic val$callback:Lcom/gdg/recordinglib/ICallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;


# direct methods
.method constructor <init>(Lcom/gdg/recordinglib/RecordingModuleMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->this$0:Lcom/gdg/recordinglib/RecordingModuleMgr;

    iput-object p2, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->val$metaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iput-object p4, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->val$callback:Lcom/gdg/recordinglib/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;

    invoke-direct {v0, p0}, Lcom/gdg/recordinglib/RecordingModuleMgr$1$1;-><init>(Lcom/gdg/recordinglib/RecordingModuleMgr$1;)V

    iput-object v0, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gdg/recordinglib/RecordingModuleMgr$1;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
