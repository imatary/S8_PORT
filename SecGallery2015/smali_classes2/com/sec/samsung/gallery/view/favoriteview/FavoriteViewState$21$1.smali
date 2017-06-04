.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21$1;
.super Ljava/lang/Object;
.source "FavoriteViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCompleted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # invokes: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$6900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
