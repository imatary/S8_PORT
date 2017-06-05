.class Lcom/sec/android/wallpapercropper2/HomeCropActivity$2;
.super Ljava/lang/Object;
.source "HomeCropActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/HomeCropActivity;->handleMotionEffectCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->isInAnimation()Z

    move-result v0

    return v0
.end method
