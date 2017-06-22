.class Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;
.super Ljava/lang/Object;
.source "RoundedSeekbar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateValues()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumbView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
