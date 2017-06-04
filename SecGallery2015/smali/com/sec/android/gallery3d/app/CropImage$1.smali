.class Lcom/sec/android/gallery3d/app/CropImage$1;
.super Landroid/os/Handler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$1;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$1;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mState:I
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$000(Lcom/sec/android/gallery3d/app/CropImage;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$1;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->onSaveClicked()V
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$100(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "is_pressed_cancel"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x68

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$1;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$1;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
