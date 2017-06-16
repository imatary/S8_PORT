.class Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$2;
.super Ljava/lang/Object;
.source "LabelStickerPagersAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getRclExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expanded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isExpanded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " comp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isExpansionLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast p1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expanded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isExpanded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " comp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isExpansionLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast p1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
