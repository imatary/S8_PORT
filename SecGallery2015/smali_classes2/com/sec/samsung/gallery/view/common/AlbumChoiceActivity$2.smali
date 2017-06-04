.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;
.super Landroid/database/ContentObserver;
.source "AlbumChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretDirMounted(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->mOperationId:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->finish()V

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2$1;

    const-string/jumbo v1, "UpdateList"

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2$1;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
