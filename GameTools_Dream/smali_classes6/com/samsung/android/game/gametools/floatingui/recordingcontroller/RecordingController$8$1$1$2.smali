.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xbba

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v6, v6, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v6, v6, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v6, v6, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v6}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v10, v8}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    invoke-static {v4, v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2102(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;)Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v0, v9, v9, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v5, v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v5, v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v5, v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x51

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v4

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    invoke-static {v4, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->getUserProfileImageEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->getUserProfileImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v4, v1}, Lcom/sec/game/gamecast/common/utility/RoundedImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1$2;->this$3:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;

    iget-object v5, v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;

    iget-object v5, v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    iget-object v5, v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gametools_recording_default_59x59:I

    invoke-virtual {v5, v6, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
