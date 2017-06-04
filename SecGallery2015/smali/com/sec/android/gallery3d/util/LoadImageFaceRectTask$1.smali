.class final Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$1;
.super Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;
.source "LoadImageFaceRectTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->start(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$1;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;-><init>(Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    # getter for: Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;
    invoke-static {}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->access$100()Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    move-result-object v0

    # getter for: Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mIsDirty:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->access$200(Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;
    invoke-static {}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->access$100()Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->access$202(Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->processImageFaceRectDB(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->access$300(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method
