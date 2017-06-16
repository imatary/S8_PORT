.class Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;
.super Ljava/lang/Object;
.source "RoundedSeekbar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsPressed:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mIsPressed:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mOrgThumb:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
