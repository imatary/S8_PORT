.class final Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask$1;
.super Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;
.source "LoadImageSceneRectTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask$1;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;-><init>(Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    # getter for: Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;
    invoke-static {}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->access$100()Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    move-result-object v0

    # getter for: Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mIsDirty:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->access$200(Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;
    invoke-static {}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->access$100()Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->access$202(Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->processImageSceneRectDB(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->access$300(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method
