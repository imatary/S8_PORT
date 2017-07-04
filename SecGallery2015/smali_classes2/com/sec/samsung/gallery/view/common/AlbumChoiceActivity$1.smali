.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;
.super Landroid/os/Handler;
.source "AlbumChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->refreshAdapter(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iget v2, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->position:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    iget-object v3, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->handleBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v3, v4, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->modifyBitmapForCropRect(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
