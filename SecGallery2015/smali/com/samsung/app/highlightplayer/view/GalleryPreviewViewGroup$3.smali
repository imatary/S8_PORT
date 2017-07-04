.class Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$3;
.super Ljava/lang/Object;
.source "GalleryPreviewViewGroup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->updateCoverImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$3;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$3;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$400(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
