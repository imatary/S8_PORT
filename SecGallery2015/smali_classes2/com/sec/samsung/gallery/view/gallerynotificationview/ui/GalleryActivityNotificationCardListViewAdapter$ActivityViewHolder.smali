.class Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryActivityNotificationCardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityViewHolder"
.end annotation


# instance fields
.field final mCreationTime:Landroid/widget/TextView;

.field final mDescription:Landroid/widget/TextView;

.field final mImageView:Landroid/widget/ImageView;

.field final mNewLabel:Landroid/widget/TextView;

.field final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1200e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f1200e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f1200e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mNewLabel:Landroid/widget/TextView;

    const v0, 0x7f12011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mCreationTime:Landroid/widget/TextView;

    const v0, 0x7f1200e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mDescription:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method onBindView(I)V
    .locals 8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->getData(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "NotificationActAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: null data at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mCreationTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getCreationTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/DateFormatUtil;->getTimeString(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->getBitmapDrawable(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->showNewIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mNewLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->mNewLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
