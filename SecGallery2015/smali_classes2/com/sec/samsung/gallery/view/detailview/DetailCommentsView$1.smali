.class Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$1;
.super Ljava/lang/Object;
.source "DetailCommentsView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    invoke-virtual {v1, v3, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->startChannelCommentsActivity(ZZ)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3033"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->startChannelCommentsActivity(ZZ)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3032"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
