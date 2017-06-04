.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;
.super Ljava/lang/Object;
.source "AlbumChoiceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string/jumbo v1, "AlbumChoiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick mEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_CREATE_ALBUM_TOP:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_CREATE_ALBUM_TOP:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    array-length v1, v1

    if-ne p3, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "operationType"

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_NEW_ALBUM_NAME_EDIT_DIALOG:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "operationIntData"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "topPath"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mTopSetPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # invokes: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getSAScreenID()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1500(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1081"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V

    :goto_0
    return-void

    :cond_2
    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->FEATURE_IS_CREATE_ALBUM_TOP:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, p3, -0x1

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$AlbumListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aget-object v2, v2, v0

    # invokes: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finishWithResultOk(Lcom/sec/android/gallery3d/data/MediaSet;)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :cond_3
    move v0, p3

    goto :goto_1
.end method
