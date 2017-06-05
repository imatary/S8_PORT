.class Lcom/sec/android/wallpapercropper2/HomeCropActivity$6;
.super Ljava/lang/Object;
.source "HomeCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/HomeCropActivity;->initWideHomeActionBar()V
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

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxWideHomeScreen:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->setGLSurfaceViewGONE()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideHomeContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
