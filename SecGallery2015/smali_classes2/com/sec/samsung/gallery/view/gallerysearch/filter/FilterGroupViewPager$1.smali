.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;
.super Landroid/os/Handler;
.source "FilterGroupViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mIsAlive:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->updateItemsInDetailPagerView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
