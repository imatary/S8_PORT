.class Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;
.super Ljava/lang/Object;
.source "AgifDefaultButtonFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->setThumb(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;->val$bitmap:Landroid/graphics/Bitmap;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->access$002(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->mIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;->access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifDefaultButtonFrame;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
