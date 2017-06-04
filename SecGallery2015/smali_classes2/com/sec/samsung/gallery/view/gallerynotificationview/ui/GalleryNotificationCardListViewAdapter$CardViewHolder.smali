.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryNotificationCardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CardViewHolder"
.end annotation


# instance fields
.field public final mAcceptBtn:Landroid/widget/Button;

.field public final mCardView:Landroid/view/View;

.field public final mCardViewLayout:Landroid/view/View;

.field public final mDeleteBtn:Landroid/widget/ImageButton;

.field public final mDescription:Landroid/widget/TextView;

.field public final mImageView:Landroid/widget/ImageView;

.field public final mNewLabel:Landroid/widget/TextView;

.field public final mRejectBtn:Landroid/widget/Button;

.field public mThumbnailLayout:Landroid/widget/RelativeLayout;

.field public final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;Landroid/view/View;)V
    .locals 4

    const v3, 0x7f1200e5

    const v2, 0x7f1200df

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDeleteBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardViewLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardViewLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardViewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardViewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDeleteBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDeleteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDeleteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    const v1, 0x7f1200e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mRejectBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    const v1, 0x7f1200e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mAcceptBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    const v1, 0x7f1200e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    const v1, 0x7f1200e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    const v1, 0x7f1200e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mNewLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    const v1, 0x7f1200e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mImageView:Landroid/widget/ImageView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->FEATURE_IS_NOS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    const v1, 0x7f1200e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mThumbnailLayout:Landroid/widget/RelativeLayout;

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->changeButtonBackground()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->handleClickCardView(II)V

    return-void
.end method

.method private changeButtonBackground()V
    .locals 2

    const v1, 0x7f020073

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mIsShowButtonBackground:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$900(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mRejectBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mRejectBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mAcceptBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mAcceptBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method private handleClickCardView(II)V
    .locals 3

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_COLLAGE:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$500()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;ILjava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_AGIF:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$700()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_VIDEO_COLLAGE:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$800()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;ILjava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->isNewAlbum()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v1

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_SHARE:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$200()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mNewLabel:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v1

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_SHARE:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$200()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mNewLabel:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mNewLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->getCoverBitmap(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mCardViewLayout:Landroid/view/View;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v1

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_SHARE:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->access$200()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDeleteBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$2;

    invoke-direct {v2, p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$2;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mRejectBtn:Landroid/widget/Button;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$3;

    invoke-direct {v2, p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$3;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mAcceptBtn:Landroid/widget/Button;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder$4;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
