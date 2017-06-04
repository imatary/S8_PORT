.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$17;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateFavoriteMenuItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

.field final synthetic val$favoriteIconView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$17;->val$favoriteIconView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$17;->val$favoriteIconView:Landroid/widget/TextView;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateStateOnFavorite(Landroid/widget/TextView;Landroid/view/MotionEvent;)V
    invoke-static {v0, v1, p2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$2100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method
