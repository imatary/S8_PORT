.class Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;
.super Ljava/lang/Object;
.source "EventChoiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->updateEventList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$400(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getChannelAlbumNameID()Ljava/util/HashMap;

    move-result-object v0

    # setter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mEventListMap:Ljava/util/HashMap;
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2202(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2300(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mAdapter:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2300(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$3;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mEventListMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$2200(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListAdatper;->refreshAdapter(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
