.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showUndoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "846"

    const-string v1, "8633"

    const-string v2, "Embed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeUndoVisible(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getCurrentIndex()I

    move-result v1

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getOrgBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x3

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startIntentToLPE(Landroid/graphics/Bitmap;I)V
    invoke-static {v1, v0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/graphics/Bitmap;I)V

    return-void
.end method
