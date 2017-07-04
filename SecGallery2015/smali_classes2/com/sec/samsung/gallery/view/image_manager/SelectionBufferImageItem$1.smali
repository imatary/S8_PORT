.class Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$1;
.super Ljava/lang/Object;
.source "SelectionBufferImageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$1;->this$0:Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$1;->this$0:Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->access$000(Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
