.class Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;
.super Lcom/sec/samsung/gallery/view/adapter/ReloadTask$SimpleOnLoadDataListener;
.source "ComposeViewDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->createReloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$SimpleOnLoadDataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadData()Z
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPrepareData()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;->getMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;Lcom/sec/android/gallery3d/data/MediaSet;ZZ)Z

    :cond_0
    return-void
.end method
