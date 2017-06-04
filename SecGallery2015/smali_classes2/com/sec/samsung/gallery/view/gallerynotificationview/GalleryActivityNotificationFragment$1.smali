.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;
.super Ljava/lang/Object;
.source "GalleryActivityNotificationFragment.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationCardListViewAdapter$ActivityModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->hideNoItemText()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->mMainHandler:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$StaticHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->showNoItemText()V

    goto :goto_0
.end method

.method public onUpdate(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->memberJoinCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->postCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->likeCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->commentCardOnClick(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;->access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
