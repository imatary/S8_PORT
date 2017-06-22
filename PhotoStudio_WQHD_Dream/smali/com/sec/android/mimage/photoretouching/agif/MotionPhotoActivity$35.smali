.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$35;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->initForDesktopMode()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$35;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$35;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$35;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v2

    int-to-float v3, v0

    sub-float/2addr v3, v1

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollTo(II)V

    const/4 v2, 0x1

    return v2
.end method
