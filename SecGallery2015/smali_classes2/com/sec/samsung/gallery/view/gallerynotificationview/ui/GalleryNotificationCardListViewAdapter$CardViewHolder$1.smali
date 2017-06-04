.class Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;
.super Ljava/lang/Object;
.source "GalleryNotificationCardListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->bind(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;

.field final synthetic val$itemsModel:Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;->this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;->val$itemsModel:Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;->this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;->val$itemsModel:Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;->val$position:I

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->handleClickCardView(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;II)V

    return-void
.end method
