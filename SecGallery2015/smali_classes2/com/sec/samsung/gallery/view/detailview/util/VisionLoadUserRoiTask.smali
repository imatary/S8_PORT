.class public Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;
.super Landroid/os/AsyncTask;
.source "VisionLoadUserRoiTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask$VisionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaSet;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask$VisionListener;

.field private final mMediaId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->mMediaId:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->mMediaId:I

    invoke-static {v0, v2, v2, v1}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSmartCrop(Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->mListener:Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask$VisionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->mListener:Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask$VisionListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask$VisionListener;->invalidForUserRoi()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public setListener(Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask$VisionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask;->mListener:Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask$VisionListener;

    return-void
.end method
