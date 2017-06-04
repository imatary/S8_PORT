.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;
.super Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.source "PhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionTask"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
