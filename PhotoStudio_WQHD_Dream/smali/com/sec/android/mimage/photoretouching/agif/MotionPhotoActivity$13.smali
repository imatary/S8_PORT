.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onCreateInit()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewWidth:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewWidth:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewHeight:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewHeight:I

    :cond_1
    return-void
.end method
