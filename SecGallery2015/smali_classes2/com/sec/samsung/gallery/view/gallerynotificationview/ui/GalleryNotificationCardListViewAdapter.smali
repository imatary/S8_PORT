.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryNotificationCardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final FEATURE_IS_NOS:Z

.field private static final FEATURE_USE_NOTIFICATION_TAB:Z

.field private static final NEW_EVENT_AGIF:I

.field private static final NEW_EVENT_COLLAGE:I

.field private static final NEW_EVENT_SHARE:I

.field private static final NEW_EVENT_VIDEO_COLLAGE:I

.field public static final OPERATION_ACCEPT:I = 0x3

.field public static final OPERATION_DELETE:I = 0x1

.field public static final OPERATION_REJECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NotiContentAdapter"


# instance fields
.field private mCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

.field private mIsShowButtonBackground:Z

.field private final mNewCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationTab:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->FEATURE_USE_NOTIFICATION_TAB:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->FEATURE_IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_SHARE:I

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_COLLAGE:I

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->AGIF:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_AGIF:I

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->VIDEO_COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_VIDEO_COLLAGE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mIsShowButtonBackground:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mStateMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledShowButtonShapes:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mIsShowButtonBackground:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->FEATURE_IS_NOS:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_SHARE:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_COLLAGE:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;ILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_AGIF:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_VIDEO_COLLAGE:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mIsShowButtonBackground:Z

    return v0
.end method

.method private sendMessageToState(ILjava/lang/Object;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;II)V

    return-void
.end method

.method private sendMessageToState(ILjava/lang/Object;II)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mStateMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mStateMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mStateMainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mStateMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->initBitmaps()V

    return-void
.end method

.method public getCardList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->onBindViewHolder(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->bind(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->NEW_EVENT_SHARE:I

    if-ne p2, v3, :cond_2

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v3, :cond_1

    const v2, 0x7f040074

    :goto_1
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;Landroid/view/View;)V

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mTitle:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$CardViewHolder;->mDescription:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f040060

    goto :goto_1

    :cond_2
    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v3, :cond_3

    const v2, 0x7f040073

    :goto_2
    goto :goto_1

    :cond_3
    const v2, 0x7f04005f

    goto :goto_2
.end method

.method public processOperationForEvent(II)V
    .locals 6

    const/4 v3, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v0

    if-ne p1, v5, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v4, v2, p2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;II)V

    :cond_2
    :goto_1
    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->notifyItemRemoved(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v3, v2, p2, v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v3, v2, p2, v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public refreshDataSet()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_2

    const-string/jumbo v2, "NotiContentAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oldCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", newCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v2, v1, v0

    invoke-virtual {p0, v0, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->notifyItemRangeRemoved(II)V

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public reload(Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getCount()I

    move-result v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventNotificationSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updatePendingProperty()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getChannelAlbum()Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v5

    if-ne v5, v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/ChannelAlbum;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mNewCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->sendMessageToState(ILjava/lang/Object;I)V

    return-void
.end method

.method public removeAll()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationCardListViewAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
