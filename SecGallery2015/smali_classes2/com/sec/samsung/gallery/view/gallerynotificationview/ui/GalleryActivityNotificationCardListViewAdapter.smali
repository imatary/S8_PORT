.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryActivityNotificationCardListViewAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;,
        Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;,
        Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;"
    }
.end annotation


# static fields
.field public static final SELF_UPDATE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "NotificationActAdapter"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContentObserver:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;

.field private mCurrentTime:J

.field private final mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

.field private final mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

.field private final mModelListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "notification://activity_notification_tab_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->SELF_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mModelListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mContentObserver:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->updateCurrentTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mModelListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;

    return-object v0
.end method

.method private updateCurrentTime()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mCurrentTime:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->clearData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mImageFetcher:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->initBitmaps()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->getType(I)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;->onBindView(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;

    const v2, 0x7f040072

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityViewHolder;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onDataLoadComplete()V
    .locals 2

    const-string/jumbo v0, "NotificationActAdapter"

    const-string/jumbo v1, "loadFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mModelListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->getItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;->onSizeChanged(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mContentObserver:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->load()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->mContentObserver:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityTableContentObserver;->register()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter;->updateCurrentTime()V

    return-void
.end method
