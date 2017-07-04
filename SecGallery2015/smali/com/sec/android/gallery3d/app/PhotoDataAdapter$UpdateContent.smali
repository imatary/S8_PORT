.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mUpdateInfo:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    return-void
.end method

.method private updateCurrentItem()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->isSlideInAnimationEnable(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->startSlideInAnimation(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->isSlideInAnimationEnable(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->startSlideInAnimation(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->mUpdateInfo:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-wide v8, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    invoke-static {v6, v8, v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3002(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;J)J

    iget v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget v8, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    if-le v6, v8, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2202(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I

    :cond_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    if-le v6, v8, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3102(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    if-lez v6, :cond_2

    iget v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    if-lt v6, v8, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    :cond_2
    iget v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_7

    iget v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->curIndex:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2502(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->updateCurrentItem()V

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget v8, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2702(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Z)Z

    :cond_4
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v6, v6, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v6, v6, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    invoke-interface {v6, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onFilmIndexChanged(I)V

    :cond_5
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V

    iget-object v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    iget v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget-object v8, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    rem-int/lit8 v1, v5, 0x28

    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_8

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v8

    iget-object v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v9, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v9, v3, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    aput-object v6, v8, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x28

    if-ne v1, v6, :cond_6

    const/4 v1, 0x0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget v6, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->curIndex:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget v8, v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I

    move-result v8

    rem-int/lit8 v8, v8, 0x28

    aget-object v0, v6, v8

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-nez v0, :cond_a

    move-object v6, v7

    :goto_2
    invoke-static {v8, v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2502(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Z)Z

    :cond_9
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->onMenuRefresh(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3600(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V

    return-object v7

    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    goto :goto_2
.end method
