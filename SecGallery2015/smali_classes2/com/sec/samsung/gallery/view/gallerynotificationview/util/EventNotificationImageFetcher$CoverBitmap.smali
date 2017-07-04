.class Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;
.super Ljava/lang/Object;
.source "EventNotificationImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverBitmap"
.end annotation


# instance fields
.field private mCoverBitmap:Landroid/graphics/Bitmap;

.field private final mDescription:Landroid/widget/TextView;

.field private final mEventType:I

.field private mImageView:Landroid/widget/ImageView;

.field private final mViewModel:Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mCoverBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mImageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mViewModel:Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mViewModel:Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mEventType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->reloadCoverBitmap()V

    return-void
.end method

.method private reloadCoverBitmap()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mEventType:I

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mCoverBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->mViewModel:Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V

    goto :goto_0
.end method
