.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$7;
.super Ljava/lang/Object;
.source "DetailActionBarSkeleton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateFavoriteMenuItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateStateOnFavorite(Landroid/view/MotionEvent;)V
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->access$500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method
