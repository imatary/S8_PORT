.class Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;
.super Ljava/lang/Object;
.source "EventNotificationImageFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->drawCoverBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;->val$imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->hideErrorIcon(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
