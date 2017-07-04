.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;
.super Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.source "FavoriteViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;
    .locals 3

    const/4 v1, 0x0

    aget-object v0, p1, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    const/4 v2, -0x1

    invoke-static {v1, v0, v2, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$7100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    const/4 v1, 0x0

    return-object v1
.end method
